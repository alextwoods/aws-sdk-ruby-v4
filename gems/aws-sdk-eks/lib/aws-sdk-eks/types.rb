# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EKS
  module Types

    # Includes enum constants for AMITypes
    #
    module AMITypes
      # No documentation available.
      #
      AL2_x86_64 = "AL2_x86_64"

      # No documentation available.
      #
      AL2_x86_64_GPU = "AL2_x86_64_GPU"

      # No documentation available.
      #
      AL2_ARM_64 = "AL2_ARM_64"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      BOTTLEROCKET_ARM_64 = "BOTTLEROCKET_ARM_64"

      # No documentation available.
      #
      BOTTLEROCKET_x86_64 = "BOTTLEROCKET_x86_64"

      # No documentation available.
      #
      BOTTLEROCKET_ARM_64_NVIDIA = "BOTTLEROCKET_ARM_64_NVIDIA"

      # No documentation available.
      #
      BOTTLEROCKET_x86_64_NVIDIA = "BOTTLEROCKET_x86_64_NVIDIA"
    end

    # <p>You don't have permissions to perform the requested operation. The user or role that
    #             is making the request must have at least one IAM permissions policy
    #             attached that grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access
    #                 Management</a> in the <i>IAM User Guide</i>. </p>
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

    # <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in
    #             the <i>Amazon EKS User Guide</i>.</p>
    #
    # @!attribute addon_name
    #   <p>The name of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the add-on.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED"]
    #
    #   @return [String]
    #
    # @!attribute addon_version
    #   <p>The version of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute health
    #   <p>An object that represents the health of the add-on.</p>
    #
    #   @return [AddonHealth]
    #
    # @!attribute addon_arn
    #   <p>The Amazon Resource Name (ARN) of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time that the add-on was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   <p>The date and time that the add-on was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that is bound to the Kubernetes service
    #               account used by the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the add-on to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.
    #               Add-on tags do not propagate to any other resources associated with the cluster.
    #           </p>
    #
    #   @return [Hash<String, String>]
    #
    Addon = ::Struct.new(
      :addon_name,
      :cluster_name,
      :status,
      :addon_version,
      :health,
      :addon_arn,
      :created_at,
      :modified_at,
      :service_account_role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The health of the add-on.</p>
    #
    # @!attribute issues
    #   <p>An object that represents the add-on's health issues.</p>
    #
    #   @return [Array<AddonIssue>]
    #
    AddonHealth = ::Struct.new(
      :issues,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an add-on.</p>
    #
    # @!attribute addon_name
    #   <p>The name of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_versions
    #   <p>An object that represents information about available add-on versions and compatible
    #               Kubernetes versions.</p>
    #
    #   @return [Array<AddonVersionInfo>]
    #
    AddonInfo = ::Struct.new(
      :addon_name,
      :type,
      :addon_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An issue related to an add-on.</p>
    #
    # @!attribute code
    #   <p>A code that describes the type of issue.</p>
    #
    #   Enum, one of: ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that provides details about the issue and what might cause it.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>The resource IDs of the issue.</p>
    #
    #   @return [Array<String>]
    #
    AddonIssue = ::Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AddonIssueCode
    #
    module AddonIssueCode
      # No documentation available.
      #
      ACCESS_DENIED = "AccessDenied"

      # No documentation available.
      #
      INTERNAL_FAILURE = "InternalFailure"

      # No documentation available.
      #
      CLUSTER_UNREACHABLE = "ClusterUnreachable"

      # No documentation available.
      #
      INSUFFICIENT_NUMBER_OF_REPLICAS = "InsufficientNumberOfReplicas"

      # No documentation available.
      #
      CONFIGURATION_CONFLICT = "ConfigurationConflict"

      # No documentation available.
      #
      ADMISSION_REQUEST_DENIED = "AdmissionRequestDenied"

      # No documentation available.
      #
      UNSUPPORTED_ADDON_MODIFICATION = "UnsupportedAddonModification"

      # No documentation available.
      #
      K8S_RESOURCE_NOT_FOUND = "K8sResourceNotFound"
    end

    # Includes enum constants for AddonStatus
    #
    module AddonStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DEGRADED = "DEGRADED"
    end

    # <p>Information about an add-on version.</p>
    #
    # @!attribute addon_version
    #   <p>The version of the add-on.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The architectures that the version supports.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compatibilities
    #   <p>An object that represents the compatibilities of a version.</p>
    #
    #   @return [Array<Compatibility>]
    #
    AddonVersionInfo = ::Struct.new(
      :addon_version,
      :architecture,
      :compatibilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster that you are associating with encryption configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_config
    #   <p>The configuration you are using for encryption.</p>
    #
    #   @return [Array<EncryptionConfig>]
    #
    # @!attribute client_request_token
    #   <p>The client request token you are using with the encryption configuration.</p>
    #
    #   @return [String]
    #
    AssociateEncryptionConfigInput = ::Struct.new(
      :cluster_name,
      :encryption_config,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    AssociateEncryptionConfigOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to associate the configuration to.</p>
    #
    #   @return [String]
    #
    # @!attribute oidc
    #   <p>An object that represents an OpenID Connect (OIDC) identity provider
    #               configuration.</p>
    #
    #   @return [OidcIdentityProviderConfigRequest]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the configuration to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    AssociateIdentityProviderConfigInput = ::Struct.new(
      :cluster_name,
      :oidc,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    AssociateIdentityProviderConfigOutput = ::Struct.new(
      :update,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Auto Scaling group that is associated with an Amazon EKS managed node
    #             group.</p>
    #
    # @!attribute name
    #   <p>The name of the Auto Scaling group associated with an Amazon EKS managed node
    #               group.</p>
    #
    #   @return [String]
    #
    AutoScalingGroup = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown if the request contains a semantic error. The precise meaning
    #             will depend on the API, and will be documented in the error message.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CapacityTypes
    #
    module CapacityTypes
      # No documentation available.
      #
      ON_DEMAND = "ON_DEMAND"

      # No documentation available.
      #
      SPOT = "SPOT"
    end

    # <p>An object representing the <code>certificate-authority-data</code> for your
    #             cluster.</p>
    #
    # @!attribute data
    #   <p>The Base64-encoded certificate data required to communicate with your cluster. Add
    #               this to the <code>certificate-authority-data</code> section of the
    #                   <code>kubeconfig</code> file for your cluster.</p>
    #
    #   @return [String]
    #
    Certificate = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a client action. Actions can include using an
    #             action or resource on behalf of a user that doesn't have permissions to use the action
    #             or resource or specifying an identifier that is not valid.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClientException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon EKS cluster.</p>
    #
    # @!attribute name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the cluster was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute version
    #   <p>The Kubernetes server version for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint for your Kubernetes API server.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the
    #               Kubernetes control plane to make calls to Amazon Web Services API operations on your
    #               behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_vpc_config
    #   <p>The VPC configuration used by the cluster control plane. Amazon EKS VPC
    #               resources have specific requirements to work properly with Kubernetes. For more
    #               information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC Considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security
    #                   Group Considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [VpcConfigResponse]
    #
    # @!attribute kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #
    #   @return [KubernetesNetworkConfigResponse]
    #
    # @!attribute logging
    #   <p>The logging configuration for your cluster.</p>
    #
    #   @return [Logging]
    #
    # @!attribute identity
    #   <p>The identity provider information for the cluster.</p>
    #
    #   @return [Identity]
    #
    # @!attribute status
    #   <p>The current status of the cluster.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute certificate_authority
    #   <p>The <code>certificate-authority-data</code> for your cluster.</p>
    #
    #   @return [Certificate]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_version
    #   <p>The platform version of your Amazon EKS cluster. For more information, see
    #                   <a href="https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html">Platform Versions</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the cluster to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.
    #               Cluster tags do not propagate to any other resources associated with the
    #               cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    #
    #   @return [Array<EncryptionConfig>]
    #
    # @!attribute connector_config
    #   <p>The configuration used to connect to a cluster for registration.</p>
    #
    #   @return [ConnectorConfigResponse]
    #
    Cluster = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :version,
      :endpoint,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :identity,
      :status,
      :certificate_authority,
      :client_request_token,
      :platform_version,
      :tags,
      :encryption_config,
      :connector_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClusterStatus
    #
    module ClusterStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

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
      PENDING = "PENDING"
    end

    # <p>Compatibility information.</p>
    #
    # @!attribute cluster_version
    #   <p>The supported Kubernetes version of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_versions
    #   <p>The supported compute platform.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_version
    #   <p>The supported default version.</p>
    #
    #   @return [Boolean]
    #
    Compatibility = ::Struct.new(
      :cluster_version,
      :platform_versions,
      :default_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.default_version ||= false
      end
    end

    # Includes enum constants for ConnectorConfigProvider
    #
    module ConnectorConfigProvider
      # No documentation available.
      #
      EKS_ANYWHERE = "EKS_ANYWHERE"

      # No documentation available.
      #
      ANTHOS = "ANTHOS"

      # No documentation available.
      #
      GKE = "GKE"

      # No documentation available.
      #
      AKS = "AKS"

      # No documentation available.
      #
      OPENSHIFT = "OPENSHIFT"

      # No documentation available.
      #
      TANZU = "TANZU"

      # No documentation available.
      #
      RANCHER = "RANCHER"

      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>The configuration sent to a cluster for configuration.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that is authorized to request the connector
    #               configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The cloud provider for the target cluster to connect.</p>
    #
    #   Enum, one of: ["EKS_ANYWHERE", "ANTHOS", "GKE", "AKS", "OPENSHIFT", "TANZU", "RANCHER", "EC2", "OTHER"]
    #
    #   @return [String]
    #
    ConnectorConfigRequest = ::Struct.new(
      :role_arn,
      :provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The full description of your connected cluster.</p>
    #
    # @!attribute activation_id
    #   <p>A unique ID associated with the cluster for registration purposes.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_code
    #   <p>A unique code associated with the cluster for registration purposes.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_expiry
    #   <p>The expiration time of the connected cluster. The cluster's YAML file must be applied
    #               through the native provider.</p>
    #
    #   @return [Time]
    #
    # @!attribute provider
    #   <p>The cluster's cloud service provider.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes
    #               cluster.</p>
    #
    #   @return [String]
    #
    ConnectorConfigResponse = ::Struct.new(
      :activation_id,
      :activation_code,
      :activation_expiry,
      :provider,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to create the add-on for.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #           <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute resolve_conflicts
    #   <p>How to resolve parameter value conflicts when migrating an existing add-on to an
    #                   Amazon EKS add-on.</p>
    #
    #   Enum, one of: ["OVERWRITE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the cluster to assist with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAddonInput = ::Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in
    #               the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Addon]
    #
    CreateAddonOutput = ::Struct.new(
      :addon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The unique name to give to your cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The desired Kubernetes version for your cluster. If you don't specify a value here,
    #               the latest version available in Amazon EKS is used.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the
    #               Kubernetes control plane to make calls to Amazon Web Services API operations on your
    #               behalf. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon EKS Service IAM Role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_vpc_config
    #   <p>The VPC configuration that's used by the cluster control plane. Amazon EKS VPC resources have
    #               specific requirements to work properly with Kubernetes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC
    #                   Considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the
    #               <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five
    #               security groups. However, we recommend that you use a dedicated security group for your
    #               cluster control plane.</p>
    #
    #   @return [VpcConfigRequest]
    #
    # @!attribute kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    #
    #   @return [KubernetesNetworkConfigRequest]
    #
    # @!attribute logging
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
    #   @return [Logging]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the cluster to assist with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    #
    #   @return [Array<EncryptionConfig>]
    #
    CreateClusterInput = ::Struct.new(
      :name,
      :version,
      :role_arn,
      :resources_vpc_config,
      :kubernetes_network_config,
      :logging,
      :client_request_token,
      :tags,
      :encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The full description of your new cluster.</p>
    #
    #   @return [Cluster]
    #
    CreateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster to apply the Fargate profile
    #               to.</p>
    #
    #   @return [String]
    #
    # @!attribute pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in
    #               the Fargate profile. The pod execution role allows Fargate
    #               infrastructure to register with your cluster as a node, and it provides read access to
    #                   Amazon ECR image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
    #                   Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with
    #               no direct route to an Internet Gateway) are accepted for this parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute selectors
    #   <p>The selectors to match for pods to use this Fargate profile. Each
    #               selector must have an associated namespace. Optionally, you can also specify labels for
    #               a namespace. You may specify up to five selectors in a Fargate
    #               profile.</p>
    #
    #   @return [Array<FargateProfileSelector>]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the Fargate profile to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.
    #               Fargate profile tags do not propagate to any other resources associated with the
    #               Fargate profile, such as the pods that are scheduled with it.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFargateProfileInput = ::Struct.new(
      :fargate_profile_name,
      :cluster_name,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fargate_profile
    #   <p>The full description of your new Fargate profile.</p>
    #
    #   @return [FargateProfile]
    #
    CreateFargateProfileOutput = ::Struct.new(
      :fargate_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to create the node group in.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The unique name to give your node group.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is created for your
    #               node group.</p>
    #
    #   @return [NodegroupScalingConfig]
    #
    # @!attribute disk_size
    #   <p>The root device disk size (in GiB) for your node group instances. The default disk
    #               size is 20 GiB. If you specify <code>launchTemplate</code>, then don't specify  <code>diskSize</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute subnets
    #   <p>The subnets to use for the Auto Scaling group that is created for your node group.
    #               If you specify <code>launchTemplate</code>, then don't specify  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">
    #                  <code>SubnetId</code>
    #               </a> in your launch template, or the node group
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_types
    #   <p>Specify the instance types for a node group. If you specify a GPU instance type, be
    #               sure to specify <code>AL2_x86_64_GPU</code> with the <code>amiType</code> parameter. If
    #               you specify <code>launchTemplate</code>, then you can specify zero or one instance type
    #               in your launch template <i>or</i> you can specify 0-20 instance types for
    #                   <code>instanceTypes</code>. If however, you specify an instance type in your launch
    #               template <i>and</i> specify any <code>instanceTypes</code>, the node group
    #               deployment will fail. If you don't specify an instance type in a launch template or for
    #                   <code>instanceTypes</code>, then <code>t3.medium</code> is used, by default. If you
    #               specify <code>Spot</code> for <code>capacityType</code>, then we recommend specifying
    #               multiple values for <code>instanceTypes</code>. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html managed-node-group-capacity-types">Managed node group capacity types</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in
    #               the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ami_type
    #   <p>The AMI type for your node group. GPU instance types should use the
    #                   <code>AL2_x86_64_GPU</code> AMI type. Non-GPU instances should use the
    #                   <code>AL2_x86_64</code> AMI type. Arm instances should use the
    #                   <code>AL2_ARM_64</code> AMI type. All types use the Amazon EKS optimized
    #               Amazon Linux 2 AMI. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI,
    #                   then don't specify <code>amiType</code>, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   Enum, one of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #
    #   @return [String]
    #
    # @!attribute remote_access
    #   <p>The remote access (SSH) configuration to use with your node group. If you specify <code>launchTemplate</code>,
    #               then don't specify  <code>remoteAccess</code>, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [RemoteAccessConfig]
    #
    # @!attribute node_role
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
    #   @return [String]
    #
    # @!attribute labels
    #   <p>The Kubernetes labels to be applied to the nodes in the node group when they are
    #               created.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    #   @return [Array<Taint>]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the node group to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You
    #               define both. Node group tags do not propagate to any other resources associated with the node
    #               group, such as the Amazon EC2 instances or subnets.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>An object representing a node group's launch template specification. If specified,
    #               then do not specify <code>instanceTypes</code>, <code>diskSize</code>, or
    #                   <code>remoteAccess</code> and make sure that the launch template meets the
    #               requirements in <code>launchTemplateSpecification</code>.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #
    #   @return [NodegroupUpdateConfig]
    #
    # @!attribute capacity_type
    #   <p>The capacity type for your node group.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes
    #               version of the cluster is used, and this is the only accepted specified value.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>version</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use with your node group.
    #               By default, the latest available AMI version for the node group's current Kubernetes
    #               version is used. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux 2 AMI versions</a> in the <i>Amazon EKS User Guide</i>.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
    #               or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateNodegroupInput = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :scaling_config,
      :disk_size,
      :subnets,
      :instance_types,
      :ami_type,
      :remote_access,
      :node_role,
      :labels,
      :taints,
      :tags,
      :client_request_token,
      :launch_template,
      :update_config,
      :capacity_type,
      :version,
      :release_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your new node group.</p>
    #
    #   @return [Nodegroup]
    #
    CreateNodegroupOutput = ::Struct.new(
      :nodegroup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to delete the add-on from.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute preserve
    #   <p>Specifying this option preserves the add-on software on your cluster but Amazon EKS stops managing any settings for the add-on. If an IAM
    #               account is associated with the add-on, it is not removed.</p>
    #
    #   @return [Boolean]
    #
    DeleteAddonInput = ::Struct.new(
      :cluster_name,
      :addon_name,
      :preserve,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.preserve ||= false
      end
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in
    #               the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Addon]
    #
    DeleteAddonOutput = ::Struct.new(
      :addon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the cluster to delete.</p>
    #
    #   @return [String]
    #
    DeleteClusterInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The full description of the cluster to delete.</p>
    #
    #   @return [Cluster]
    #
    DeleteClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the Fargate
    #               profile to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile to delete.</p>
    #
    #   @return [String]
    #
    DeleteFargateProfileInput = ::Struct.new(
      :cluster_name,
      :fargate_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fargate_profile
    #   <p>The deleted Fargate profile.</p>
    #
    #   @return [FargateProfile]
    #
    DeleteFargateProfileOutput = ::Struct.new(
      :fargate_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that is associated with your node
    #               group.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the node group to delete.</p>
    #
    #   @return [String]
    #
    DeleteNodegroupInput = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your deleted node group.</p>
    #
    #   @return [Nodegroup]
    #
    DeleteNodegroupOutput = ::Struct.new(
      :nodegroup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the connected cluster to deregister.</p>
    #
    #   @return [String]
    #
    DeregisterClusterInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>An object representing an Amazon EKS cluster.</p>
    #
    #   @return [Cluster]
    #
    DeregisterClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    DescribeAddonInput = ::Struct.new(
      :cluster_name,
      :addon_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute addon
    #   <p>An Amazon EKS add-on. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS add-ons</a> in
    #               the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Addon]
    #
    DescribeAddonOutput = ::Struct.new(
      :addon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute kubernetes_version
    #   <p>The Kubernetes versions that the add-on can be used with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeAddonVersionsRequest</code> where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    DescribeAddonVersionsInput = ::Struct.new(
      :kubernetes_version,
      :max_results,
      :next_token,
      :addon_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute addons
    #   <p>The list of available versions with Kubernetes version compatibility.</p>
    #
    #   @return [Array<AddonInfo>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeAddonVersionsResponse</code> where <code>maxResults</code> was used
    #               and the results exceeded the value of that parameter. Pagination continues from the end
    #               of the previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    DescribeAddonVersionsOutput = ::Struct.new(
      :addons,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the cluster to describe.</p>
    #
    #   @return [String]
    #
    DescribeClusterInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The full description of your specified cluster.</p>
    #
    #   @return [Cluster]
    #
    DescribeClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the Fargate
    #               profile.</p>
    #
    #   @return [String]
    #
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile to describe.</p>
    #
    #   @return [String]
    #
    DescribeFargateProfileInput = ::Struct.new(
      :cluster_name,
      :fargate_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fargate_profile
    #   <p>The full description of your Fargate profile.</p>
    #
    #   @return [FargateProfile]
    #
    DescribeFargateProfileOutput = ::Struct.new(
      :fargate_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster name that the identity provider configuration is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_config
    #   <p>An object that represents an identity provider configuration.</p>
    #
    #   @return [IdentityProviderConfig]
    #
    DescribeIdentityProviderConfigInput = ::Struct.new(
      :cluster_name,
      :identity_provider_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_config
    #   <p>The object that represents an OpenID Connect (OIDC) identity provider
    #               configuration.</p>
    #
    #   @return [IdentityProviderConfigResponse]
    #
    DescribeIdentityProviderConfigOutput = ::Struct.new(
      :identity_provider_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the node group.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the node group to describe.</p>
    #
    #   @return [String]
    #
    DescribeNodegroupInput = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute nodegroup
    #   <p>The full description of your node group.</p>
    #
    #   @return [Nodegroup]
    #
    DescribeNodegroupOutput = ::Struct.new(
      :nodegroup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster associated with the update.</p>
    #
    #   @return [String]
    #
    # @!attribute update_id
    #   <p>The ID of the update to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the Amazon EKS node group associated with the update. This
    #               parameter is required if the update is a node group update.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>. This parameter is required if the update is an add-on update.</p>
    #
    #   @return [String]
    #
    DescribeUpdateInput = ::Struct.new(
      :name,
      :update_id,
      :nodegroup_name,
      :addon_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>The full description of the specified update.</p>
    #
    #   @return [Update]
    #
    DescribeUpdateOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to disassociate an identity provider from.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_config
    #   <p>An object that represents an identity provider configuration.</p>
    #
    #   @return [IdentityProviderConfig]
    #
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    DisassociateIdentityProviderConfigInput = ::Struct.new(
      :cluster_name,
      :identity_provider_config,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    DisassociateIdentityProviderConfigOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption configuration for the cluster.</p>
    #
    # @!attribute resources
    #   <p>Specifies the resources to be encrypted. The only supported value is "secrets".</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute provider
    #   <p>Key Management Service (KMS) key. Either the ARN or the alias can be
    #               used.</p>
    #
    #   @return [Provider]
    #
    EncryptionConfig = ::Struct.new(
      :resources,
      :provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      SUBNET_NOT_FOUND = "SubnetNotFound"

      # No documentation available.
      #
      SECURITY_GROUP_NOT_FOUND = "SecurityGroupNotFound"

      # No documentation available.
      #
      ENI_LIMIT_REACHED = "EniLimitReached"

      # No documentation available.
      #
      IP_NOT_AVAILABLE = "IpNotAvailable"

      # No documentation available.
      #
      ACCESS_DENIED = "AccessDenied"

      # No documentation available.
      #
      OPERATION_NOT_PERMITTED = "OperationNotPermitted"

      # No documentation available.
      #
      VPC_ID_NOT_FOUND = "VpcIdNotFound"

      # No documentation available.
      #
      UNKNOWN = "Unknown"

      # No documentation available.
      #
      NODE_CREATION_FAILURE = "NodeCreationFailure"

      # No documentation available.
      #
      POD_EVICTION_FAILURE = "PodEvictionFailure"

      # No documentation available.
      #
      INSUFFICIENT_FREE_ADDRESSES = "InsufficientFreeAddresses"

      # No documentation available.
      #
      CLUSTER_UNREACHABLE = "ClusterUnreachable"

      # No documentation available.
      #
      INSUFFICIENT_NUMBER_OF_REPLICAS = "InsufficientNumberOfReplicas"

      # No documentation available.
      #
      CONFIGURATION_CONFLICT = "ConfigurationConflict"

      # No documentation available.
      #
      ADMISSION_REQUEST_DENIED = "AdmissionRequestDenied"

      # No documentation available.
      #
      UNSUPPORTED_ADDON_MODIFICATION = "UnsupportedAddonModification"

      # No documentation available.
      #
      K8S_RESOURCE_NOT_FOUND = "K8sResourceNotFound"
    end

    # <p>An object representing an error when an asynchronous operation fails.</p>
    #
    # @!attribute error_code
    #   <p>A brief description of the error. </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>SubnetNotFound</b>: We couldn't find one of the
    #                       subnets associated with the cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>SecurityGroupNotFound</b>: We couldn't find one
    #                       of the security groups associated with the cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>EniLimitReached</b>: You have reached the elastic
    #                       network interface limit for your account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IpNotAvailable</b>: A subnet associated with the
    #                       cluster doesn't have any free IP addresses.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AccessDenied</b>: You don't have permissions to
    #                       perform the specified operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>OperationNotPermitted</b>: The service role
    #                       associated with the cluster doesn't have the required access permissions for
    #                           Amazon EKS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>VpcIdNotFound</b>: We couldn't find the VPC
    #                       associated with the cluster.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A more complete description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>An optional field that contains the resource IDs associated with the error.</p>
    #
    #   @return [Array<String>]
    #
    ErrorDetail = ::Struct.new(
      :error_code,
      :error_message,
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Fargate profile.</p>
    #
    # @!attribute fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    #
    #   @return [String]
    #
    # @!attribute fargate_profile_arn
    #   <p>The full Amazon Resource Name (ARN) of the Fargate profile.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that the Fargate profile
    #               belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the Fargate profile was
    #               created.</p>
    #
    #   @return [Time]
    #
    # @!attribute pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in
    #               the Fargate profile. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
    #                   Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The IDs of subnets to launch pods into.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute selectors
    #   <p>The selectors to match for pods to use this Fargate profile.</p>
    #
    #   @return [Array<FargateProfileSelector>]
    #
    # @!attribute status
    #   <p>The current status of the Fargate profile.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata applied to the Fargate profile to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.
    #               Fargate profile tags do not propagate to any other resources associated with the
    #               Fargate profile, such as the pods that are scheduled with it.</p>
    #
    #   @return [Hash<String, String>]
    #
    FargateProfile = ::Struct.new(
      :fargate_profile_name,
      :fargate_profile_arn,
      :cluster_name,
      :created_at,
      :pod_execution_role_arn,
      :subnets,
      :selectors,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Fargate profile selector.</p>
    #
    # @!attribute namespace
    #   <p>The Kubernetes namespace that the selector should match.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>The Kubernetes labels that the selector should match. A pod must contain all of the
    #               labels that are specified in the selector for it to be considered a match.</p>
    #
    #   @return [Hash<String, String>]
    #
    FargateProfileSelector = ::Struct.new(
      :namespace,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FargateProfileStatus
    #
    module FargateProfileStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # <p>An object representing an identity provider.</p>
    #
    # @!attribute oidc
    #   <p>An object representing the <a href="https://openid.net/connect/">OpenID
    #                   Connect</a> identity provider information.</p>
    #
    #   @return [OIDC]
    #
    Identity = ::Struct.new(
      :oidc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an identity provider configuration.</p>
    #
    # @!attribute type
    #   <p>The type of the identity provider configuration. The only type available is
    #                   <code>oidc</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the identity provider configuration.</p>
    #
    #   @return [String]
    #
    IdentityProviderConfig = ::Struct.new(
      :type,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The full description of your identity configuration.</p>
    #
    # @!attribute oidc
    #   <p>An object that represents an OpenID Connect (OIDC) identity provider
    #               configuration.</p>
    #
    #   @return [OidcIdentityProviderConfig]
    #
    IdentityProviderConfigResponse = ::Struct.new(
      :oidc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #             request.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute fargate_profile_name
    #   <p>The Fargate profile associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is invalid given the state of the cluster. Check the state of the cluster
    #             and the associated operations.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpFamily
    #
    module IpFamily
      # No documentation available.
      #
      IPV4 = "ipv4"

      # No documentation available.
      #
      IPV6 = "ipv6"
    end

    # <p>An object representing an issue with an Amazon EKS resource.</p>
    #
    # @!attribute code
    #   <p>A brief description of the error.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>AccessDenied</b>: Amazon EKS or one or
    #                       more of your managed nodes is failing to authenticate or authorize with your
    #                       Kubernetes cluster API server.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AsgInstanceLaunchFailures</b>: Your Auto Scaling group is experiencing failures while attempting to launch
    #                       instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AutoScalingGroupNotFound</b>: We couldn't find
    #                       the Auto Scaling group associated with the managed node group. You may be
    #                       able to recreate an Auto Scaling group with the same settings to
    #                       recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ClusterUnreachable</b>: Amazon EKS or one
    #                       or more of your managed nodes is unable to to communicate with your Kubernetes
    #                       cluster API server. This can happen if there are network disruptions or if API
    #                       servers are timing out processing requests. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Ec2LaunchTemplateNotFound</b>: We couldn't find
    #                       the Amazon EC2 launch template for your managed node group. You may be
    #                       able to recreate a launch template with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Ec2LaunchTemplateVersionMismatch</b>: The Amazon EC2 launch template version for your managed node group does not
    #                       match the version that Amazon EKS created. You may be able to revert to
    #                       the version that Amazon EKS created to recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Ec2SecurityGroupDeletionFailure</b>: We could not
    #                       delete the remote access security group for your managed node group. Remove any
    #                       dependencies from the security group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Ec2SecurityGroupNotFound</b>: We couldn't find
    #                       the cluster security group for the cluster. You must recreate your
    #                       cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Ec2SubnetInvalidConfiguration</b>: One or more
    #                           Amazon EC2 subnets specified for a node group do not automatically
    #                       assign public IP addresses to instances launched into it. If you want your
    #                       instances to be assigned a public IP address, then you need to enable the
    #                           <code>auto-assign public IP address</code> setting for the subnet. See
    #                           <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html subnet-public-ip">Modifying
    #                           the public IPv4 addressing attribute for your subnet</a> in the
    #                           <i>Amazon VPC User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IamInstanceProfileNotFound</b>: We couldn't find
    #                       the IAM instance profile for your managed node group. You may be
    #                       able to recreate an instance profile with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IamNodeRoleNotFound</b>: We couldn't find the
    #                           IAM role for your managed node group. You may be able to
    #                       recreate an IAM role with the same settings to recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>InstanceLimitExceeded</b>: Your Amazon Web Services account is unable to launch any more instances of the specified instance
    #                       type. You may be able to request an Amazon EC2 instance limit increase
    #                       to recover.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>InsufficientFreeAddresses</b>: One or more of the
    #                       subnets associated with your managed node group does not have enough available
    #                       IP addresses for new nodes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>InternalFailure</b>: These errors are usually
    #                       caused by an Amazon EKS server-side issue.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>NodeCreationFailure</b>: Your launched instances
    #                       are unable to register with your Amazon EKS cluster. Common causes of this failure
    #                       are insufficient <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">node IAM role</a>
    #                       permissions or lack of outbound internet access for the nodes. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "Ec2SubnetMissingIpv6Assignment"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message associated with the issue.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>The Amazon Web Services resources that are afflicted by this issue.</p>
    #
    #   @return [Array<String>]
    #
    Issue = ::Struct.new(
      :code,
      :message,
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Kubernetes network configuration for the cluster.</p>
    #
    # @!attribute service_ipv4_cidr
    #   <p>Don't specify a value if you select <code>ipv6</code> for <b>ipFamily</b>. The CIDR block to assign Kubernetes service IP addresses from.
    #               If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16
    #               or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not
    #               overlap with resources in other networks that are peered or connected to your VPC. The
    #               block must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Within one of the following private IP address blocks: 10.0.0.0/8,
    #                       172.16.0.0/12, or 192.168.0.0/16.</p>
    #               </li>
    #               <li>
    #                   <p>Doesn't overlap with any CIDR block assigned to the VPC that you selected for
    #                       VPC.</p>
    #               </li>
    #               <li>
    #                   <p>Between /24 and /12.</p>
    #               </li>
    #            </ul>
    #           <important>
    #               <p>You can only specify a custom CIDR block when you create a cluster and can't
    #                   change this value once the cluster is created.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute ip_family
    #   <p>Specify which IP family is used to assign Kubernetes pod and service IP addresses. If
    #               you don't specify a value, <code>ipv4</code> is used by default. You can only specify an
    #               IP family when you create a cluster and can't change this value once the cluster is
    #               created. If you specify <code>ipv6</code>, the VPC and subnets that you specify for
    #               cluster creation must have both IPv4 and IPv6 CIDR blocks assigned to them. You can't
    #               specify <code>ipv6</code> for clusters in China Regions.</p>
    #           <p>You can only specify <code>ipv6</code> for 1.21 and later clusters that use version
    #               1.10.1 or later of the Amazon VPC CNI add-on. If you specify <code>ipv6</code>, then ensure
    #               that your VPC meets the requirements listed in the considerations listed in <a href="https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html">Assigning IPv6
    #                   addresses to pods and services</a> in the Amazon EKS User Guide.
    #               Kubernetes assigns services IPv6 addresses from the unique local address range
    #               (fc00::/7). You can't specify a custom IPv6 CIDR block. Pod addresses are assigned from
    #               the subnet's IPv6 CIDR.</p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    KubernetesNetworkConfigRequest = ::Struct.new(
      :service_ipv4_cidr,
      :ip_family,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Kubernetes network configuration for the cluster. The response contains a value
    #             for <b>serviceIpv6Cidr</b> or <b>serviceIpv4Cidr</b>, but not both. </p>
    #
    # @!attribute service_ipv4_cidr
    #   <p>The CIDR block that Kubernetes pod and service IP addresses are assigned from.
    #               Kubernetes assigns addresses from an IPv4 CIDR block assigned to a subnet that the node
    #               is in. If you didn't specify a CIDR block when you created the cluster, then Kubernetes
    #               assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. If this
    #               was specified, then it was specified when the cluster was created and it can't be
    #               changed.</p>
    #
    #   @return [String]
    #
    # @!attribute service_ipv6_cidr
    #   <p>The CIDR block that Kubernetes pod and service IP addresses are assigned from if you
    #               created a 1.21 or later cluster with version 1.10.1 or later of the Amazon VPC CNI add-on and
    #               specified <code>ipv6</code> for <b>ipFamily</b> when you
    #               created the cluster. Kubernetes assigns service addresses from the unique local address
    #               range (<code>fc00::/7</code>) because you can't specify a custom IPv6 CIDR block when
    #               you create the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_family
    #   <p>The IP family used to assign Kubernetes pod and service IP addresses. The IP family is
    #               always <code>ipv4</code>, unless you have a <code>1.21</code> or later cluster running
    #               version 1.10.1 or later of the Amazon VPC CNI add-on and specified <code>ipv6</code> when you
    #               created the cluster. </p>
    #
    #   Enum, one of: ["ipv4", "ipv6"]
    #
    #   @return [String]
    #
    KubernetesNetworkConfigResponse = ::Struct.new(
      :service_ipv4_cidr,
      :service_ipv6_cidr,
      :ip_family,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a node group launch template specification. The launch template
    #             cannot include <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">
    #                <code>SubnetId</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html">
    #                <code>IamInstanceProfile</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html">
    #                <code>RequestSpotInstances</code>
    #             </a>, <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html">
    #                <code>HibernationOptions</code>
    #             </a>, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html">
    #                <code>TerminateInstances</code>
    #             </a>, or the node group  deployment or
    #             update will fail. For more information about launch templates, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">
    #                <code>CreateLaunchTemplate</code>
    #             </a> in the Amazon EC2 API
    #             Reference. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #         <p>Specify either <code>name</code> or <code>id</code>, but not both.</p>
    #
    # @!attribute name
    #   <p>The name of the launch template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the launch template to use. If no version is specified, then the
    #               template's default version is used.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the launch template.</p>
    #
    #   @return [String]
    #
    LaunchTemplateSpecification = ::Struct.new(
      :name,
      :version,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListAddonsRequest</code> where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    ListAddonsInput = ::Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute addons
    #   <p>A list of available add-ons.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListAddonsResponse</code> where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    ListAddonsOutput = ::Struct.new(
      :addons,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of cluster results returned by <code>ListClusters</code> in
    #               paginated output. When you use this parameter, <code>ListClusters</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListClusters</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 100. If you don't
    #               use this parameter, <code>ListClusters</code> returns up to 100
    #               results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListClusters</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute include
    #   <p>Indicates whether external clusters are included in the returned list. Use '<code>all</code>' to return connected clusters, or blank to return only Amazon EKS clusters. '<code>all</code>' must be in lowercase otherwise an error occurs.</p>
    #
    #   @return [Array<String>]
    #
    ListClustersInput = ::Struct.new(
      :max_results,
      :next_token,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute clusters
    #   <p>A list of all of the clusters for your account in the specified Region.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code>
    #               request. When the results of a <code>ListClusters</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    ListClustersOutput = ::Struct.new(
      :clusters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that you would like to list Fargate profiles in.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListFargateProfiles</code> request where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListFargateProfilesInput = ::Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fargate_profile_names
    #   <p>A list of all of the Fargate profiles associated with the specified
    #               cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>ListFargateProfiles</code> request. When the results of a
    #                   <code>ListFargateProfiles</code> request exceed <code>maxResults</code>, you can use
    #               this value to retrieve the next page of results. This value is <code>null</code> when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListFargateProfilesOutput = ::Struct.new(
      :fargate_profile_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster name that you want to list identity provider configurations for.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>IdentityProviderConfigsRequest</code> where <code>maxResults</code> was used
    #               and the results exceeded the value of that parameter. Pagination continues from the end
    #               of the previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListIdentityProviderConfigsInput = ::Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_configs
    #   <p>The identity provider configurations for the cluster.</p>
    #
    #   @return [Array<IdentityProviderConfig>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListIdentityProviderConfigsResponse</code> where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListIdentityProviderConfigsOutput = ::Struct.new(
      :identity_provider_configs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that you would like to list node groups
    #               in.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of node group results returned by <code>ListNodegroups</code> in
    #               paginated output. When you use this parameter, <code>ListNodegroups</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListNodegroups</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 100. If you don't
    #               use this parameter, <code>ListNodegroups</code> returns up to 100
    #               results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListNodegroups</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    ListNodegroupsInput = ::Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute nodegroups
    #   <p>A list of all of the node groups associated with the specified cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListNodegroups</code>
    #               request. When the results of a <code>ListNodegroups</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    ListNodegroupsOutput = ::Struct.new(
      :nodegroups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #               supported resources are Amazon EKS clusters and managed node groups.</p>
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
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to list updates for.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the Amazon EKS managed node group to list updates for.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The names of the installed add-ons that have available updates.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListUpdates</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of update results returned by <code>ListUpdates</code> in paginated
    #               output. When you use this parameter, <code>ListUpdates</code> returns only
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another <code>ListUpdates</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 100. If you don't use this
    #               parameter, <code>ListUpdates</code> returns up to 100 results and a
    #                   <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListUpdatesInput = ::Struct.new(
      :name,
      :nodegroup_name,
      :addon_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_ids
    #   <p>A list of all the updates for the specified cluster and Region.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListUpdates</code>
    #               request. When the results of a <code>ListUpdates</code> request exceed
    #                   <code>maxResults</code>, you can use this value to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    ListUpdatesOutput = ::Struct.new(
      :update_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the enabled or disabled Kubernetes control plane logs for your
    #             cluster.</p>
    #
    # @!attribute types
    #   <p>The available cluster control plane log types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control
    #               plane logs. Each individual log type can be enabled or disabled independently.</p>
    #
    #   @return [Boolean]
    #
    LogSetup = ::Struct.new(
      :types,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogType
    #
    module LogType
      # No documentation available.
      #
      API = "api"

      # No documentation available.
      #
      AUDIT = "audit"

      # No documentation available.
      #
      AUTHENTICATOR = "authenticator"

      # No documentation available.
      #
      CONTROLLER_MANAGER = "controllerManager"

      # No documentation available.
      #
      SCHEDULER = "scheduler"
    end

    # <p>An object representing the logging configuration for resources in your cluster.</p>
    #
    # @!attribute cluster_logging
    #   <p>The cluster control plane logging configuration for your cluster.</p>
    #
    #   @return [Array<LogSetup>]
    #
    Logging = ::Struct.new(
      :cluster_logging,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon EKS managed node group.</p>
    #
    # @!attribute nodegroup_name
    #   <p>The name associated with an Amazon EKS managed node group.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the managed node group.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster that the managed node group resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The Kubernetes version of the managed node group.</p>
    #
    #   @return [String]
    #
    # @!attribute release_version
    #   <p>If the node group was deployed using a launch template with a custom AMI, then this is
    #               the AMI ID that was specified in the launch template. For node groups that weren't
    #               deployed using a launch template, this is the version of the Amazon EKS
    #               optimized AMI that the node group was deployed with.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the managed node group was
    #               created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   <p>The Unix epoch timestamp in seconds for when the managed node group was last
    #               modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the managed node group.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"]
    #
    #   @return [String]
    #
    # @!attribute capacity_type
    #   <p>The capacity type of your managed node group.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is associated with
    #               your node group.</p>
    #
    #   @return [NodegroupScalingConfig]
    #
    # @!attribute instance_types
    #   <p>If the node group wasn't deployed with a launch template, then this is the instance
    #               type that is associated with the node group. If the node group was deployed with a
    #               launch template, then this is <code>null</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnets
    #   <p>The subnets that were specified for the Auto Scaling group that is associated with
    #               your node group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute remote_access
    #   <p>If the node group wasn't deployed with a launch template, then this is the remote
    #               access configuration that is associated with the node group. If the node group was
    #               deployed with a launch template, then this is <code>null</code>.</p>
    #
    #   @return [RemoteAccessConfig]
    #
    # @!attribute ami_type
    #   <p>If the node group was deployed using a launch template with a custom AMI, then this is
    #                   <code>CUSTOM</code>. For node groups that weren't deployed using a launch template,
    #               this is the AMI type that was specified in the node group configuration.</p>
    #
    #   Enum, one of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA"]
    #
    #   @return [String]
    #
    # @!attribute node_role
    #   <p>The IAM role associated with your node group. The Amazon EKS
    #               node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf.
    #               Nodes receive permissions for these API calls through an IAM instance
    #               profile and associated policies.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>The Kubernetes labels applied to the nodes in the node group.</p>
    #           <note>
    #               <p>Only labels that are applied with the Amazon EKS API are shown here. There
    #                   may be other Kubernetes labels applied to the nodes in this group.</p>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group when they are
    #               created. Effect is one of <code>No_Schedule</code>, <code>Prefer_No_Schedule</code>, or
    #                   <code>No_Execute</code>. Kubernetes taints can be used together with tolerations to
    #               control how workloads are scheduled to your nodes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    #   @return [Array<Taint>]
    #
    # @!attribute resources
    #   <p>The resources associated with the node group, such as Auto Scaling groups and security
    #               groups for remote access.</p>
    #
    #   @return [NodegroupResources]
    #
    # @!attribute disk_size
    #   <p>If the node group wasn't deployed with a launch template, then this is the disk size
    #               in the node group configuration. If the node group was deployed with a launch template,
    #               then this is <code>null</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute health
    #   <p>The health status of the node group. If there are issues with your node group's
    #               health, they are listed here.</p>
    #
    #   @return [NodegroupHealth]
    #
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #
    #   @return [NodegroupUpdateConfig]
    #
    # @!attribute launch_template
    #   <p>If a launch template was used to create the node group, then this is the launch
    #               template that was used.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute tags
    #   <p>The metadata applied to the node group to assist with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Node group
    #               tags do not propagate to any other resources associated with the node group, such as the
    #               Amazon EC2 instances or subnets. </p>
    #
    #   @return [Hash<String, String>]
    #
    Nodegroup = ::Struct.new(
      :nodegroup_name,
      :nodegroup_arn,
      :cluster_name,
      :version,
      :release_version,
      :created_at,
      :modified_at,
      :status,
      :capacity_type,
      :scaling_config,
      :instance_types,
      :subnets,
      :remote_access,
      :ami_type,
      :node_role,
      :labels,
      :taints,
      :resources,
      :disk_size,
      :health,
      :update_config,
      :launch_template,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the health status of the node group.</p>
    #
    # @!attribute issues
    #   <p>Any issues that are associated with the node group. </p>
    #
    #   @return [Array<Issue>]
    #
    NodegroupHealth = ::Struct.new(
      :issues,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodegroupIssueCode
    #
    module NodegroupIssueCode
      # No documentation available.
      #
      AUTO_SCALING_GROUP_NOT_FOUND = "AutoScalingGroupNotFound"

      # No documentation available.
      #
      AUTO_SCALING_GROUP_INVALID_CONFIGURATION = "AutoScalingGroupInvalidConfiguration"

      # No documentation available.
      #
      EC2_SECURITY_GROUP_NOT_FOUND = "Ec2SecurityGroupNotFound"

      # No documentation available.
      #
      EC2_SECURITY_GROUP_DELETION_FAILURE = "Ec2SecurityGroupDeletionFailure"

      # No documentation available.
      #
      EC2_LAUNCH_TEMPLATE_NOT_FOUND = "Ec2LaunchTemplateNotFound"

      # No documentation available.
      #
      EC2_LAUNCH_TEMPLATE_VERSION_MISMATCH = "Ec2LaunchTemplateVersionMismatch"

      # No documentation available.
      #
      EC2_SUBNET_NOT_FOUND = "Ec2SubnetNotFound"

      # No documentation available.
      #
      EC2_SUBNET_INVALID_CONFIGURATION = "Ec2SubnetInvalidConfiguration"

      # No documentation available.
      #
      IAM_INSTANCE_PROFILE_NOT_FOUND = "IamInstanceProfileNotFound"

      # No documentation available.
      #
      IAM_LIMIT_EXCEEDED = "IamLimitExceeded"

      # No documentation available.
      #
      IAM_NODE_ROLE_NOT_FOUND = "IamNodeRoleNotFound"

      # No documentation available.
      #
      NODE_CREATION_FAILURE = "NodeCreationFailure"

      # No documentation available.
      #
      ASG_INSTANCE_LAUNCH_FAILURES = "AsgInstanceLaunchFailures"

      # No documentation available.
      #
      INSTANCE_LIMIT_EXCEEDED = "InstanceLimitExceeded"

      # No documentation available.
      #
      INSUFFICIENT_FREE_ADDRESSES = "InsufficientFreeAddresses"

      # No documentation available.
      #
      ACCESS_DENIED = "AccessDenied"

      # No documentation available.
      #
      INTERNAL_FAILURE = "InternalFailure"

      # No documentation available.
      #
      CLUSTER_UNREACHABLE = "ClusterUnreachable"

      # No documentation available.
      #
      EC2_SUBNET_MISSING_IPV6_ASSIGNMENT = "Ec2SubnetMissingIpv6Assignment"
    end

    # <p>An object representing the resources associated with the node group, such as Auto
    #             Scaling groups and security groups for remote access.</p>
    #
    # @!attribute auto_scaling_groups
    #   <p>The Auto Scaling groups associated with the node group.</p>
    #
    #   @return [Array<AutoScalingGroup>]
    #
    # @!attribute remote_access_security_group
    #   <p>The remote access security group associated with the node group. This security group
    #               controls SSH access to the nodes.</p>
    #
    #   @return [String]
    #
    NodegroupResources = ::Struct.new(
      :auto_scaling_groups,
      :remote_access_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the scaling configuration details for the Auto Scaling group
    #             that is associated with your node group. When creating a node group, you must specify
    #             all or none of the properties. When updating a node group, you can specify any or none
    #             of the properties.</p>
    #
    # @!attribute min_size
    #   <p>The minimum number of nodes that the managed node group can scale in to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum number of nodes that the managed node group can scale out to. For
    #               information about the maximum number that you can specify, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html">Amazon EKS service quotas</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_size
    #   <p>The current number of nodes that the managed node group should maintain.</p>
    #           <important>
    #               <p>If you use Cluster Autoscaler, you shouldn't change the desiredSize value
    #                   directly, as this can cause the Cluster Autoscaler to suddenly scale up or scale
    #                   down.</p>
    #           </important>
    #           <p>Whenever this parameter changes, the number of worker nodes in the node group is
    #               updated to the specified size. If this parameter is given a value that is smaller than
    #               the current number of running worker nodes, the necessary number of worker nodes are
    #               terminated to match the given value.
    #
    #               When using CloudFormation, no action occurs if you remove this parameter from your CFN
    #               template.</p>
    #           <p>This parameter can be different from minSize in some cases, such as when starting with
    #               extra hosts for testing. This parameter can also be different when you want to start
    #               with an estimated number of needed hosts, but let Cluster Autoscaler reduce the number
    #               if there are too many. When Cluster Autoscaler is used, the desiredSize parameter is
    #               altered by Cluster Autoscaler (but can be out-of-date for short periods of time).
    #               Cluster Autoscaler doesn't scale a managed node group lower than minSize or higher than
    #               maxSize.</p>
    #
    #   @return [Integer]
    #
    NodegroupScalingConfig = ::Struct.new(
      :min_size,
      :max_size,
      :desired_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodegroupStatus
    #
    module NodegroupStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DEGRADED = "DEGRADED"
    end

    # <p>The node group update configuration.</p>
    #
    # @!attribute max_unavailable
    #   <p>The maximum number of nodes unavailable at once during a version update. Nodes will be
    #               updated in parallel. This value or <code>maxUnavailablePercentage</code> is required to
    #               have a value.The maximum number is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_unavailable_percentage
    #   <p>The maximum percentage of nodes unavailable during a version update. This percentage
    #               of nodes will be updated in parallel, up to 100 nodes at once. This value or
    #                   <code>maxUnavailable</code> is required to have a value.</p>
    #
    #   @return [Integer]
    #
    NodegroupUpdateConfig = ::Struct.new(
      :max_unavailable,
      :max_unavailable_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A service resource associated with the request could not be found. Clients should not
    #             retry such requests.</p>
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

    # <p>An object representing the <a href="https://openid.net/connect/">OpenID
    #                 Connect</a> (OIDC) identity provider information for the cluster.</p>
    #
    # @!attribute issuer
    #   <p>The issuer URL for the OIDC identity provider.</p>
    #
    #   @return [String]
    #
    OIDC = ::Struct.new(
      :issuer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents the configuration for an OpenID Connect (OIDC) identity
    #             provider. </p>
    #
    # @!attribute identity_provider_config_name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_config_arn
    #   <p>The ARN of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The cluster that the configuration is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer_url
    #   <p>The URL of the OIDC identity provider that allows the API server to discover public
    #               signing keys for verifying tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>This is also known as <i>audience</i>. The ID of the client application
    #               that makes authentication requests to the OIDC identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute username_claim
    #   <p>The JSON Web token (JWT) claim that is used as the username.</p>
    #
    #   @return [String]
    #
    # @!attribute username_prefix
    #   <p>The prefix that is prepended to username claims to prevent clashes with existing
    #               names. The prefix can't contain <code>system:</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute groups_claim
    #   <p>The JSON web token (JWT) claim that the provider uses to return your groups.</p>
    #
    #   @return [String]
    #
    # @!attribute groups_prefix
    #   <p>The prefix that is prepended to group claims to prevent clashes with existing names
    #               (such as <code>system:</code> groups). For example, the value<code> oidc:</code> creates
    #               group names like <code>oidc:engineering</code> and <code>oidc:infra</code>. The prefix
    #               can't contain <code>system:</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute required_claims
    #   <p>The key-value pairs that describe required claims in the identity token. If set, each
    #               claim is verified to be present in the token with a matching value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The metadata to apply to the provider configuration to assist with categorization and
    #               organization. Each tag consists of a key and an optional value. You define both.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the OIDC identity provider.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "ACTIVE"]
    #
    #   @return [String]
    #
    OidcIdentityProviderConfig = ::Struct.new(
      :identity_provider_config_name,
      :identity_provider_config_arn,
      :cluster_name,
      :issuer_url,
      :client_id,
      :username_claim,
      :username_prefix,
      :groups_claim,
      :groups_prefix,
      :required_claims,
      :tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an OpenID Connect (OIDC) configuration. Before associating an
    #             OIDC identity provider to your cluster, review the considerations in <a href="https://docs.aws.amazon.com/eks/latest/userguide/authenticate-oidc-identity-provider.html">Authenticating
    #                 users for your cluster from an OpenID Connect identity provider</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    #
    # @!attribute identity_provider_config_name
    #   <p>The name of the OIDC provider configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer_url
    #   <p>The URL of the OpenID identity provider that allows the API server to discover public
    #               signing keys for verifying tokens. The URL must begin with <code>https://</code> and
    #               should correspond to the <code>iss</code> claim in the provider's OIDC ID tokens. Per
    #               the OIDC standard, path components are allowed but query parameters are not. Typically
    #               the URL consists of only a hostname, like <code>https://server.example.org</code> or
    #                   <code>https://example.com</code>. This URL should point to the level below
    #                   <code>.well-known/openid-configuration</code> and must be publicly accessible over
    #               the internet.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>This is also known as <i>audience</i>. The ID for the client application
    #               that makes authentication requests to the OpenID identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute username_claim
    #   <p>The JSON Web Token (JWT) claim to use as the username. The default is
    #               <code>sub</code>, which is expected to be a unique identifier of the end user. You can
    #               choose other claims, such as <code>email</code> or <code>name</code>, depending on the
    #               OpenID identity provider. Claims other than <code>email</code> are prefixed with the
    #               issuer URL to prevent naming clashes with other plug-ins.</p>
    #
    #   @return [String]
    #
    # @!attribute username_prefix
    #   <p>The prefix that is prepended to username claims to prevent clashes with existing
    #               names. If you do not provide this field, and <code>username</code> is a value other than
    #                   <code>email</code>, the prefix defaults to <code>issuerurl </code>. You can use the
    #               value <code>-</code> to disable all prefixing.</p>
    #
    #   @return [String]
    #
    # @!attribute groups_claim
    #   <p>The JWT claim that the provider uses to return your groups.</p>
    #
    #   @return [String]
    #
    # @!attribute groups_prefix
    #   <p>The prefix that is prepended to group claims to prevent clashes with existing names
    #               (such as <code>system:</code> groups). For example, the value<code> oidc:</code> will
    #               create group names like <code>oidc:engineering</code> and
    #               <code>oidc:infra</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute required_claims
    #   <p>The key value pairs that describe required claims in the identity token. If set, each
    #               claim is verified to be present in the token with a matching value. For the maximum
    #               number of claims that you can require, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html">Amazon EKS service
    #                   quotas</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    OidcIdentityProviderConfigRequest = ::Struct.new(
      :identity_provider_config_name,
      :issuer_url,
      :client_id,
      :username_claim,
      :username_prefix,
      :groups_claim,
      :groups_prefix,
      :required_claims,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the Key Management Service (KMS) key used to encrypt the
    #             secrets.</p>
    #
    # @!attribute key_arn
    #   <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric, created in the same
    #               region as the cluster, and if the KMS key was created in a different account, the user
    #               must have access to the KMS key. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html">Allowing
    #                   Users in Other Accounts to Use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    Provider = ::Struct.new(
      :key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Define a unique name for this cluster for your Region.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_config
    #   <p>The configuration settings required to connect the Kubernetes cluster to the Amazon EKS control plane.</p>
    #
    #   @return [ConnectorConfigRequest]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the cluster to assist with categorization and
    #               organization. Each tag consists of a key and an optional value, both of which you
    #               define. Cluster tags do not propagate to any other resources associated with the
    #               cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    RegisterClusterInput = ::Struct.new(
      :name,
      :connector_config,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>An object representing an Amazon EKS cluster.</p>
    #
    #   @return [Cluster]
    #
    RegisterClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the remote access configuration for the managed node
    #             group.</p>
    #
    # @!attribute ec2_ssh_key
    #   <p>The Amazon EC2 SSH key that provides access for SSH communication with the
    #               nodes in the managed node group. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 key pairs and Linux instances</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_security_groups
    #   <p>The security groups that are allowed SSH access (port 22) to the nodes. If you specify
    #               an Amazon EC2 SSH key but do not specify a source security group when you create
    #               a managed node group, then port 22 on the nodes is opened to the internet (0.0.0.0/0).
    #               For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the
    #               <i>Amazon Virtual Private Cloud User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    RemoteAccessConfig = ::Struct.new(
      :ec2_ssh_key,
      :source_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResolveConflicts
    #
    module ResolveConflicts
      # No documentation available.
      #
      OVERWRITE = "OVERWRITE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>The specified resource is in use.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have encountered a service limit on the specified resource.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource could not be found. You can view your available clusters with
    #                 <a>ListClusters</a>. You can view your available managed node groups with
    #                 <a>ListNodegroups</a>. Amazon EKS clusters and node groups are
    #             Region-specific.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute fargate_profile_name
    #   <p>The Fargate profile associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :fargate_profile_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Required resources (such as service-linked roles) were created and are still propagating. Retry later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourcePropagationDelayException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerException = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :addon_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is unavailable. Back off and retry the operation.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources
    #               are Amazon EKS clusters and managed node groups.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
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

    # <p>A property that allows a node to repel a set of pods. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    # @!attribute key
    #   <p>The key of the taint.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the taint.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the taint.</p>
    #
    #   Enum, one of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #
    #   @return [String]
    #
    Taint = ::Struct.new(
      :key,
      :value,
      :effect,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaintEffect
    #
    module TaintEffect
      # No documentation available.
      #
      NO_SCHEDULE = "NO_SCHEDULE"

      # No documentation available.
      #
      NO_EXECUTE = "NO_EXECUTE"

      # No documentation available.
      #
      PREFER_NO_SCHEDULE = "PREFER_NO_SCHEDULE"
    end

    # <p>At least one of your specified cluster subnets is in an Availability Zone that does
    #             not support Amazon EKS. The exception output specifies the supported
    #             Availability Zones for your account, from which you can choose subnets for your
    #             cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The Amazon EKS cluster associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The Amazon EKS managed node group associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute valid_zones
    #   <p>The supported Availability Zones for your account. Choose subnets in these
    #               Availability Zones for your cluster.</p>
    #
    #   @return [Array<String>]
    #
    UnsupportedAvailabilityZoneException = ::Struct.new(
      :message,
      :cluster_name,
      :nodegroup_name,
      :valid_zones,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported
    #               resources are Amazon EKS clusters and managed node groups.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
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

    # <p>An object representing an asynchronous update.</p>
    #
    # @!attribute id
    #   <p>A UUID that is used to track the update.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the update.</p>
    #
    #   Enum, one of: ["InProgress", "Failed", "Cancelled", "Successful"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the update.</p>
    #
    #   Enum, one of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate"]
    #
    #   @return [String]
    #
    # @!attribute params
    #   <p>A key-value map that contains the parameters associated with the update.</p>
    #
    #   @return [Array<UpdateParam>]
    #
    # @!attribute created_at
    #   <p>The Unix epoch timestamp in seconds for when the update was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute errors
    #   <p>Any errors associated with a <code>Failed</code> update.</p>
    #
    #   @return [Array<ErrorDetail>]
    #
    Update = ::Struct.new(
      :id,
      :status,
      :type,
      :params,
      :created_at,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #           <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute resolve_conflicts
    #   <p>How to resolve parameter value conflicts when applying the new version of the add-on
    #               to the cluster.</p>
    #
    #   Enum, one of: ["OVERWRITE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdateAddonInput = ::Struct.new(
      :cluster_name,
      :addon_name,
      :addon_version,
      :service_account_role_arn,
      :resolve_conflicts,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    UpdateAddonOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_vpc_config
    #   <p>An object representing the VPC configuration to use for an Amazon EKS
    #               cluster.</p>
    #
    #   @return [VpcConfigRequest]
    #
    # @!attribute logging
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
    #   @return [Logging]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdateClusterConfigInput = ::Struct.new(
      :name,
      :resources_vpc_config,
      :logging,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    UpdateClusterConfigOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The desired Kubernetes version following a successful update.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdateClusterVersionInput = ::Struct.new(
      :name,
      :version,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>The full description of the specified update</p>
    #
    #   @return [Update]
    #
    UpdateClusterVersionOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a Kubernetes label change for a managed node group.</p>
    #
    # @!attribute add_or_update_labels
    #   <p>Kubernetes labels to be added or updated.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute remove_labels
    #   <p>Kubernetes labels to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UpdateLabelsPayload = ::Struct.new(
      :add_or_update_labels,
      :remove_labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that the managed node group resides
    #               in.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>The Kubernetes labels to be applied to the nodes in the node group after the
    #               update.</p>
    #
    #   @return [UpdateLabelsPayload]
    #
    # @!attribute taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group after the
    #               update. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    #   @return [UpdateTaintsPayload]
    #
    # @!attribute scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group after the update.</p>
    #
    #   @return [NodegroupScalingConfig]
    #
    # @!attribute update_config
    #   <p>The node group update configuration.</p>
    #
    #   @return [NodegroupUpdateConfig]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdateNodegroupConfigInput = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :labels,
      :taints,
      :scaling_config,
      :update_config,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    UpdateNodegroupConfigOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the Amazon EKS cluster that is associated with the managed node
    #               group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The Kubernetes version to update to. If no version is specified, then the Kubernetes
    #               version of the node group does not change. You can specify the Kubernetes version of the
    #               cluster to update the node group to the latest AMI version of the cluster's Kubernetes
    #               version. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify
    #                   <code>version</code>, or the node group  update will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use for the update. By
    #               default, the latest available AMI version for the node group's Kubernetes version is
    #               used. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux 2 AMI versions </a> in the <i>Amazon EKS User Guide</i>.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
    #               or the node group  update will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Amazon EKS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>An object representing a node group's launch template specification. You can only
    #               update a node group using a launch template if the node group was originally deployed
    #               with a launch template.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute force
    #   <p>Force the update if the existing node group's pods are unable to be drained due to a
    #               pod disruption budget issue. If an update fails because pods could not be drained, you
    #               can force the update after it fails to terminate the old node whether or not any pods
    #               are running on the node.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdateNodegroupVersionInput = ::Struct.new(
      :cluster_name,
      :nodegroup_name,
      :version,
      :release_version,
      :launch_template,
      :force,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # @!attribute update
    #   <p>An object representing an asynchronous update.</p>
    #
    #   @return [Update]
    #
    UpdateNodegroupVersionOutput = ::Struct.new(
      :update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the details of an update request.</p>
    #
    # @!attribute type
    #   <p>The keys associated with an update request.</p>
    #
    #   Enum, one of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the keys submitted as part of an update request.</p>
    #
    #   @return [String]
    #
    UpdateParam = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateParamType
    #
    module UpdateParamType
      # No documentation available.
      #
      VERSION = "Version"

      # No documentation available.
      #
      PLATFORM_VERSION = "PlatformVersion"

      # No documentation available.
      #
      ENDPOINT_PRIVATE_ACCESS = "EndpointPrivateAccess"

      # No documentation available.
      #
      ENDPOINT_PUBLIC_ACCESS = "EndpointPublicAccess"

      # No documentation available.
      #
      CLUSTER_LOGGING = "ClusterLogging"

      # No documentation available.
      #
      DESIRED_SIZE = "DesiredSize"

      # No documentation available.
      #
      LABELS_TO_ADD = "LabelsToAdd"

      # No documentation available.
      #
      LABELS_TO_REMOVE = "LabelsToRemove"

      # No documentation available.
      #
      TAINTS_TO_ADD = "TaintsToAdd"

      # No documentation available.
      #
      TAINTS_TO_REMOVE = "TaintsToRemove"

      # No documentation available.
      #
      MAX_SIZE = "MaxSize"

      # No documentation available.
      #
      MIN_SIZE = "MinSize"

      # No documentation available.
      #
      RELEASE_VERSION = "ReleaseVersion"

      # No documentation available.
      #
      PUBLIC_ACCESS_CIDRS = "PublicAccessCidrs"

      # No documentation available.
      #
      LAUNCH_TEMPLATE_NAME = "LaunchTemplateName"

      # No documentation available.
      #
      LAUNCH_TEMPLATE_VERSION = "LaunchTemplateVersion"

      # No documentation available.
      #
      IDENTITY_PROVIDER_CONFIG = "IdentityProviderConfig"

      # No documentation available.
      #
      ENCRYPTION_CONFIG = "EncryptionConfig"

      # No documentation available.
      #
      ADDON_VERSION = "AddonVersion"

      # No documentation available.
      #
      SERVICE_ACCOUNT_ROLE_ARN = "ServiceAccountRoleArn"

      # No documentation available.
      #
      RESOLVE_CONFLICTS = "ResolveConflicts"

      # No documentation available.
      #
      MAX_UNAVAILABLE = "MaxUnavailable"

      # No documentation available.
      #
      MAX_UNAVAILABLE_PERCENTAGE = "MaxUnavailablePercentage"
    end

    # Includes enum constants for UpdateStatus
    #
    module UpdateStatus
      # No documentation available.
      #
      IN_PROGRESS = "InProgress"

      # No documentation available.
      #
      FAILED = "Failed"

      # No documentation available.
      #
      CANCELLED = "Cancelled"

      # No documentation available.
      #
      SUCCESSFUL = "Successful"
    end

    # <p>An object representing the details of an update to a taints payload. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on managed node groups</a>.</p>
    #
    # @!attribute add_or_update_taints
    #   <p>Kubernetes taints to be added or updated.</p>
    #
    #   @return [Array<Taint>]
    #
    # @!attribute remove_taints
    #   <p>Kubernetes taints to be removed.</p>
    #
    #   @return [Array<Taint>]
    #
    UpdateTaintsPayload = ::Struct.new(
      :add_or_update_taints,
      :remove_taints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateType
    #
    module UpdateType
      # No documentation available.
      #
      VERSION_UPDATE = "VersionUpdate"

      # No documentation available.
      #
      ENDPOINT_ACCESS_UPDATE = "EndpointAccessUpdate"

      # No documentation available.
      #
      LOGGING_UPDATE = "LoggingUpdate"

      # No documentation available.
      #
      CONFIG_UPDATE = "ConfigUpdate"

      # No documentation available.
      #
      ASSOCIATE_IDENTITY_PROVIDER_CONFIG = "AssociateIdentityProviderConfig"

      # No documentation available.
      #
      DISASSOCIATE_IDENTITY_PROVIDER_CONFIG = "DisassociateIdentityProviderConfig"

      # No documentation available.
      #
      ASSOCIATE_ENCRYPTION_CONFIG = "AssociateEncryptionConfig"

      # No documentation available.
      #
      ADDON_UPDATE = "AddonUpdate"
    end

    # <p>An object representing the VPC configuration to use for an Amazon EKS
    #             cluster.</p>
    #
    # @!attribute subnet_ids
    #   <p>Specify subnets for your Amazon EKS nodes. Amazon EKS creates
    #               cross-account elastic network interfaces in these subnets to allow communication between
    #               your nodes and the Kubernetes control plane.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>Specify one or more security groups for the cross-account elastic network interfaces
    #               that Amazon EKS creates to use that allow communication between your nodes and
    #               the Kubernetes control plane. If you don't specify any security groups, then familiarize
    #               yourself with the difference between Amazon EKS defaults for clusters deployed
    #               with Kubernetes:</p>
    #           <ul>
    #               <li>
    #                   <p>1.14 Amazon EKS platform version <code>eks.2</code> and earlier</p>
    #               </li>
    #               <li>
    #                   <p>1.14 Amazon EKS platform version <code>eks.3</code> and later </p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Amazon EKS security group
    #                   considerations</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint_public_access
    #   <p>Set this value to <code>false</code> to disable public access to your cluster's
    #               Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes
    #               API server can only receive requests from within the cluster VPC. The default value for
    #               this parameter is <code>true</code>, which enables public access for your Kubernetes API
    #               server. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint_private_access
    #   <p>Set this value to <code>true</code> to enable private access for your cluster's
    #               Kubernetes API server endpoint. If you enable private access, Kubernetes API requests
    #               from within your cluster's VPC use the private VPC endpoint. The default value for this
    #               parameter is <code>false</code>, which disables private access for your Kubernetes API
    #               server. If you disable private access and you have nodes or Fargate
    #               pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the
    #               necessary CIDR blocks for communication with the nodes or Fargate pods.
    #               For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in
    #               the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute public_access_cidrs
    #   <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
    #               endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that
    #               you specify is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled
    #               private endpoint access and you have nodes or Fargate pods in the
    #               cluster, then ensure that you specify the necessary CIDR blocks. For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigRequest = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon EKS cluster VPC configuration
    #             response.</p>
    #
    # @!attribute subnet_ids
    #   <p>The subnets associated with your cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The security groups associated with the cross-account elastic network interfaces that
    #               are used to allow communication between your nodes and the Kubernetes control
    #               plane.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_security_group_id
    #   <p>The cluster security group that was created by Amazon EKS for the cluster.
    #               Managed node groups use this security group for control-plane-to-data-plane
    #               communication.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC associated with your cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_public_access
    #   <p>This parameter indicates whether the Amazon EKS public API server endpoint is
    #               enabled. If the Amazon EKS public API server endpoint is disabled, your
    #               cluster's Kubernetes API server can only receive requests that originate from within the
    #               cluster VPC.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute endpoint_private_access
    #   <p>This parameter indicates whether the Amazon EKS private API server endpoint is
    #               enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes
    #               API requests that originate from within your cluster's VPC use the private VPC endpoint
    #               instead of traversing the internet. If this value is disabled and you have nodes or
    #                   Fargate pods in the cluster, then ensure that
    #                   <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication
    #               with the nodes or Fargate pods. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute public_access_cidrs
    #   <p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
    #               endpoint. Communication to the endpoint from addresses outside of the listed CIDR blocks
    #               is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled private
    #               endpoint access and you have nodes or Fargate pods in the cluster,
    #               then ensure that the necessary CIDR blocks are listed. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS cluster endpoint access control</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfigResponse = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      :cluster_security_group_id,
      :vpc_id,
      :endpoint_public_access,
      :endpoint_private_access,
      :public_access_cidrs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.endpoint_public_access ||= false
        self.endpoint_private_access ||= false
      end
    end

    # Includes enum constants for ConfigStatus
    #
    module ConfigStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

  end
end
