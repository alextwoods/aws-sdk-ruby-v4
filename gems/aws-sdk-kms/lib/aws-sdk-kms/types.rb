# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Types

    # Includes enum constants for AlgorithmSpec
    module AlgorithmSpec
      # No documentation available.
      RSAES_PKCS1_V1_5 = "RSAES_PKCS1_V1_5"

      # No documentation available.
      RSAES_OAEP_SHA_1 = "RSAES_OAEP_SHA_1"

      # No documentation available.
      RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256"

      # No documentation available.
      RSA_AES_KEY_WRAP_SHA_1 = "RSA_AES_KEY_WRAP_SHA_1"

      # No documentation available.
      RSA_AES_KEY_WRAP_SHA_256 = "RSA_AES_KEY_WRAP_SHA_256"
    end

    # <p>Contains information about an alias.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :alias_name
    #   @option params [String] :alias_arn
    #   @option params [String] :target_key_id
    #   @option params [Time] :creation_date
    #   @option params [Time] :last_updated_date
    # @!attribute alias_name
    #   <p>String that contains the alias. This value begins with <code>alias/</code>.</p>
    #   @return [String]
    # @!attribute alias_arn
    #   <p>String that contains the key ARN.</p>
    #   @return [String]
    # @!attribute target_key_id
    #   <p>String that contains the key identifier of the KMS key associated with the alias.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>Date and time that the alias was most recently created in the account and Region.
    #         Formatted as Unix time.</p>
    #   @return [Time]
    # @!attribute last_updated_date
    #   <p>Date and time that the alias was most recently associated with a KMS key in the account
    #         and Region. Formatted as Unix time.</p>
    #   @return [Time]
    AliasListEntry = ::Struct.new(
      :alias_name,
      :alias_arn,
      :target_key_id,
      :creation_date,
      :last_updated_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it attempted to create a resource that already
    #       exists.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    AlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies the KMS key whose deletion is being canceled.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    CancelKeyDeletionInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key whose deletion is canceled.</p>
    #   @return [String]
    CancelKeyDeletionOutput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified CloudHSM cluster is already associated with an
    #       CloudHSM key store in the account, or it shares a backup history with an CloudHSM key store in the
    #       account. Each CloudHSM key store in the account must be associated with a different CloudHSM
    #       cluster.</p>
    #          <p>CloudHSM clusters that share a backup history have the same cluster certificate. To view the
    #       cluster certificate of an CloudHSM cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CloudHsmClusterInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the associated CloudHSM cluster did not meet the
    #       configuration requirements for an CloudHSM key store.</p>
    #          <ul>
    #             <li>
    #                <p>The CloudHSM cluster must be configured with private subnets in at least two different
    #           Availability Zones in the Region.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html">security group for
    #             the cluster</a> (cloudhsm-cluster-<i><cluster-id></i>-sg) must
    #           include inbound rules and outbound rules that allow TCP traffic on ports 2223-2225. The
    #             <b>Source</b> in the inbound rules and the <b>Destination</b> in the outbound rules must match the security group
    #           ID. These rules are set by default when you create the CloudHSM cluster. Do not delete or
    #           change them. To get information about a particular security group, use the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html">DescribeSecurityGroups</a> operation.</p>
    #             </li>
    #             <li>
    #                <p>The CloudHSM cluster must contain at least as many HSMs as the operation requires. To add
    #           HSMs, use the CloudHSM <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a> operation.</p>
    #                <p>For the <a>CreateCustomKeyStore</a>, <a>UpdateCustomKeyStore</a>, and <a>CreateKey</a> operations, the CloudHSM cluster must have at least two
    #           active HSMs, each in a different Availability Zone. For the <a>ConnectCustomKeyStore</a> operation, the CloudHSM must contain at least one active
    #           HSM.</p>
    #             </li>
    #          </ul>
    #          <p>For information about the requirements for an CloudHSM cluster that is associated with an
    #       CloudHSM key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble the Prerequisites</a>
    #       in the <i>Key Management Service Developer Guide</i>. For information about creating a private subnet for an CloudHSM cluster,
    #       see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/create-subnets.html">Create a Private
    #         Subnet</a> in the <i>CloudHSM User Guide</i>. For information about cluster security groups, see
    #         <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html">Configure a Default Security
    #         Group</a> in the <i>
    #                <i>CloudHSM User Guide</i>
    #             </i>. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CloudHsmClusterInvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the CloudHSM cluster associated with the CloudHSM key store is
    #       not active. Initialize and activate the cluster and try the command again. For detailed
    #       instructions, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html">Getting
    #         Started</a> in the <i>CloudHSM User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CloudHsmClusterNotActiveException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because KMS cannot find the CloudHSM cluster with the specified
    #       cluster ID. Retry the request with a different cluster ID.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CloudHsmClusterNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified CloudHSM cluster has a different cluster
    #       certificate than the original cluster. You cannot use the operation to specify an unrelated
    #       cluster for an CloudHSM key store.</p>
    #          <p>Specify an CloudHSM cluster that shares a backup history with the original cluster. This
    #       includes clusters that were created from a backup of the current cluster, and clusters that
    #       were created from the same backup that produced the current cluster.</p>
    #          <p>CloudHSM clusters that share a backup history have the same cluster certificate. To view the
    #       cluster certificate of an CloudHSM cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CloudHsmClusterNotRelatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    # @!attribute custom_key_store_id
    #   <p>Enter the key store ID of the custom key store that you want to connect.
    #         To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #   @return [String]
    ConnectCustomKeyStoreInput = ::Struct.new(
      :custom_key_store_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    ConnectCustomKeyStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionErrorCodeType
    module ConnectionErrorCodeType
      # No documentation available.
      INVALID_CREDENTIALS = "INVALID_CREDENTIALS"

      # No documentation available.
      CLUSTER_NOT_FOUND = "CLUSTER_NOT_FOUND"

      # No documentation available.
      NETWORK_ERRORS = "NETWORK_ERRORS"

      # No documentation available.
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      INSUFFICIENT_CLOUDHSM_HSMS = "INSUFFICIENT_CLOUDHSM_HSMS"

      # No documentation available.
      USER_LOCKED_OUT = "USER_LOCKED_OUT"

      # No documentation available.
      USER_NOT_FOUND = "USER_NOT_FOUND"

      # No documentation available.
      USER_LOGGED_IN = "USER_LOGGED_IN"

      # No documentation available.
      SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND"

      # No documentation available.
      INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET = "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET"

      # No documentation available.
      XKS_PROXY_ACCESS_DENIED = "XKS_PROXY_ACCESS_DENIED"

      # No documentation available.
      XKS_PROXY_NOT_REACHABLE = "XKS_PROXY_NOT_REACHABLE"

      # No documentation available.
      XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND = "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND"

      # No documentation available.
      XKS_PROXY_INVALID_RESPONSE = "XKS_PROXY_INVALID_RESPONSE"

      # No documentation available.
      XKS_PROXY_INVALID_CONFIGURATION = "XKS_PROXY_INVALID_CONFIGURATION"

      # No documentation available.
      XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION = "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION"

      # No documentation available.
      XKS_PROXY_TIMED_OUT = "XKS_PROXY_TIMED_OUT"

      # No documentation available.
      XKS_PROXY_INVALID_TLS_CONFIGURATION = "XKS_PROXY_INVALID_TLS_CONFIGURATION"
    end

    # Includes enum constants for ConnectionStateType
    module ConnectionStateType
      # No documentation available.
      CONNECTED = "CONNECTED"

      # No documentation available.
      CONNECTING = "CONNECTING"

      # No documentation available.
      FAILED = "FAILED"

      # No documentation available.
      DISCONNECTED = "DISCONNECTED"

      # No documentation available.
      DISCONNECTING = "DISCONNECTING"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :alias_name
    #   @option params [String] :target_key_id
    # @!attribute alias_name
    #   <p>Specifies the alias name. This value must begin with <code>alias/</code> followed by a
    #         name, such as <code>alias/ExampleAlias</code>. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>The <code>AliasName</code> value must be string of 1-256 characters. It can contain only
    #         alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name
    #         cannot begin with <code>alias/aws/</code>. The <code>alias/aws/</code> prefix is reserved for
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed
    #           keys</a>.</p>
    #   @return [String]
    # @!attribute target_key_id
    #   <p>Associates the alias with the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>. The KMS key must
    #         be in the same Amazon Web Services Region. </p>
    #            <p>A valid key ID is required. If you supply a null or empty string value, this operation
    #         returns an error.</p>
    #            <p>For help finding the key ID and ARN, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn">Finding the Key ID and
    #           ARN</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    CreateAliasInput = ::Struct.new(
      :alias_name,
      :target_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    CreateAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_name
    #   @option params [String] :cloud_hsm_cluster_id
    #   @option params [String] :trust_anchor_certificate
    #   @option params [String] :key_store_password
    #   @option params [String] :custom_key_store_type
    #   @option params [String] :xks_proxy_uri_endpoint
    #   @option params [String] :xks_proxy_uri_path
    #   @option params [String] :xks_proxy_vpc_endpoint_service_name
    #   @option params [XksProxyAuthenticationCredentialType] :xks_proxy_authentication_credential
    #   @option params [String] :xks_proxy_connectivity
    # @!attribute custom_key_store_name
    #   <p>Specifies a friendly name for the custom key store. The name must be unique in your
    #         Amazon Web Services account and Region. This parameter is required for all custom key stores.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #   @return [String]
    # @!attribute cloud_hsm_cluster_id
    #   <p>Identifies the CloudHSM cluster for an CloudHSM key store. This parameter is required for custom
    #         key stores with <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the cluster ID of any active CloudHSM cluster that is not already associated with a
    #         custom key store. To find the cluster ID, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    #   @return [String]
    # @!attribute trust_anchor_certificate
    #   <p>Specifies the certificate for an CloudHSM key store. This parameter is required for custom
    #         key stores with a <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the content of the trust anchor certificate for the CloudHSM cluster. This is the
    #         content of the <code>customerCA.crt</code> file that you created when you <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html">initialized the
    #           cluster</a>.</p>
    #   @return [String]
    # @!attribute key_store_password
    #   <p>Specifies the <code>kmsuser</code> password for an CloudHSM key store. This parameter is
    #         required for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the password of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser">
    #                  <code>kmsuser</code> crypto user
    #           (CU) account</a> in the specified CloudHSM cluster. KMS logs into the cluster as this
    #         user to manage key material on your behalf.</p>
    #            <p>The password must be a string of 7 to 32 characters. Its value is case sensitive.</p>
    #            <p>This parameter tells KMS the <code>kmsuser</code> account password; it does not change
    #         the password in the CloudHSM cluster.</p>
    #   @return [String]
    # @!attribute custom_key_store_type
    #   <p>Specifies the type of custom key store. The default value is
    #         <code>AWS_CLOUDHSM</code>.</p>
    #            <p>For a custom key store backed by an CloudHSM cluster, omit the parameter or enter
    #           <code>AWS_CLOUDHSM</code>. For a custom key store backed by an external key manager outside
    #         of Amazon Web Services, enter <code>EXTERNAL_KEY_STORE</code>. You cannot change this property after the key
    #         store is created.</p>
    #   Enum, one of: ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   @return [String]
    # @!attribute xks_proxy_uri_endpoint
    #   <p>Specifies the endpoint that KMS uses to send requests to the external key store proxy
    #         (XKS proxy). This parameter is required for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The protocol must be HTTPS. KMS communicates on port 443. Do not specify the port in the
    #           <code>XksProxyUriEndpoint</code> value.</p>
    #            <p>For external key stores with <code>XksProxyConnectivity</code> value of
    #           <code>VPC_ENDPOINT_SERVICE</code>, specify <code>https://</code> followed by the private DNS
    #         name of the VPC endpoint service.</p>
    #            <p>For external key stores with <code>PUBLIC_ENDPOINT</code> connectivity, this endpoint must
    #         be reachable before you create the custom key store. KMS connects to the external key store
    #         proxy while creating the custom key store. For external key stores with
    #           <code>VPC_ENDPOINT_SERVICE</code> connectivity, KMS connects when you call the <a>ConnectCustomKeyStore</a> operation.</p>
    #            <p>The value of this parameter must begin with <code>https://</code>. The remainder can
    #         contain upper and lower case letters (A-Z and a-z), numbers (0-9), dots (<code>.</code>), and
    #         hyphens (<code>-</code>). Additional slashes (<code>/</code> and <code>\</code>) are not
    #         permitted.</p>
    #            <p>
    #               <b>Uniqueness requirements: </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values
    #             must be unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #               <li>
    #                  <p>An external key store with <code>PUBLIC_ENDPOINT</code> connectivity cannot use the
    #             same <code>XksProxyUriEndpoint</code> value as an external key store with
    #               <code>VPC_ENDPOINT_SERVICE</code> connectivity in this Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>Each external key store with <code>VPC_ENDPOINT_SERVICE</code> connectivity must have
    #             its own private DNS name. The <code>XksProxyUriEndpoint</code> value for external key
    #             stores with <code>VPC_ENDPOINT_SERVICE</code> connectivity (private DNS name) must be
    #             unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute xks_proxy_uri_path
    #   <p>Specifies the base path to the proxy APIs for this external key store. To find this value,
    #         see the documentation for your external key store proxy. This parameter is required for all
    #         custom key stores with a <code>CustomKeyStoreType</code> of
    #         <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The value must start with <code>/</code> and must end with <code>/kms/xks/v1</code> where
    #           <code>v1</code> represents the version of the KMS external key store proxy API. This path
    #         can include an optional prefix between the required elements such as
    #             <code>/<i>prefix</i>/kms/xks/v1</code>.</p>
    #            <p>
    #               <b>Uniqueness requirements: </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values
    #             must be unique in the Amazon Web Services account and Region.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute xks_proxy_vpc_endpoint_service_name
    #   <p>Specifies the name of the Amazon VPC endpoint service for interface endpoints that is used to
    #         communicate with your external key store proxy (XKS proxy). This parameter is required when
    #         the value of <code>CustomKeyStoreType</code> is <code>EXTERNAL_KEY_STORE</code> and the value
    #         of <code>XksProxyConnectivity</code> is <code>VPC_ENDPOINT_SERVICE</code>.</p>
    #            <p>The Amazon VPC endpoint service must <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements">fulfill all
    #           requirements</a> for use with an external key store. </p>
    #            <p>
    #               <b>Uniqueness requirements:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>External key stores with <code>VPC_ENDPOINT_SERVICE</code> connectivity can share an
    #             Amazon VPC, but each external key store must have its own VPC endpoint service and private DNS
    #             name.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute xks_proxy_authentication_credential
    #   <p>Specifies an authentication credential for the external key store proxy (XKS proxy). This
    #         parameter is required for all custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The <code>XksProxyAuthenticationCredential</code> has two required elements:
    #           <code>RawSecretAccessKey</code>, a secret key, and <code>AccessKeyId</code>, a unique
    #         identifier for the <code>RawSecretAccessKey</code>. For character requirements, see <a href="kms/latest/APIReference/API_XksProxyAuthenticationCredentialType.html">XksProxyAuthenticationCredentialType</a>.</p>
    #            <p>KMS uses this authentication credential to sign requests to the external key store proxy
    #         on your behalf. This credential is unrelated to Identity and Access Management (IAM) and Amazon Web Services credentials.</p>
    #            <p>This parameter doesn't set or change the authentication credentials on the XKS proxy. It
    #         just tells KMS the credential that you established on your external key store proxy. If you
    #         rotate your proxy authentication credential, use the <a>UpdateCustomKeyStore</a>
    #         operation to provide the new credential to KMS.</p>
    #   @return [XksProxyAuthenticationCredentialType]
    # @!attribute xks_proxy_connectivity
    #   <p>Indicates how KMS communicates with the external key store proxy. This parameter is
    #         required for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>If the external key store proxy uses a public endpoint, specify
    #           <code>PUBLIC_ENDPOINT</code>. If the external key store proxy uses a Amazon VPC
    #         endpoint service for communication with KMS, specify <code>VPC_ENDPOINT_SERVICE</code>. For
    #         help making this choice, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/plan-xks-keystore.html#choose-xks-connectivity">Choosing a connectivity
    #           option</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>An Amazon VPC endpoint service keeps your communication with KMS in a private address space
    #         entirely within Amazon Web Services, but it requires more configuration, including establishing a Amazon VPC with multiple subnets, a VPC endpoint service, a network load balancer, and a
    #         verified private DNS name. A public endpoint is simpler to set up, but it might be slower and
    #         might not fulfill your security requirements. You might consider testing with a public
    #         endpoint, and then establishing a VPC endpoint service for production tasks. Note that this
    #         choice does not determine the location of the external key store proxy. Even if you choose a
    #         VPC endpoint service, the proxy can be hosted within the VPC or outside of Amazon Web Services such as in
    #         your corporate data center.</p>
    #   Enum, one of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   @return [String]
    CreateCustomKeyStoreInput = ::Struct.new(
      :custom_key_store_name,
      :cloud_hsm_cluster_id,
      :trust_anchor_certificate,
      :key_store_password,
      :custom_key_store_type,
      :xks_proxy_uri_endpoint,
      :xks_proxy_uri_path,
      :xks_proxy_vpc_endpoint_service_name,
      :xks_proxy_authentication_credential,
      :xks_proxy_connectivity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::CreateCustomKeyStoreInput "\
          "custom_key_store_name=#{custom_key_store_name || 'nil'}, "\
          "cloud_hsm_cluster_id=#{cloud_hsm_cluster_id || 'nil'}, "\
          "trust_anchor_certificate=#{trust_anchor_certificate || 'nil'}, "\
          "key_store_password=\"[SENSITIVE]\", "\
          "custom_key_store_type=#{custom_key_store_type || 'nil'}, "\
          "xks_proxy_uri_endpoint=#{xks_proxy_uri_endpoint || 'nil'}, "\
          "xks_proxy_uri_path=#{xks_proxy_uri_path || 'nil'}, "\
          "xks_proxy_vpc_endpoint_service_name=#{xks_proxy_vpc_endpoint_service_name || 'nil'}, "\
          "xks_proxy_authentication_credential=#{xks_proxy_authentication_credential || 'nil'}, "\
          "xks_proxy_connectivity=#{xks_proxy_connectivity || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    # @!attribute custom_key_store_id
    #   <p>A unique identifier for the new custom key store.</p>
    #   @return [String]
    CreateCustomKeyStoreOutput = ::Struct.new(
      :custom_key_store_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :grantee_principal
    #   @option params [String] :retiring_principal
    #   @option params [Array<String>] :operations
    #   @option params [GrantConstraints] :constraints
    #   @option params [Array<String>] :grant_tokens
    #   @option params [String] :name
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Identifies the KMS key for the grant. The grant gives principals permission to use this
    #         KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute grantee_principal
    #   <p>The identity that gets the permissions specified in the grant.</p>
    #            <p>To specify the grantee principal, use the Amazon Resource Name (ARN) of an Amazon Web Services
    #         principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute retiring_principal
    #   <p>The principal that has permission to use the <a>RetireGrant</a> operation to
    #         retire the grant. </p>
    #            <p>To specify the principal, use the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an
    #         Amazon Web Services principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #            <p>The grant determines the retiring principal. Other principals might have permission to
    #         retire the grant or revoke the grant. For details, see <a>RevokeGrant</a> and
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete">Retiring and
    #           revoking grants</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #   @return [String]
    # @!attribute operations
    #   <p>A list of operations that the grant permits. </p>
    #            <p>This list must include only operations that are permitted in a grant. Also, the operation
    #         must be supported on the KMS key. For example, you cannot create a grant for a symmetric
    #         encryption KMS key that allows the <a>Sign</a> operation, or a grant for an
    #         asymmetric KMS key that allows the <a>GenerateDataKey</a> operation. If you try,
    #         KMS returns a <code>ValidationError</code> exception. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">Grant
    #           operations</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute constraints
    #   <p>Specifies a grant constraint.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>KMS supports the <code>EncryptionContextEquals</code> and
    #           <code>EncryptionContextSubset</code> grant constraints, which allow the permissions in the
    #         grant only when the encryption context in the request matches
    #           (<code>EncryptionContextEquals</code>) or includes (<code>EncryptionContextSubset</code>)
    #         the encryption context specified in the constraint. </p>
    #            <p>The encryption context grant constraints are supported only on <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations">grant operations</a> that include
    #         an <code>EncryptionContext</code> parameter, such as cryptographic operations on symmetric
    #         encryption KMS keys. Grants with grant constraints can include the <a>DescribeKey</a> and <a>RetireGrant</a> operations, but the constraint doesn't apply to these
    #         operations. If a grant with a grant constraint includes the <code>CreateGrant</code>
    #         operation, the constraint requires that any grants created with the <code>CreateGrant</code>
    #         permission have an equally strict or stricter encryption context constraint.</p>
    #            <p>You cannot use an encryption context grant constraint for cryptographic operations with
    #         asymmetric KMS keys or HMAC KMS keys. Operations with these keys don't support an encryption
    #         context.</p>
    #            <p>Each constraint value can include up to 8 encryption context pairs. The encryption context
    #         value in each constraint cannot exceed 384 characters. For information about grant
    #         constraints, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints">Using grant
    #           constraints</a> in the <i>Key Management Service Developer Guide</i>. For more information about encryption context,
    #         see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
    #           context</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>. </p>
    #   @return [GrantConstraints]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens. </p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>A friendly name for the grant. Use this value to prevent the unintended creation of
    #         duplicate grants when retrying this request.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>When this value is absent, all <code>CreateGrant</code> requests result in a new grant
    #         with a unique <code>GrantId</code> even if all the supplied parameters are identical. This can
    #         result in unintended duplicates when you retry the <code>CreateGrant</code> request.</p>
    #            <p>When this value is present, you can retry a <code>CreateGrant</code> request with
    #         identical parameters; if the grant already exists, the original <code>GrantId</code> is
    #         returned without creating a new grant. Note that the returned grant token is unique with every
    #           <code>CreateGrant</code> request, even when a duplicate <code>GrantId</code> is returned.
    #         All grant tokens for the same grant ID can be used interchangeably.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    CreateGrantInput = ::Struct.new(
      :key_id,
      :grantee_principal,
      :retiring_principal,
      :operations,
      :constraints,
      :grant_tokens,
      :name,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :grant_token
    #   @option params [String] :grant_id
    # @!attribute grant_token
    #   <p>The grant token.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute grant_id
    #   <p>The unique identifier for the grant.</p>
    #            <p>You can use the <code>GrantId</code> in a <a>ListGrants</a>, <a>RetireGrant</a>, or <a>RevokeGrant</a> operation.</p>
    #   @return [String]
    CreateGrantOutput = ::Struct.new(
      :grant_token,
      :grant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :policy
    #   @option params [String] :description
    #   @option params [String] :key_usage
    #   @option params [String] :customer_master_key_spec
    #   @option params [String] :key_spec
    #   @option params [String] :origin
    #   @option params [String] :custom_key_store_id
    #   @option params [Boolean] :bypass_policy_lockout_safety_check (false)
    #   @option params [Array<Tag>] :tags
    #   @option params [Boolean] :multi_region
    #   @option params [String] :xks_key_id
    # @!attribute policy
    #   <p>The key policy to attach to the KMS key.</p>
    #            <p>If you provide a key policy, it must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>If you do not provide a key policy, KMS attaches a default key policy to the KMS key.
    #         For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">Default key policy</a> in the
    #         <i>Key Management Service Developer Guide</i>. </p>
    #            <p>The key policy size quota is 32 kilobytes (32768 bytes).</p>
    #            <p>For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the KMS key. Use a description that helps you decide whether the KMS key
    #         is appropriate for a task. The default value is an empty string (no description).</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>To set or change the description after the key is created, use <a>UpdateKeyDescription</a>.</p>
    #   @return [String]
    # @!attribute key_usage
    #   <p>Determines the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> for which you can use the KMS key. The default value is
    #           <code>ENCRYPT_DECRYPT</code>. This parameter is optional when you are creating a symmetric
    #         encryption KMS key; otherwise, it is required. You can't change the <code>KeyUsage</code>
    #         value after the KMS key is created.</p>
    #            <p>Select only one valid value.</p>
    #            <ul>
    #               <li>
    #                  <p>For symmetric encryption KMS keys, omit the parameter or specify
    #               <code>ENCRYPT_DECRYPT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For HMAC KMS keys (symmetric), specify <code>GENERATE_VERIFY_MAC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with RSA key material, specify <code>ENCRYPT_DECRYPT</code> or
    #               <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with ECC key material, specify
    #             <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For asymmetric KMS keys with SM2 key material (China Regions only), specify
    #               <code>ENCRYPT_DECRYPT</code> or <code>SIGN_VERIFY</code>.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   @return [String]
    # @!attribute customer_master_key_spec
    #   <p>Instead, use the <code>KeySpec</code> parameter.</p>
    #            <p>The <code>KeySpec</code> and <code>CustomerMasterKeySpec</code> parameters work the same
    #         way. Only the names differ. We recommend that you use <code>KeySpec</code> parameter in your
    #         code. However, to avoid breaking changes, KMS supports both parameters.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @deprecated
    #     This parameter has been deprecated. Instead, use the KeySpec parameter.
    #   @return [String]
    # @!attribute key_spec
    #   <p>Specifies the type of KMS key to create. The default value,
    #         <code>SYMMETRIC_DEFAULT</code>, creates a KMS key with a 256-bit AES-GCM key that is used for
    #         encryption and decryption, except in China Regions, where it creates a 128-bit symmetric key
    #         that uses SM4 encryption. For help choosing a key spec for your KMS key, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-types.html#symm-asymm-choose">Choosing a KMS key type</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <p>The <code>KeySpec</code> determines whether the KMS key contains a symmetric key or an
    #         asymmetric key pair. It also determines the algorithms that the KMS key supports. You can't
    #         change the <code>KeySpec</code> after the KMS key is created. To further restrict the
    #         algorithms that can be used with the KMS key, use a condition key in its key policy or IAM
    #         policy. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm">kms:EncryptionAlgorithm</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-mac-algorithm">kms:MacAlgorithm</a> or <a href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm">kms:Signing Algorithm</a> in the <i>
    #                  <i>Key Management Service Developer Guide</i>
    #               </i>.</p>
    #            <important>
    #               <p>
    #                  <a href="http://aws.amazon.com/kms/features/#AWS_Service_Integration">Amazon Web Services services that
    #             are integrated with KMS</a> use symmetric encryption KMS keys to protect your data.
    #           These services do not support asymmetric KMS keys or HMAC KMS keys.</p>
    #            </important>
    #            <p>KMS supports the following key specs for KMS keys:</p>
    #            <ul>
    #               <li>
    #                  <p>Symmetric encryption key (default)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SYMMETRIC_DEFAULT</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>HMAC keys (symmetric)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_224</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_256</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_384</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HMAC_512</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Asymmetric RSA key pairs</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>RSA_2048</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RSA_3072</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RSA_4096</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Asymmetric NIST-recommended elliptic curve key pairs</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P256</code> (secp256r1)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P384</code> (secp384r1)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ECC_NIST_P521</code> (secp521r1)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Other asymmetric elliptic curve key pairs</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ECC_SECG_P256K1</code> (secp256k1), commonly used for
    #                 cryptocurrencies.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>SM2 key pairs (China Regions only)</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SM2</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @return [String]
    # @!attribute origin
    #   <p>The source of the key material for the KMS key. You cannot change the origin after you
    #         create the KMS key. The default is <code>AWS_KMS</code>, which means that KMS creates the
    #         key material.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-create-cmk.html">create a
    #           KMS key with no key material</a> (for imported key material), set this value to
    #           <code>EXTERNAL</code>. For more information about importing key material into KMS, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key
    #           Material</a> in the <i>Key Management Service Developer Guide</i>. The <code>EXTERNAL</code> origin value is valid
    #         only for symmetric KMS keys.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html">create a KMS
    #           key in an CloudHSM key store</a> and create its key material in the associated CloudHSM
    #         cluster, set this value to <code>AWS_CLOUDHSM</code>. You must also use the
    #           <code>CustomKeyStoreId</code> parameter to identify the CloudHSM key store. The
    #           <code>KeySpec</code> value must be <code>SYMMETRIC_DEFAULT</code>.</p>
    #            <p>To <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keys.html">create a KMS key in
    #           an external key store</a>, set this value to <code>EXTERNAL_KEY_STORE</code>. You must
    #         also use the <code>CustomKeyStoreId</code> parameter to identify the external key store and
    #         the <code>XksKeyId</code> parameter to identify the associated external key. The
    #           <code>KeySpec</code> value must be <code>SYMMETRIC_DEFAULT</code>.</p>
    #   Enum, one of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   @return [String]
    # @!attribute custom_key_store_id
    #   <p>Creates the KMS key in the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. The <code>ConnectionState</code> of
    #         the custom key store must be <code>CONNECTED</code>. To find the CustomKeyStoreID and
    #         ConnectionState use the <a>DescribeCustomKeyStores</a> operation.</p>
    #            <p>This parameter is valid only for symmetric encryption KMS keys in a single Region. You
    #         cannot create any other type of KMS key in a custom key store.</p>
    #            <p>When you create a KMS key in an CloudHSM key store, KMS generates a non-exportable 256-bit
    #         symmetric key in its associated CloudHSM cluster and associates it with the KMS key. When you
    #         create a KMS key in an external key store, you must use the <code>XksKeyId</code> parameter to
    #         specify an external key that serves as key material for the KMS key.</p>
    #   @return [String]
    # @!attribute bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Assigns one or more tags to the KMS key. Use this parameter to tag the KMS key when it is
    #         created. To tag an existing KMS key, use the <a>TagResource</a> operation.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <note>
    #               <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> permission in an IAM policy.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #         required, but the tag value can be an empty (null) string. You cannot have more than one tag
    #         on a KMS key with the same tag key. If you specify an existing tag key with a different tag
    #         value, KMS replaces the current tag value with the specified one.</p>
    #            <p>When you add tags to an Amazon Web Services resource, Amazon Web Services generates a cost allocation
    #                 report with usage and costs aggregated by tags. Tags can also be used to control access to a KMS key. For details,
    #                 see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging Keys</a>.</p>
    #   @return [Array<Tag>]
    # @!attribute multi_region
    #   <p>Creates a multi-Region primary key that you can replicate into other Amazon Web Services Regions. You
    #         cannot change this value after you create the KMS key. </p>
    #            <p>For a multi-Region key, set this parameter to <code>True</code>. For a single-Region KMS
    #         key, omit this parameter or set it to <code>False</code>. The default value is
    #           <code>False</code>.</p>
    #            <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #         interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #         material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #         it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>This value creates a <i>primary key</i>, not a replica. To create a
    #           <i>replica key</i>, use the <a>ReplicateKey</a> operation. </p>
    #            <p>You can create a symmetric or asymmetric multi-Region key, and you can create a
    #         multi-Region key with imported key material. However, you cannot create a multi-Region key in
    #         a custom key store.</p>
    #   @return [Boolean]
    # @!attribute xks_key_id
    #   <p>Identifies the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">external key</a> that
    #         serves as key material for the KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key store</a>. Specify the ID that
    #         the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-xks-proxy">external key store proxy</a> uses to refer to the external key. For help, see the
    #         documentation for your external key store proxy.</p>
    #            <p>This parameter is required for a KMS key with an <code>Origin</code> value of
    #           <code>EXTERNAL_KEY_STORE</code>. It is not valid for KMS keys with any other
    #           <code>Origin</code> value.</p>
    #            <p>The external key must be an existing 256-bit AES symmetric encryption key hosted outside
    #         of Amazon Web Services in an external key manager associated with the external key store specified by the
    #           <code>CustomKeyStoreId</code> parameter. This key must be enabled and configured to perform
    #         encryption and decryption. Each KMS key in an external key store must use a different external
    #         key. For details, see <a href="https://docs.aws.amazon.com/create-xks-keys.html#xks-key-requirements">Requirements for a KMS key in an external
    #           key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Each KMS key in an external key store is associated two backing keys. One is key material
    #         that KMS generates. The other is the external key specified by this parameter. When you use
    #         the KMS key in an external key store to encrypt data, the encryption operation is performed
    #         first by KMS using the KMS key material, and then by the external key manager using the
    #         specified external key, a process known as <i>double encryption</i>. For
    #         details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-double-encryption">Double
    #           encryption</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    CreateKeyInput = ::Struct.new(
      :policy,
      :description,
      :key_usage,
      :customer_master_key_spec,
      :key_spec,
      :origin,
      :custom_key_store_id,
      :bypass_policy_lockout_safety_check,
      :tags,
      :multi_region,
      :xks_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_policy_lockout_safety_check = false if self.bypass_policy_lockout_safety_check.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [KeyMetadata] :key_metadata
    # @!attribute key_metadata
    #   <p>Metadata associated with the KMS key.</p>
    #   @return [KeyMetadata]
    CreateKeyOutput = ::Struct.new(
      :key_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the custom key store contains KMS keys. After verifying
    #       that you do not need to use the KMS keys, use the <a>ScheduleKeyDeletion</a>
    #       operation to delete the KMS keys. After they are deleted, you can delete the custom key
    #       store.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CustomKeyStoreHasCMKsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because of the <code>ConnectionState</code> of the custom key
    #       store. To get the <code>ConnectionState</code> of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p>This exception is thrown under the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>You requested the <a>ConnectCustomKeyStore</a> operation on a custom key
    #           store with a <code>ConnectionState</code> of <code>DISCONNECTING</code> or
    #             <code>FAILED</code>. This operation is valid for all other <code>ConnectionState</code>
    #           values. To reconnect a custom key store in a <code>FAILED</code> state, disconnect it
    #             (<a>DisconnectCustomKeyStore</a>), then connect it
    #             (<code>ConnectCustomKeyStore</code>).</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>CreateKey</a> operation in a custom key store that is
    #           not connected. This operations is valid only when the custom key store
    #             <code>ConnectionState</code> is <code>CONNECTED</code>.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>DisconnectCustomKeyStore</a> operation on a custom key
    #           store with a <code>ConnectionState</code> of <code>DISCONNECTING</code> or
    #             <code>DISCONNECTED</code>. This operation is valid for all other
    #             <code>ConnectionState</code> values.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>UpdateCustomKeyStore</a> or <a>DeleteCustomKeyStore</a> operation on a custom key store that is not
    #           disconnected. This operation is valid only when the custom key store
    #             <code>ConnectionState</code> is <code>DISCONNECTED</code>.</p>
    #             </li>
    #             <li>
    #                <p>You requested the <a>GenerateRandom</a> operation in an CloudHSM key store
    #           that is not connected. This operation is valid only when the CloudHSM key store
    #             <code>ConnectionState</code> is <code>CONNECTED</code>. </p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CustomKeyStoreInvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified custom key store name is already assigned
    #       to another custom key store in the account. Try again with a custom key store name that is
    #       unique in the account.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CustomKeyStoreNameInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because KMS cannot find a custom key store with the specified
    #       key store name or ID.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    CustomKeyStoreNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomKeyStoreType
    module CustomKeyStoreType
      # No documentation available.
      AWS_CLOUDHSM = "AWS_CLOUDHSM"

      # No documentation available.
      EXTERNAL_KEY_STORE = "EXTERNAL_KEY_STORE"
    end

    # <p>Contains information about each custom key store in the custom key store list.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    #   @option params [String] :custom_key_store_name
    #   @option params [String] :cloud_hsm_cluster_id
    #   @option params [String] :trust_anchor_certificate
    #   @option params [String] :connection_state
    #   @option params [String] :connection_error_code
    #   @option params [Time] :creation_date
    #   @option params [String] :custom_key_store_type
    #   @option params [XksProxyConfigurationType] :xks_proxy_configuration
    # @!attribute custom_key_store_id
    #   <p>A unique identifier for the custom key store.</p>
    #   @return [String]
    # @!attribute custom_key_store_name
    #   <p>The user-specified friendly name for the custom key store.</p>
    #   @return [String]
    # @!attribute cloud_hsm_cluster_id
    #   <p>A unique identifier for the CloudHSM cluster that is associated with an CloudHSM key store. This
    #         field appears only when the <code>CustomKeyStoreType</code> is
    #         <code>AWS_CLOUDHSM</code>.</p>
    #   @return [String]
    # @!attribute trust_anchor_certificate
    #   <p>The trust anchor certificate of the CloudHSM cluster associated with an CloudHSM key store. When
    #         you <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr">initialize
    #           the cluster</a>, you create this certificate and save it in the
    #           <code>customerCA.crt</code> file.</p>
    #            <p>This field appears only when the <code>CustomKeyStoreType</code> is
    #           <code>AWS_CLOUDHSM</code>.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>Indicates whether the custom key store is connected to its backing key store. For an CloudHSM
    #         key store, the <code>ConnectionState</code> indicates whether it is connected to its CloudHSM
    #         cluster. For an external key store, the <code>ConnectionState</code> indicates whether it is
    #         connected to the external key store proxy that communicates with your external key
    #         manager.</p>
    #            <p>You can create and use KMS keys in your custom key stores only when its
    #           <code>ConnectionState</code> is <code>CONNECTED</code>.</p>
    #            <p>The <code>ConnectionState</code> value is <code>DISCONNECTED</code> only if the key store
    #         has never been connected or you use the <a>DisconnectCustomKeyStore</a> operation
    #         to disconnect it. If the value is <code>CONNECTED</code> but you are having trouble using the
    #         custom key store, make sure that the backing key store is reachable and active. For an CloudHSM
    #         key store, verify that its associated CloudHSM cluster is active and contains at least one active
    #         HSM. For an external key store, verify that the external key store proxy and external key
    #         manager are connected and enabled.</p>
    #            <p>A value of <code>FAILED</code> indicates that an attempt to connect was unsuccessful. The
    #           <code>ConnectionErrorCode</code> field in the response indicates the cause of the failure.
    #         For help resolving a connection failure, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting a custom key store</a> in the
    #         <i>Key Management Service Developer Guide</i>.</p>
    #   Enum, one of: ["CONNECTED", "CONNECTING", "FAILED", "DISCONNECTED", "DISCONNECTING"]
    #   @return [String]
    # @!attribute connection_error_code
    #   <p>Describes the connection error. This field appears in the response only when the
    #           <code>ConnectionState</code> is <code>FAILED</code>.</p>
    #            <p>Many failures can be resolved by updating the properties of the custom key store. To
    #         update a custom key store, disconnect it (<a>DisconnectCustomKeyStore</a>), correct
    #         the errors (<a>UpdateCustomKeyStore</a>), and try to connect again (<a>ConnectCustomKeyStore</a>). For additional help resolving these errors, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed">How to Fix a
    #           Connection Failure</a> in <i>Key Management Service Developer Guide</i>.</p>
    #            <p>
    #               <b>All custom key stores:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_ERROR</code> — KMS could not complete the request due to an
    #             internal error. Retry the request. For <code>ConnectCustomKeyStore</code> requests,
    #             disconnect the custom key store before trying to connect again.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NETWORK_ERRORS</code> — Network errors are preventing KMS from
    #             connecting the custom key store to its backing key store.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>CloudHSM key stores:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLUSTER_NOT_FOUND</code> — KMS cannot find the CloudHSM cluster with the
    #             specified cluster ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_CLOUDHSM_HSMS</code> — The associated CloudHSM cluster does not
    #             contain any active HSMs. To connect a custom key store to its CloudHSM cluster, the cluster
    #             must contain at least one active HSM.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET</code> — At least one private
    #             subnet associated with the CloudHSM cluster doesn't have any available IP addresses. A CloudHSM
    #             key store connection requires one free IP address in each of the associated private
    #             subnets, although two are preferable. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed">How to Fix a Connection
    #               Failure</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_CREDENTIALS</code> — The <code>KeyStorePassword</code> for the
    #             custom key store doesn't match the current password of the <code>kmsuser</code> crypto
    #             user in the CloudHSM cluster. Before you can connect your custom key store to its CloudHSM
    #             cluster, you must change the <code>kmsuser</code> account password and update the
    #               <code>KeyStorePassword</code> value for the custom key store.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBNET_NOT_FOUND</code> — A subnet in the CloudHSM cluster configuration was
    #             deleted. If KMS cannot find all of the subnets in the cluster configuration, attempts to
    #             connect the custom key store to the CloudHSM cluster fail. To fix this error, create a
    #             cluster from a recent backup and associate it with your custom key store. (This process
    #             creates a new cluster configuration with a VPC and private subnets.) For details, see
    #               <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed">How
    #               to Fix a Connection Failure</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_LOCKED_OUT</code> — The <code>kmsuser</code> CU account is locked
    #             out of the associated CloudHSM cluster due to too many failed password attempts. Before you
    #             can connect your custom key store to its CloudHSM cluster, you must change the
    #               <code>kmsuser</code> account password and update the key store password value for the
    #             custom key store.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_LOGGED_IN</code> — The <code>kmsuser</code> CU account is logged
    #             into the associated CloudHSM cluster. This prevents KMS from rotating the
    #               <code>kmsuser</code> account password and logging into the cluster. Before you can
    #             connect your custom key store to its CloudHSM cluster, you must log the <code>kmsuser</code>
    #             CU out of the cluster. If you changed the <code>kmsuser</code> password to log into the
    #             cluster, you must also and update the key store password value for the custom key store.
    #             For help, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#login-kmsuser-2">How to Log Out and
    #               Reconnect</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USER_NOT_FOUND</code> — KMS cannot find a <code>kmsuser</code> CU
    #             account in the associated CloudHSM cluster. Before you can connect your custom key store to
    #             its CloudHSM cluster, you must create a <code>kmsuser</code> CU account in the cluster, and
    #             then update the key store password value for the custom key store.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>External key stores:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INVALID_CREDENTIALS</code> — One or both of the
    #               <code>XksProxyAuthenticationCredential</code> values is not valid on the specified
    #             external key store proxy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_ACCESS_DENIED</code> — KMS requests are denied access to the
    #             external key store proxy. If the external key store proxy has authorization rules, verify
    #             that they permit KMS to communicate with the proxy on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_INVALID_CONFIGURATION</code> — A configuration error is
    #             preventing the external key store from connecting to its proxy. Verify the value of the
    #               <code>XksProxyUriPath</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_INVALID_RESPONSE</code> — KMS cannot interpret the response
    #             from the external key store proxy. If you see this connection error code repeatedly,
    #             notify your external key store proxy vendor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_INVALID_TLS_CONFIGURATION</code> — KMS cannot connect to the
    #             external key store proxy because the TLS configuration is invalid. Verify that the XKS
    #             proxy supports TLS 1.2 or 1.3. Also, verify that the TLS certificate is not expired, and
    #             that it matches the hostname in the <code>XksProxyUriEndpoint</code> value, and that it is
    #             signed by a certificate authority included in the <a href="https://github.com/aws/aws-kms-xksproxy-api-spec/blob/main/TrustedCertificateAuthorities">Trusted Certificate Authorities</a> list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_NOT_REACHABLE</code> — KMS can't communicate with your
    #             external key store proxy. Verify that the <code>XksProxyUriEndpoint</code> and
    #               <code>XksProxyUriPath</code> are correct. Use the tools for your external key store
    #             proxy to verify that the proxy is active and available on its network. Also, verify that
    #             your external key manager instances are operating properly. Connection attempts fail with
    #             this connection error code if the proxy reports that all external key manager instances
    #             are unavailable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_PROXY_TIMED_OUT</code> — KMS can connect to the external key store
    #             proxy, but the proxy does not respond to KMS in the time allotted. If you see this
    #             connection error code repeatedly, notify your external key store proxy vendor.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION</code> — The Amazon VPC
    #             endpoint service configuration doesn't conform to the requirements for an KMS external
    #             key store.</p>
    #                  <ul>
    #                     <li>
    #                        <p>The VPC endpoint service must be an endpoint service for interface endpoints in the caller's Amazon Web Services account.</p>
    #                     </li>
    #                     <li>
    #                        <p>It must have a network load balancer (NLB) connected to at least two subnets, each in a different Availability Zone.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>Allow principals</code> list must include
    #   	         the KMS service principal for the Region, <code>cks.kms.<region>.amazonaws.com</code>,
    #   	         such as <code>cks.kms.us-east-1.amazonaws.com</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>It must <i>not</i> require <a href="https://docs.aws.amazon.com/vpc/latest/privatelink/create-endpoint-service.html">acceptance</a> of connection requests.</p>
    #                     </li>
    #                     <li>
    #                        <p>It must have a private DNS name. The private DNS name for an external key store with <code>VPC_ENDPOINT_SERVICE</code> connectivity
    #   	       must be unique in its Amazon Web Services Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>The domain of the private DNS name must have a <a href="https://docs.aws.amazon.com/vpc/latest/privatelink/verify-domains.html">verification status</a> of
    #   	         <code>verified</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html">TLS certificate</a> specifies the private DNS hostname at which the endpoint is reachable.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND</code> — KMS can't find the VPC
    #             endpoint service that it uses to communicate with the external key store proxy. Verify
    #             that the <code>XksProxyVpcEndpointServiceName</code> is correct and the KMS service
    #             principal has service consumer permissions on the Amazon VPC endpoint service.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INVALID_CREDENTIALS", "CLUSTER_NOT_FOUND", "NETWORK_ERRORS", "INTERNAL_ERROR", "INSUFFICIENT_CLOUDHSM_HSMS", "USER_LOCKED_OUT", "USER_NOT_FOUND", "USER_LOGGED_IN", "SUBNET_NOT_FOUND", "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET", "XKS_PROXY_ACCESS_DENIED", "XKS_PROXY_NOT_REACHABLE", "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND", "XKS_PROXY_INVALID_RESPONSE", "XKS_PROXY_INVALID_CONFIGURATION", "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION", "XKS_PROXY_TIMED_OUT", "XKS_PROXY_INVALID_TLS_CONFIGURATION"]
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the custom key store was created.</p>
    #   @return [Time]
    # @!attribute custom_key_store_type
    #   <p>Indicates the type of the custom key store. <code>AWS_CLOUDHSM</code> indicates a custom
    #         key store backed by an CloudHSM cluster. <code>EXTERNAL_KEY_STORE</code> indicates a custom key
    #         store backed by an external key store proxy and external key manager outside of Amazon Web Services.</p>
    #   Enum, one of: ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   @return [String]
    # @!attribute xks_proxy_configuration
    #   <p>Configuration settings for the external key store proxy (XKS proxy). The external key
    #         store proxy translates KMS requests into a format that your external key manager can
    #         understand. The proxy configuration includes connection information that KMS
    #         requires.</p>
    #            <p>This field appears only when the <code>CustomKeyStoreType</code> is
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #   @return [XksProxyConfigurationType]
    CustomKeyStoresListEntry = ::Struct.new(
      :custom_key_store_id,
      :custom_key_store_name,
      :cloud_hsm_cluster_id,
      :trust_anchor_certificate,
      :connection_state,
      :connection_error_code,
      :creation_date,
      :custom_key_store_type,
      :xks_proxy_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomerMasterKeySpec
    module CustomerMasterKeySpec
      # No documentation available.
      RSA_2048 = "RSA_2048"

      # No documentation available.
      RSA_3072 = "RSA_3072"

      # No documentation available.
      RSA_4096 = "RSA_4096"

      # No documentation available.
      ECC_NIST_P256 = "ECC_NIST_P256"

      # No documentation available.
      ECC_NIST_P384 = "ECC_NIST_P384"

      # No documentation available.
      ECC_NIST_P521 = "ECC_NIST_P521"

      # No documentation available.
      ECC_SECG_P256_K1 = "ECC_SECG_P256K1"

      # No documentation available.
      SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT"

      # No documentation available.
      HMAC_224 = "HMAC_224"

      # No documentation available.
      HMAC_256 = "HMAC_256"

      # No documentation available.
      HMAC_384 = "HMAC_384"

      # No documentation available.
      HMAC_512 = "HMAC_512"

      # No documentation available.
      SM2 = "SM2"
    end

    # Includes enum constants for DataKeyPairSpec
    module DataKeyPairSpec
      # No documentation available.
      RSA_2048 = "RSA_2048"

      # No documentation available.
      RSA_3072 = "RSA_3072"

      # No documentation available.
      RSA_4096 = "RSA_4096"

      # No documentation available.
      ECC_NIST_P256 = "ECC_NIST_P256"

      # No documentation available.
      ECC_NIST_P384 = "ECC_NIST_P384"

      # No documentation available.
      ECC_NIST_P521 = "ECC_NIST_P521"

      # No documentation available.
      ECC_SECG_P256_K1 = "ECC_SECG_P256K1"

      # No documentation available.
      SM2 = "SM2"
    end

    # Includes enum constants for DataKeySpec
    module DataKeySpec
      # No documentation available.
      AES_256 = "AES_256"

      # No documentation available.
      AES_128 = "AES_128"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [Array<String>] :grant_tokens
    #   @option params [String] :key_id
    #   @option params [String] :encryption_algorithm
    #   @option params [RecipientInfo] :recipient
    #   @option params [Boolean] :dry_run
    # @!attribute ciphertext_blob
    #   <p>Ciphertext to be decrypted. The blob includes metadata.</p>
    #   @return [String]
    # @!attribute encryption_context
    #   <p>Specifies the encryption context to use when decrypting the data.
    #         An encryption context is valid only for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> with a symmetric encryption KMS key. The standard asymmetric encryption algorithms and HMAC algorithms that KMS uses do not support an encryption context.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens. </p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute key_id
    #   <p>Specifies the KMS key that KMS uses to decrypt the ciphertext.</p>
    #            <p>Enter a key ID of the KMS key that was used to encrypt the ciphertext. If you identify a
    #         different KMS key, the <code>Decrypt</code> operation throws an
    #           <code>IncorrectKeyException</code>.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. If you used a symmetric encryption KMS key, KMS can get the KMS key from metadata that
    #         it adds to the symmetric ciphertext blob. However, it is always recommended as a best
    #         practice. This practice ensures that you use the KMS key that you intend.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute encryption_algorithm
    #   <p>Specifies the encryption algorithm that will be used to decrypt the ciphertext. Specify
    #         the same algorithm that was used to encrypt the data. If you specify a different algorithm,
    #         the <code>Decrypt</code> operation fails.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the only supported
    #         algorithm that is valid for symmetric encryption KMS keys.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-concepts.html#term-attestdoc">attestation
    #           document</a> from an Amazon Web Services Nitro enclave and the encryption algorithm to use with the
    #         enclave's public key. The only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves. To include this
    #         parameter, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
    #            <p>When you use this parameter, instead of returning the plaintext data, KMS encrypts the
    #         plaintext data with the public key in the attestation document, and returns the resulting
    #         ciphertext in the <code>CiphertextForRecipient</code> field in the response. This ciphertext
    #         can be decrypted only with the private key in the enclave. The <code>Plaintext</code> field in
    #         the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [RecipientInfo]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    DecryptInput = ::Struct.new(
      :ciphertext_blob,
      :encryption_context,
      :grant_tokens,
      :key_id,
      :encryption_algorithm,
      :recipient,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :plaintext
    #   @option params [String] :encryption_algorithm
    #   @option params [String] :ciphertext_for_recipient
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that was used to decrypt the ciphertext.</p>
    #   @return [String]
    # @!attribute plaintext
    #   <p>Decrypted plaintext data. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #            <p>If the response includes the <code>CiphertextForRecipient</code> field, the
    #           <code>Plaintext</code> field is null or empty.</p>
    #   @return [String]
    # @!attribute encryption_algorithm
    #   <p>The encryption algorithm that was used to decrypt the ciphertext.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute ciphertext_for_recipient
    #   <p>The plaintext data encrypted with the public key in the attestation document. </p>
    #            <p>This field is included in the response only when the <code>Recipient</code> parameter in
    #         the request includes a valid attestation document from an Amazon Web Services Nitro enclave.
    #         For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    DecryptOutput = ::Struct.new(
      :key_id,
      :plaintext,
      :encryption_algorithm,
      :ciphertext_for_recipient,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::DecryptOutput "\
          "key_id=#{key_id || 'nil'}, "\
          "plaintext=\"[SENSITIVE]\", "\
          "encryption_algorithm=#{encryption_algorithm || 'nil'}, "\
          "ciphertext_for_recipient=#{ciphertext_for_recipient || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :alias_name
    # @!attribute alias_name
    #   <p>The alias to be deleted. The alias name must begin with <code>alias/</code> followed by
    #         the alias name, such as <code>alias/ExampleAlias</code>.</p>
    #   @return [String]
    DeleteAliasInput = ::Struct.new(
      :alias_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DeleteAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    # @!attribute custom_key_store_id
    #   <p>Enter the ID of the custom key store you want to delete. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #   @return [String]
    DeleteCustomKeyStoreInput = ::Struct.new(
      :custom_key_store_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DeleteCustomKeyStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies the KMS key from which you are deleting imported key material. The
    #           <code>Origin</code> of the KMS key must be <code>EXTERNAL</code>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    DeleteImportedKeyMaterialInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DeleteImportedKeyMaterialOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The system timed out while trying to fulfill the request. You can retry the
    #       request.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    DependencyTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    #   @option params [String] :custom_key_store_name
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    # @!attribute custom_key_store_id
    #   <p>Gets only information about the specified custom key store. Enter the key store ID.</p>
    #            <p>By default, this operation gets information about all custom key stores in the account and
    #         Region. To limit the output to a particular custom key store, provide either the
    #           <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
    #         both.</p>
    #   @return [String]
    # @!attribute custom_key_store_name
    #   <p>Gets only information about the specified custom key store. Enter the friendly name of the
    #         custom key store.</p>
    #            <p>By default, this operation gets information about all custom key stores in the account and
    #         Region. To limit the output to a particular custom key store, provide either the
    #           <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
    #         both.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    DescribeCustomKeyStoresInput = ::Struct.new(
      :custom_key_store_id,
      :custom_key_store_name,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<CustomKeyStoresListEntry>] :custom_key_stores
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute custom_key_stores
    #   <p>Contains metadata about each custom key store.</p>
    #   @return [Array<CustomKeyStoresListEntry>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    DescribeCustomKeyStoresOutput = ::Struct.new(
      :custom_key_stores,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Array<String>] :grant_tokens
    # @!attribute key_id
    #   <p>Describes the specified KMS key. </p>
    #            <p>If you specify a predefined Amazon Web Services alias (an Amazon Web Services alias with no key ID), KMS associates
    #         the alias with an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html##aws-managed-cmk">Amazon Web Services managed key</a> and returns its
    #           <code>KeyId</code> and <code>Arn</code> in the response.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    DescribeKeyInput = ::Struct.new(
      :key_id,
      :grant_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [KeyMetadata] :key_metadata
    # @!attribute key_metadata
    #   <p>Metadata associated with the key.</p>
    #   @return [KeyMetadata]
    DescribeKeyOutput = ::Struct.new(
      :key_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies the KMS key to disable.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    DisableKeyInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DisableKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies a symmetric encryption KMS key. You cannot enable or disable automatic rotation
    #         of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC
    #           KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    DisableKeyRotationInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DisableKeyRotationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified KMS key is not enabled.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    DisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    # @!attribute custom_key_store_id
    #   <p>Enter the ID of the custom key store you want to disconnect. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #   @return [String]
    DisconnectCustomKeyStoreInput = ::Struct.new(
      :custom_key_store_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    DisconnectCustomKeyStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request was rejected because the DryRun parameter was specified. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    DryRunOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies the KMS key to enable.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    EnableKeyInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    EnableKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Identifies a symmetric encryption KMS key. You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    EnableKeyRotationInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    EnableKeyRotationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :plaintext
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [Array<String>] :grant_tokens
    #   @option params [String] :encryption_algorithm
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Identifies the KMS key to use in the encryption operation. The KMS key must have a
    #           <code>KeyUsage</code> of <code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> of
    #         a KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute plaintext
    #   <p>Data to be encrypted.</p>
    #   @return [String]
    # @!attribute encryption_context
    #   <p>Specifies the encryption context that will be used to encrypt the data.
    #         An encryption context is valid only for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> with a symmetric encryption KMS key. The standard asymmetric encryption algorithms and HMAC algorithms that KMS uses do not support an encryption context. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to encrypt the plaintext message.
    #         The algorithm must be compatible with the KMS key that you specify.</p>
    #            <p>This parameter is required only for asymmetric KMS keys. The default value,
    #           <code>SYMMETRIC_DEFAULT</code>, is the algorithm used for symmetric encryption KMS keys. If
    #         you are using an asymmetric KMS key, we recommend RSAES_OAEP_SHA_256.</p>
    #            <p>The SM2PKE algorithm is only available in China Regions.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    EncryptInput = ::Struct.new(
      :key_id,
      :plaintext,
      :encryption_context,
      :grant_tokens,
      :encryption_algorithm,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::EncryptInput "\
          "key_id=#{key_id || 'nil'}, "\
          "plaintext=\"[SENSITIVE]\", "\
          "encryption_context=#{encryption_context || 'nil'}, "\
          "grant_tokens=#{grant_tokens || 'nil'}, "\
          "encryption_algorithm=#{encryption_algorithm || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [String] :key_id
    #   @option params [String] :encryption_algorithm
    # @!attribute ciphertext_blob
    #   <p>The encrypted plaintext. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that was used to encrypt the plaintext.</p>
    #   @return [String]
    # @!attribute encryption_algorithm
    #   <p>The encryption algorithm that was used to encrypt the plaintext.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    EncryptOutput = ::Struct.new(
      :ciphertext_blob,
      :key_id,
      :encryption_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionAlgorithmSpec
    module EncryptionAlgorithmSpec
      # No documentation available.
      SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT"

      # No documentation available.
      RSAES_OAEP_SHA_1 = "RSAES_OAEP_SHA_1"

      # No documentation available.
      RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256"

      # No documentation available.
      SM2_PKE = "SM2PKE"
    end

    # Includes enum constants for ExpirationModelType
    module ExpirationModelType
      # No documentation available.
      KEY_MATERIAL_EXPIRES = "KEY_MATERIAL_EXPIRES"

      # No documentation available.
      KEY_MATERIAL_DOES_NOT_EXPIRE = "KEY_MATERIAL_DOES_NOT_EXPIRE"
    end

    # <p>The request was rejected because the specified import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new
    #       public key to encrypt the key material, and then try the request again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    ExpiredImportTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [Integer] :number_of_bytes
    #   @option params [String] :key_spec
    #   @option params [Array<String>] :grant_tokens
    #   @option params [RecipientInfo] :recipient
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the data key. You cannot specify
    #         an asymmetric KMS key or a KMS key in a custom key store. To get the type and origin of your
    #         KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the data key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute number_of_bytes
    #   <p>Specifies the length of the data key in bytes. For example, use the value 64 to generate a
    #         512-bit data key (64 bytes is 512 bits). For 128-bit (16-byte) and 256-bit (32-byte) data
    #         keys, use the <code>KeySpec</code> parameter.</p>
    #            <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
    #         parameter (but not both) in every <code>GenerateDataKey</code> request.</p>
    #   @return [Integer]
    # @!attribute key_spec
    #   <p>Specifies the length of the data key. Use <code>AES_128</code> to generate a 128-bit
    #         symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
    #            <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
    #         parameter (but not both) in every <code>GenerateDataKey</code> request.</p>
    #   Enum, one of: ["AES_256", "AES_128"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave and the encryption algorithm to use with the enclave's public key. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves. To include this
    #         parameter, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
    #            <p>When you use this parameter, instead of returning the plaintext data key, KMS encrypts
    #         the plaintext data key under the public key in the attestation document, and returns the
    #         resulting ciphertext in the <code>CiphertextForRecipient</code> field in the response. This
    #         ciphertext can be decrypted only with the private key in the enclave. The
    #           <code>CiphertextBlob</code> field in the response contains a copy of the data key encrypted
    #         under the KMS key specified by the <code>KeyId</code> parameter. The <code>Plaintext</code>
    #         field in the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [RecipientInfo]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    GenerateDataKeyInput = ::Struct.new(
      :key_id,
      :encryption_context,
      :number_of_bytes,
      :key_spec,
      :grant_tokens,
      :recipient,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [String] :plaintext
    #   @option params [String] :key_id
    #   @option params [String] :ciphertext_for_recipient
    # @!attribute ciphertext_blob
    #   <p>The encrypted copy of the data key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute plaintext
    #   <p>The plaintext data key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded. Use this data key to encrypt your data outside of
    #         KMS. Then, remove it from memory as soon as possible.</p>
    #            <p>If the response includes the <code>CiphertextForRecipient</code> field, the
    #           <code>Plaintext</code> field is null or empty.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that encrypted the data key.</p>
    #   @return [String]
    # @!attribute ciphertext_for_recipient
    #   <p>The plaintext data key encrypted with the public key from the Nitro enclave. This
    #         ciphertext can be decrypted only by using a private key in the Nitro enclave. </p>
    #            <p>This field is included in the response only when the <code>Recipient</code> parameter in
    #         the request includes a valid attestation document from an Amazon Web Services Nitro enclave.
    #         For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    GenerateDataKeyOutput = ::Struct.new(
      :ciphertext_blob,
      :plaintext,
      :key_id,
      :ciphertext_for_recipient,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::GenerateDataKeyOutput "\
          "ciphertext_blob=#{ciphertext_blob || 'nil'}, "\
          "plaintext=\"[SENSITIVE]\", "\
          "key_id=#{key_id || 'nil'}, "\
          "ciphertext_for_recipient=#{ciphertext_for_recipient || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [String] :key_id
    #   @option params [String] :key_pair_spec
    #   @option params [Array<String>] :grant_tokens
    #   @option params [RecipientInfo] :recipient
    #   @option params [Boolean] :dry_run
    # @!attribute encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the private key in the
    #         data key pair.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the private key in the data key
    #         pair. You cannot specify an asymmetric KMS key or a KMS key in a custom key store. To get the
    #         type and origin of your KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute key_pair_spec
    #   <p>Determines the type of data key pair that is generated. </p>
    #            <p>The KMS rule that restricts the use of asymmetric RSA and SM2 KMS keys to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC KMS keys only to sign and verify, are not effective on data key pairs, which are used outside of KMS. The SM2 key spec is only available in China Regions.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave and the encryption algorithm to use with the enclave's public key. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves. To include this
    #         parameter, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
    #            <p>When you use this parameter, instead of returning a plaintext copy of the private data
    #         key, KMS encrypts the plaintext private data key under the public key in the attestation
    #         document, and returns the resulting ciphertext in the <code>CiphertextForRecipient</code>
    #         field in the response. This ciphertext can be decrypted only with the private key in the
    #         enclave. The <code>CiphertextBlob</code> field in the response contains a copy of the private
    #         data key encrypted under the KMS key specified by the <code>KeyId</code> parameter. The
    #           <code>PrivateKeyPlaintext</code> field in the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [RecipientInfo]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    GenerateDataKeyPairInput = ::Struct.new(
      :encryption_context,
      :key_id,
      :key_pair_spec,
      :grant_tokens,
      :recipient,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :private_key_ciphertext_blob
    #   @option params [String] :private_key_plaintext
    #   @option params [String] :public_key
    #   @option params [String] :key_id
    #   @option params [String] :key_pair_spec
    #   @option params [String] :ciphertext_for_recipient
    # @!attribute private_key_ciphertext_blob
    #   <p>The encrypted copy of the private key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute private_key_plaintext
    #   <p>The plaintext copy of the private key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #            <p>If the response includes the <code>CiphertextForRecipient</code> field, the
    #           <code>PrivateKeyPlaintext</code> field is null or empty.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public key (in plaintext). When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that encrypted the private key.</p>
    #   @return [String]
    # @!attribute key_pair_spec
    #   <p>The type of data key pair that was generated.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #   @return [String]
    # @!attribute ciphertext_for_recipient
    #   <p>The plaintext private data key encrypted with the public key from the Nitro enclave. This
    #         ciphertext can be decrypted only by using a private key in the Nitro enclave. </p>
    #            <p>This field is included in the response only when the <code>Recipient</code> parameter in
    #         the request includes a valid attestation document from an Amazon Web Services Nitro enclave.
    #         For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    GenerateDataKeyPairOutput = ::Struct.new(
      :private_key_ciphertext_blob,
      :private_key_plaintext,
      :public_key,
      :key_id,
      :key_pair_spec,
      :ciphertext_for_recipient,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::GenerateDataKeyPairOutput "\
          "private_key_ciphertext_blob=#{private_key_ciphertext_blob || 'nil'}, "\
          "private_key_plaintext=\"[SENSITIVE]\", "\
          "public_key=#{public_key || 'nil'}, "\
          "key_id=#{key_id || 'nil'}, "\
          "key_pair_spec=#{key_pair_spec || 'nil'}, "\
          "ciphertext_for_recipient=#{ciphertext_for_recipient || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [String] :key_id
    #   @option params [String] :key_pair_spec
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the private key in the
    #         data key pair.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the private key in the data key
    #         pair. You cannot specify an asymmetric KMS key or a KMS key in a custom key store. To get the
    #         type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute key_pair_spec
    #   <p>Determines the type of data key pair that is generated.</p>
    #            <p>The KMS rule that restricts the use of asymmetric RSA and SM2 KMS keys to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC KMS keys only to sign and verify, are not effective on data key pairs, which are used outside of KMS. The SM2 key spec is only available in China Regions.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    GenerateDataKeyPairWithoutPlaintextInput = ::Struct.new(
      :encryption_context,
      :key_id,
      :key_pair_spec,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :private_key_ciphertext_blob
    #   @option params [String] :public_key
    #   @option params [String] :key_id
    #   @option params [String] :key_pair_spec
    # @!attribute private_key_ciphertext_blob
    #   <p>The encrypted copy of the private key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public key (in plaintext). When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that encrypted the private key.</p>
    #   @return [String]
    # @!attribute key_pair_spec
    #   <p>The type of data key pair that was generated.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #   @return [String]
    GenerateDataKeyPairWithoutPlaintextOutput = ::Struct.new(
      :private_key_ciphertext_blob,
      :public_key,
      :key_id,
      :key_pair_spec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Hash<String, String>] :encryption_context
    #   @option params [String] :key_spec
    #   @option params [Integer] :number_of_bytes
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Specifies the symmetric encryption KMS key that encrypts the data key. You cannot specify
    #         an asymmetric KMS key or a KMS key in a custom key store. To get the type and origin of your
    #         KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute encryption_context
    #   <p>Specifies the encryption context that will be used when encrypting the data key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute key_spec
    #   <p>The length of the data key. Use <code>AES_128</code> to generate a 128-bit symmetric key,
    #         or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
    #   Enum, one of: ["AES_256", "AES_128"]
    #   @return [String]
    # @!attribute number_of_bytes
    #   <p>The length of the data key in bytes. For example, use the value 64 to generate a 512-bit
    #         data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys),
    #         we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
    #   @return [Integer]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    GenerateDataKeyWithoutPlaintextInput = ::Struct.new(
      :key_id,
      :encryption_context,
      :key_spec,
      :number_of_bytes,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [String] :key_id
    # @!attribute ciphertext_blob
    #   <p>The encrypted data key. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that encrypted the data key.</p>
    #   @return [String]
    GenerateDataKeyWithoutPlaintextOutput = ::Struct.new(
      :ciphertext_blob,
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    #   @option params [String] :key_id
    #   @option params [String] :mac_algorithm
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute message
    #   <p>The message to be hashed. Specify a message of up to 4,096 bytes. </p>
    #            <p>
    #               <code>GenerateMac</code> and <a>VerifyMac</a> do not provide special handling
    #         for message digests. If you generate an HMAC for a hash digest of a message, you must verify
    #         the HMAC of the same hash digest.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The HMAC KMS key to use in the operation. The MAC algorithm computes the HMAC for the
    #         message and the key as described in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #            <p>To identify an HMAC KMS key, use the <a>DescribeKey</a> operation and see the
    #           <code>KeySpec</code> field in the response.</p>
    #   @return [String]
    # @!attribute mac_algorithm
    #   <p>The MAC algorithm used in the operation.</p>
    #            <p> The algorithm must be compatible with the HMAC KMS key that you specify. To find the MAC
    #         algorithms that your HMAC KMS key supports, use the <a>DescribeKey</a> operation
    #         and see the <code>MacAlgorithms</code> field in the <code>DescribeKey</code> response.</p>
    #   Enum, one of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    GenerateMacInput = ::Struct.new(
      :message,
      :key_id,
      :mac_algorithm,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::GenerateMacInput "\
          "message=\"[SENSITIVE]\", "\
          "key_id=#{key_id || 'nil'}, "\
          "mac_algorithm=#{mac_algorithm || 'nil'}, "\
          "grant_tokens=#{grant_tokens || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :mac
    #   @option params [String] :mac_algorithm
    #   @option params [String] :key_id
    # @!attribute mac
    #   <p>The hash-based message authentication code (HMAC) that was generated for the specified
    #         message, HMAC KMS key, and MAC algorithm.</p>
    #            <p>This is the standard, raw HMAC defined in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #   @return [String]
    # @!attribute mac_algorithm
    #   <p>The MAC algorithm that was used to generate the HMAC.</p>
    #   Enum, one of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   @return [String]
    # @!attribute key_id
    #   <p>The HMAC KMS key used in the operation.</p>
    #   @return [String]
    GenerateMacOutput = ::Struct.new(
      :mac,
      :mac_algorithm,
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :number_of_bytes
    #   @option params [String] :custom_key_store_id
    #   @option params [RecipientInfo] :recipient
    # @!attribute number_of_bytes
    #   <p>The length of the random byte string. This parameter is required.</p>
    #   @return [Integer]
    # @!attribute custom_key_store_id
    #   <p>Generates the random byte string in the CloudHSM cluster that is associated with the
    #         specified CloudHSM key store. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #            <p>External key store IDs are not valid for this parameter. If you specify the ID of an
    #         external key store, <code>GenerateRandom</code> throws an
    #           <code>UnsupportedOperationException</code>.</p>
    #   @return [String]
    # @!attribute recipient
    #   <p>A signed <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave-how.html#term-attestdoc">attestation document</a> from
    #         an Amazon Web Services Nitro enclave and the encryption algorithm to use with the enclave's public key. The
    #         only valid encryption algorithm is <code>RSAES_OAEP_SHA_256</code>. </p>
    #            <p>This parameter only supports attestation documents for Amazon Web Services Nitro Enclaves. To include this
    #         parameter, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK.</p>
    #            <p>When you use this parameter, instead of returning plaintext bytes, KMS encrypts the
    #         plaintext bytes under the public key in the attestation document, and returns the resulting
    #         ciphertext in the <code>CiphertextForRecipient</code> field in the response. This ciphertext
    #         can be decrypted only with the private key in the enclave. The <code>Plaintext</code> field in
    #         the response is null or empty.</p>
    #            <p>For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [RecipientInfo]
    GenerateRandomInput = ::Struct.new(
      :number_of_bytes,
      :custom_key_store_id,
      :recipient,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :plaintext
    #   @option params [String] :ciphertext_for_recipient
    # @!attribute plaintext
    #   <p>The random byte string. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #            <p>If the response includes the <code>CiphertextForRecipient</code> field, the
    #           <code>Plaintext</code> field is null or empty.</p>
    #   @return [String]
    # @!attribute ciphertext_for_recipient
    #   <p>The plaintext random bytes encrypted with the public key from the Nitro enclave. This
    #         ciphertext can be decrypted only by using a private key in the Nitro enclave. </p>
    #            <p>This field is included in the response only when the <code>Recipient</code> parameter in
    #         the request includes a valid attestation document from an Amazon Web Services Nitro enclave.
    #         For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    GenerateRandomOutput = ::Struct.new(
      :plaintext,
      :ciphertext_for_recipient,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::GenerateRandomOutput "\
          "plaintext=\"[SENSITIVE]\", "\
          "ciphertext_for_recipient=#{ciphertext_for_recipient || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :policy_name
    # @!attribute key_id
    #   <p>Gets the key policy for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Specifies the name of the key policy. The only valid name is <code>default</code>. To get
    #         the names of key policies, use <a>ListKeyPolicies</a>.</p>
    #   @return [String]
    GetKeyPolicyInput = ::Struct.new(
      :key_id,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :policy
    # @!attribute policy
    #   <p>A key policy document in JSON format.</p>
    #   @return [String]
    GetKeyPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    # @!attribute key_id
    #   <p>Gets the rotation status for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    GetKeyRotationStatusInput = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :key_rotation_enabled (false)
    # @!attribute key_rotation_enabled
    #   <p>A Boolean value that specifies whether key rotation is enabled.</p>
    #   @return [Boolean]
    GetKeyRotationStatusOutput = ::Struct.new(
      :key_rotation_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.key_rotation_enabled = false if self.key_rotation_enabled.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :wrapping_algorithm
    #   @option params [String] :wrapping_key_spec
    # @!attribute key_id
    #   <p>The identifier of the KMS key that will be associated with the imported key material. The
    #           <code>Origin</code> of the KMS key must be <code>EXTERNAL</code>.</p>
    #            <p>All KMS key types are supported, including multi-Region keys. However, you cannot import
    #         key material into a KMS key in a custom key store.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute wrapping_algorithm
    #   <p>The algorithm you will use with the RSA public key (<code>PublicKey</code>) in the
    #         response to protect your key material during import. For more information, see <a href="kms/latest/developerguide/importing-keys-get-public-key-and-token.html#select-wrapping-algorithm">Select a wrapping algorithm</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>For RSA_AES wrapping algorithms, you encrypt your key material with an AES key that you
    #         generate, then encrypt your AES key with the RSA public key from KMS. For RSAES wrapping
    #         algorithms, you encrypt your key material directly with the RSA public key from KMS.</p>
    #            <p>The wrapping algorithms that you can use depend on the type of key material that you are
    #         importing. To import an RSA private key, you must use an RSA_AES wrapping algorithm.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RSA_AES_KEY_WRAP_SHA_256</b> — Supported for
    #             wrapping RSA and ECC key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSA_AES_KEY_WRAP_SHA_1</b> — Supported for
    #             wrapping RSA and ECC key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_OAEP_SHA_256</b> — Supported for all types
    #             of key material, except RSA key material (private key).</p>
    #                  <p>You cannot use the RSAES_OAEP_SHA_256 wrapping algorithm with the RSA_2048 wrapping
    #             key spec to wrap ECC_NIST_P521 key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_OAEP_SHA_1</b> — Supported for all types of
    #             key material, except RSA key material (private key).</p>
    #                  <p>You cannot use the RSAES_OAEP_SHA_1 wrapping algorithm with the RSA_2048 wrapping key
    #             spec to wrap ECC_NIST_P521 key material.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RSAES_PKCS1_V1_5</b> (Deprecated) — As of October
    #             10, 2023, KMS does not support the RSAES_PKCS1_V1_5 wrapping algorithm.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["RSAES_PKCS1_V1_5", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "RSA_AES_KEY_WRAP_SHA_1", "RSA_AES_KEY_WRAP_SHA_256"]
    #   @return [String]
    # @!attribute wrapping_key_spec
    #   <p>The type of RSA public key to return in the response. You will use this wrapping key with
    #         the specified wrapping algorithm to protect your key material during import. </p>
    #            <p>Use the longest RSA wrapping key that is practical. </p>
    #            <p>You cannot use an RSA_2048 public key to directly wrap an ECC_NIST_P521 private key.
    #         Instead, use an RSA_AES wrapping algorithm or choose a longer RSA public key.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096"]
    #   @return [String]
    GetParametersForImportInput = ::Struct.new(
      :key_id,
      :wrapping_algorithm,
      :wrapping_key_spec,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :import_token
    #   @option params [String] :public_key
    #   @option params [Time] :parameters_valid_to
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key to use in a subsequent <a>ImportKeyMaterial</a> request. This is the same KMS key specified in the <code>GetParametersForImport</code>
    #         request.</p>
    #   @return [String]
    # @!attribute import_token
    #   <p>The import token to send in a subsequent <a>ImportKeyMaterial</a>
    #         request.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public key to use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>.</p>
    #   @return [String]
    # @!attribute parameters_valid_to
    #   <p>The time at which the import token and public key are no longer valid. After this time,
    #         you cannot use them to make an <a>ImportKeyMaterial</a> request and you must send
    #         another <code>GetParametersForImport</code> request to get new ones.</p>
    #   @return [Time]
    GetParametersForImportOutput = ::Struct.new(
      :key_id,
      :import_token,
      :public_key,
      :parameters_valid_to,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::GetParametersForImportOutput "\
          "key_id=#{key_id || 'nil'}, "\
          "import_token=#{import_token || 'nil'}, "\
          "public_key=\"[SENSITIVE]\", "\
          "parameters_valid_to=#{parameters_valid_to || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Array<String>] :grant_tokens
    # @!attribute key_id
    #   <p>Identifies the asymmetric KMS key that includes the public key.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    GetPublicKeyInput = ::Struct.new(
      :key_id,
      :grant_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :public_key
    #   @option params [String] :customer_master_key_spec
    #   @option params [String] :key_spec
    #   @option params [String] :key_usage
    #   @option params [Array<String>] :encryption_algorithms
    #   @option params [Array<String>] :signing_algorithms
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the asymmetric KMS key from which the public key was
    #         downloaded.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The exported public key. </p>
    #            <p>The value is a DER-encoded X.509 public key, also known as
    #           <code>SubjectPublicKeyInfo</code> (SPKI), as defined in <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #            <p></p>
    #   @return [String]
    # @!attribute customer_master_key_spec
    #   <p>Instead, use the <code>KeySpec</code> field in the <code>GetPublicKey</code>
    #         response.</p>
    #            <p>The <code>KeySpec</code> and <code>CustomerMasterKeySpec</code> fields have the same
    #         value. We recommend that you use the <code>KeySpec</code> field in your code. However, to
    #         avoid breaking changes, KMS supports both fields.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @deprecated
    #     This field has been deprecated. Instead, use the KeySpec field.
    #   @return [String]
    # @!attribute key_spec
    #   <p>The type of the of the public key that was downloaded.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @return [String]
    # @!attribute key_usage
    #   <p>The permitted use of the public key. Valid values are <code>ENCRYPT_DECRYPT</code> or
    #           <code>SIGN_VERIFY</code>. </p>
    #            <p>This information is critical. If a public key with <code>SIGN_VERIFY</code> key usage
    #         encrypts data outside of KMS, the ciphertext cannot be decrypted. </p>
    #   Enum, one of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   @return [String]
    # @!attribute encryption_algorithms
    #   <p>The encryption algorithms that KMS supports for this key. </p>
    #            <p>This information is critical. If a public key encrypts data outside of KMS by using an
    #         unsupported encryption algorithm, the ciphertext cannot be decrypted. </p>
    #            <p>This field appears in the response only when the <code>KeyUsage</code> of the public key
    #         is <code>ENCRYPT_DECRYPT</code>.</p>
    #   @return [Array<String>]
    # @!attribute signing_algorithms
    #   <p>The signing algorithms that KMS supports for this key.</p>
    #            <p>This field appears in the response only when the <code>KeyUsage</code> of the public key
    #         is <code>SIGN_VERIFY</code>.</p>
    #   @return [Array<String>]
    GetPublicKeyOutput = ::Struct.new(
      :key_id,
      :public_key,
      :customer_master_key_spec,
      :key_spec,
      :key_usage,
      :encryption_algorithms,
      :signing_algorithms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Use this structure to allow <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> in the grant only when the operation request
    #       includes the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">encryption context</a>. </p>
    #          <p>KMS applies the grant constraints only to cryptographic operations that support an
    #       encryption context, that is, all cryptographic operations with a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#symmetric-cmks">symmetric KMS key</a>. Grant
    #       constraints are not applied to operations that do not support an encryption context, such as
    #       cryptographic operations with asymmetric KMS keys and management operations, such as <a>DescribeKey</a> or <a>RetireGrant</a>.</p>
    #          <important>
    #             <p>In a cryptographic operation, the encryption context in the decryption operation must be
    #         an exact, case-sensitive match for the keys and values in the encryption context of the
    #         encryption operation. Only the order of the pairs can vary.</p>
    #             <p>However, in a grant constraint, the key in each key-value pair is not case sensitive,
    #         but the value is case sensitive.</p>
    #             <p>To avoid confusion, do not use multiple encryption context pairs that differ only by
    #         case. To require a fully case-sensitive encryption context, use the
    #           <code>kms:EncryptionContext:</code> and <code>kms:EncryptionContextKeys</code> conditions
    #         in an IAM or key policy. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context">kms:EncryptionContext:</a> in the <i>
    #                   <i>Key Management Service Developer Guide</i>
    #                </i>.</p>
    #          </important>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, String>] :encryption_context_subset
    #   @option params [Hash<String, String>] :encryption_context_equals
    # @!attribute encryption_context_subset
    #   <p>A list of key-value pairs that must be included in the encryption context of the
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operation</a> request. The grant allows the cryptographic operation only when the encryption
    #         context in the request includes the key-value pairs specified in this constraint, although it
    #         can include additional key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_context_equals
    #   <p>A list of key-value pairs that must match the encryption context in the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operation</a>
    #         request. The grant allows the operation only when the encryption context in the request is the
    #         same as the encryption context specified in this constraint.</p>
    #   @return [Hash<String, String>]
    GrantConstraints = ::Struct.new(
      :encryption_context_subset,
      :encryption_context_equals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a grant.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :grant_id
    #   @option params [String] :name
    #   @option params [Time] :creation_date
    #   @option params [String] :grantee_principal
    #   @option params [String] :retiring_principal
    #   @option params [String] :issuing_account
    #   @option params [Array<String>] :operations
    #   @option params [GrantConstraints] :constraints
    # @!attribute key_id
    #   <p>The unique identifier for the KMS key to which the grant applies.</p>
    #   @return [String]
    # @!attribute grant_id
    #   <p>The unique identifier for the grant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name that identifies the grant. If a name was provided in the <a>CreateGrant</a> request, that name is returned. Otherwise this value is null.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the grant was created.</p>
    #   @return [Time]
    # @!attribute grantee_principal
    #   <p>The identity that gets the permissions in the grant.</p>
    #            <p>The <code>GranteePrincipal</code> field in the <code>ListGrants</code> response usually contains the
    #           user or role designated as the grantee principal in the grant. However, when the grantee
    #           principal in the grant is an Amazon Web Services service, the <code>GranteePrincipal</code> field contains
    #           the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">service
    #             principal</a>, which might represent several different grantee principals.</p>
    #   @return [String]
    # @!attribute retiring_principal
    #   <p>The principal that can retire the grant.</p>
    #   @return [String]
    # @!attribute issuing_account
    #   <p>The Amazon Web Services account under which the grant was issued.</p>
    #   @return [String]
    # @!attribute operations
    #   <p>The list of operations permitted by the grant.</p>
    #   @return [Array<String>]
    # @!attribute constraints
    #   <p>A list of key-value pairs that must be present in the encryption context of certain
    #         subsequent operations that the grant allows.</p>
    #   @return [GrantConstraints]
    GrantListEntry = ::Struct.new(
      :key_id,
      :grant_id,
      :name,
      :creation_date,
      :grantee_principal,
      :retiring_principal,
      :issuing_account,
      :operations,
      :constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GrantOperation
    module GrantOperation
      # No documentation available.
      DECRYPT = "Decrypt"

      # No documentation available.
      ENCRYPT = "Encrypt"

      # No documentation available.
      GENERATE_DATA_KEY = "GenerateDataKey"

      # No documentation available.
      GENERATE_DATA_KEY_WITHOUT_PLAINTEXT = "GenerateDataKeyWithoutPlaintext"

      # No documentation available.
      RE_ENCRYPT_FROM = "ReEncryptFrom"

      # No documentation available.
      RE_ENCRYPT_TO = "ReEncryptTo"

      # No documentation available.
      SIGN = "Sign"

      # No documentation available.
      VERIFY = "Verify"

      # No documentation available.
      GET_PUBLIC_KEY = "GetPublicKey"

      # No documentation available.
      CREATE_GRANT = "CreateGrant"

      # No documentation available.
      RETIRE_GRANT = "RetireGrant"

      # No documentation available.
      DESCRIBE_KEY = "DescribeKey"

      # No documentation available.
      GENERATE_DATA_KEY_PAIR = "GenerateDataKeyPair"

      # No documentation available.
      GENERATE_DATA_KEY_PAIR_WITHOUT_PLAINTEXT = "GenerateDataKeyPairWithoutPlaintext"

      # No documentation available.
      GENERATE_MAC = "GenerateMac"

      # No documentation available.
      VERIFY_MAC = "VerifyMac"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :import_token
    #   @option params [String] :encrypted_key_material
    #   @option params [Time] :valid_to
    #   @option params [String] :expiration_model
    # @!attribute key_id
    #   <p>The identifier of the KMS key that will be associated with the imported key material. This
    #         must be the same KMS key specified in the <code>KeyID</code> parameter of the corresponding
    #           <a>GetParametersForImport</a> request. The <code>Origin</code> of the KMS key
    #         must be <code>EXTERNAL</code> and its <code>KeyState</code> must be
    #         <code>PendingImport</code>. </p>
    #            <p>The KMS key can be a symmetric encryption KMS key, HMAC KMS key, asymmetric encryption KMS
    #         key, or asymmetric signing KMS key, including a <a href="kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any supported
    #         type. You cannot perform this operation on a KMS key in a custom key store, or on a KMS key in
    #         a different Amazon Web Services account.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute import_token
    #   <p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained
    #         the public key that you used to encrypt the key material.</p>
    #   @return [String]
    # @!attribute encrypted_key_material
    #   <p>The encrypted key material to import. The key material must be encrypted under the public
    #         wrapping key that <a>GetParametersForImport</a> returned, using the wrapping
    #         algorithm that you specified in the same <code>GetParametersForImport</code> request.</p>
    #   @return [String]
    # @!attribute valid_to
    #   <p>The date and time when the imported key material expires. This parameter is required when
    #         the value of the <code>ExpirationModel</code> parameter is <code>KEY_MATERIAL_EXPIRES</code>.
    #         Otherwise it is not valid.</p>
    #            <p>The value of this parameter must be a future date and time. The maximum value is 365 days
    #         from the request date.</p>
    #            <p>When the key material expires, KMS deletes the key material from the KMS key. Without
    #         its key material, the KMS key is unusable. To use the KMS key in cryptographic operations, you
    #         must reimport the same key material.</p>
    #            <p>You cannot change the <code>ExpirationModel</code> or <code>ValidTo</code> values for the
    #         current import after the request completes. To change either value, you must delete (<a>DeleteImportedKeyMaterial</a>) and reimport the key material.</p>
    #   @return [Time]
    # @!attribute expiration_model
    #   <p>Specifies whether the key material expires. The default is
    #           <code>KEY_MATERIAL_EXPIRES</code>. For help with this choice, see <a href="https://docs.aws.amazon.com/en_us/kms/latest/developerguide/importing-keys.html#importing-keys-expiration">Setting an expiration time</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>When the value of <code>ExpirationModel</code> is <code>KEY_MATERIAL_EXPIRES</code>, you
    #         must specify a value for the <code>ValidTo</code> parameter. When value is
    #           <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must omit the <code>ValidTo</code>
    #         parameter.</p>
    #            <p>You cannot change the <code>ExpirationModel</code> or <code>ValidTo</code> values for the
    #         current import after the request completes. To change either value, you must reimport the key
    #         material.</p>
    #   Enum, one of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   @return [String]
    ImportKeyMaterialInput = ::Struct.new(
      :key_id,
      :import_token,
      :encrypted_key_material,
      :valid_to,
      :expiration_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    ImportKeyMaterialOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified KMS key cannot decrypt the data. The
    #         <code>KeyId</code> in a <a>Decrypt</a> request and the <code>SourceKeyId</code>
    #       in a <a>ReEncrypt</a> request must identify the same KMS key that was used to
    #       encrypt the ciphertext.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    IncorrectKeyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the key material in the request is, expired, invalid, or
    #       is not the same key material that was previously imported into this KMS key.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    IncorrectKeyMaterialException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the trust anchor certificate in the request to create an
    #       CloudHSM key store is not the trust anchor certificate for the specified CloudHSM cluster.</p>
    #          <p>When you <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr">initialize the CloudHSM cluster</a>, you create the trust anchor certificate and save it
    #       in the <code>customerCA.crt</code> file.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    IncorrectTrustAnchorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified alias name is not valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidAliasNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because a specified ARN, or an ARN in a key policy, is not
    #       valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>From the <a>Decrypt</a> or <a>ReEncrypt</a> operation, the request
    #       was rejected because the specified ciphertext, or additional authenticated data incorporated
    #       into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise
    #       invalid.</p>
    #          <p>From the <a>ImportKeyMaterial</a> operation, the request was rejected because
    #       KMS could not decrypt the encrypted (wrapped) key material. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidCiphertextException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidGrantIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified grant token is not valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidGrantTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the provided import token is invalid or is associated
    #       with a different KMS key.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidImportTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected for one of the following reasons: </p>
    #          <ul>
    #             <li>
    #                <p>The <code>KeyUsage</code> value of the KMS key is incompatible with the API
    #           operation.</p>
    #             </li>
    #             <li>
    #                <p>The encryption algorithm or signing algorithm specified for the operation is
    #           incompatible with the type of key material in the KMS key <code>(KeySpec</code>).</p>
    #             </li>
    #          </ul>
    #          <p>For encrypting, decrypting, re-encrypting, and generating data keys, the
    #         <code>KeyUsage</code> must be <code>ENCRYPT_DECRYPT</code>. For signing and verifying
    #       messages, the <code>KeyUsage</code> must be <code>SIGN_VERIFY</code>. For generating and
    #       verifying message authentication codes (MACs), the <code>KeyUsage</code> must be
    #         <code>GENERATE_VERIFY_MAC</code>. To find the <code>KeyUsage</code> of a KMS key, use the
    #         <a>DescribeKey</a> operation.</p>
    #          <p>To find the encryption or signing algorithms supported for a particular KMS key, use the
    #         <a>DescribeKey</a> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidKeyUsageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the marker that specifies where pagination should next
    #       begin is not valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    InvalidMarkerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because an internal exception occurred. The request can be
    #       retried.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    KMSInternalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the HMAC verification failed. HMAC verification fails
    #       when the HMAC computed by using the specified message, HMAC KMS key, and MAC algorithm does
    #       not match the HMAC specified in the request.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    KMSInvalidMacException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the signature verification failed. Signature verification
    #       fails when it cannot confirm that signature was produced by signing the specified message with
    #       the specified KMS key and signing algorithm.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    KMSInvalidSignatureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the state of the specified resource is not valid for this
    #       request.</p>
    #          <p>This exceptions means one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The key state of the KMS key is not compatible with the operation. </p>
    #                <p>To find the key state, use the <a>DescribeKey</a> operation. For more
    #           information about which key states are compatible with each KMS operation, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>For cryptographic operations on KMS keys in custom key stores, this exception
    #           represents a general failure with many possible causes. To identify the cause, see the
    #           error message that accompanies the exception.</p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    KMSInvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyEncryptionMechanism
    module KeyEncryptionMechanism
      # No documentation available.
      RSAES_OAEP_SHA_256 = "RSAES_OAEP_SHA_256"
    end

    # <p>Contains information about each entry in the key list.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :key_arn
    # @!attribute key_id
    #   <p>Unique identifier of the key.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>ARN of the key.</p>
    #   @return [String]
    KeyListEntry = ::Struct.new(
      :key_id,
      :key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyManagerType
    module KeyManagerType
      # No documentation available.
      AWS = "AWS"

      # No documentation available.
      CUSTOMER = "CUSTOMER"
    end

    # <p>Contains metadata about a KMS key.</p>
    #          <p>This data type is used as a response element for the <a>CreateKey</a>, <a>DescribeKey</a>, and <a>ReplicateKey</a> operations.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :aws_account_id
    #   @option params [String] :key_id
    #   @option params [String] :arn
    #   @option params [Time] :creation_date
    #   @option params [Boolean] :enabled (false)
    #   @option params [String] :description
    #   @option params [String] :key_usage
    #   @option params [String] :key_state
    #   @option params [Time] :deletion_date
    #   @option params [Time] :valid_to
    #   @option params [String] :origin
    #   @option params [String] :custom_key_store_id
    #   @option params [String] :cloud_hsm_cluster_id
    #   @option params [String] :expiration_model
    #   @option params [String] :key_manager
    #   @option params [String] :customer_master_key_spec
    #   @option params [String] :key_spec
    #   @option params [Array<String>] :encryption_algorithms
    #   @option params [Array<String>] :signing_algorithms
    #   @option params [Boolean] :multi_region
    #   @option params [MultiRegionConfiguration] :multi_region_configuration
    #   @option params [Integer] :pending_deletion_window_in_days
    #   @option params [Array<String>] :mac_algorithms
    #   @option params [XksKeyConfigurationType] :xks_key_configuration
    # @!attribute aws_account_id
    #   <p>The twelve-digit account ID of the Amazon Web Services account that owns the KMS key.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The globally unique identifier for the KMS key.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. For examples, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Key Management Service (KMS)</a> in the Example ARNs section of the <i>Amazon Web Services General
    #           Reference</i>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time when the KMS key was created.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>Specifies whether the KMS key is enabled. When <code>KeyState</code> is
    #           <code>Enabled</code> this value is true, otherwise it is false.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the KMS key.</p>
    #   @return [String]
    # @!attribute key_usage
    #   <p>The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> for which you can use the KMS key.</p>
    #   Enum, one of: ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   @return [String]
    # @!attribute key_state
    #   <p>The current status of the KMS key.</p>
    #            <p>For more information about how key state affects the use of a KMS key, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in
    #         the <i>Key Management Service Developer Guide</i>.</p>
    #   Enum, one of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   @return [String]
    # @!attribute deletion_date
    #   <p>The date and time after which KMS deletes this KMS key. This value is present only when
    #         the KMS key is scheduled for deletion, that is, when its <code>KeyState</code> is
    #           <code>PendingDeletion</code>.</p>
    #            <p>When the primary key in a multi-Region key is scheduled for deletion but still has replica
    #         keys, its key state is <code>PendingReplicaDeletion</code> and the length of its waiting
    #         period is displayed in the <code>PendingDeletionWindowInDays</code> field.</p>
    #   @return [Time]
    # @!attribute valid_to
    #   <p>The time at which the imported key material expires. When the key material expires, KMS
    #         deletes the key material and the KMS key becomes unusable. This value is present only for KMS
    #         keys whose <code>Origin</code> is <code>EXTERNAL</code> and whose <code>ExpirationModel</code>
    #         is <code>KEY_MATERIAL_EXPIRES</code>, otherwise this value is omitted.</p>
    #   @return [Time]
    # @!attribute origin
    #   <p>The source of the key material for the KMS key. When this value is <code>AWS_KMS</code>,
    #         KMS created the key material. When this value is <code>EXTERNAL</code>, the key material was
    #         imported or the KMS key doesn't have any key material. When this value is
    #           <code>AWS_CLOUDHSM</code>, the key material was created in the CloudHSM cluster associated with
    #         a custom key store.</p>
    #   Enum, one of: ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   @return [String]
    # @!attribute custom_key_store_id
    #   <p>A unique identifier for the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> that contains the KMS key. This field is
    #         present only when the KMS key is created in a custom key store.</p>
    #   @return [String]
    # @!attribute cloud_hsm_cluster_id
    #   <p>The cluster ID of the CloudHSM cluster that contains the key material for the KMS key. When
    #         you create a KMS key in an CloudHSM <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>, KMS creates the key material for the KMS
    #         key in the associated CloudHSM cluster. This field is present only when the KMS key is created in
    #         an CloudHSM key store.</p>
    #   @return [String]
    # @!attribute expiration_model
    #   <p>Specifies whether the KMS key's key material expires. This value is present only when
    #           <code>Origin</code> is <code>EXTERNAL</code>, otherwise this value is omitted.</p>
    #   Enum, one of: ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   @return [String]
    # @!attribute key_manager
    #   <p>The manager of the KMS key. KMS keys in your Amazon Web Services account are either customer managed or
    #         Amazon Web Services managed. For more information about the difference, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys">KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   Enum, one of: ["AWS", "CUSTOMER"]
    #   @return [String]
    # @!attribute customer_master_key_spec
    #   <p>Instead, use the <code>KeySpec</code> field.</p>
    #            <p>The <code>KeySpec</code> and <code>CustomerMasterKeySpec</code> fields have the same
    #         value. We recommend that you use the <code>KeySpec</code> field in your code. However, to
    #         avoid breaking changes, KMS supports both fields.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @deprecated
    #     This field has been deprecated. Instead, use the KeySpec field.
    #   @return [String]
    # @!attribute key_spec
    #   <p>Describes the type of key material in the KMS key.</p>
    #   Enum, one of: ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   @return [String]
    # @!attribute encryption_algorithms
    #   <p>The encryption algorithms that the KMS key supports. You cannot use the KMS key with other
    #         encryption algorithms within KMS.</p>
    #            <p>This value is present only when the <code>KeyUsage</code> of the KMS key is
    #           <code>ENCRYPT_DECRYPT</code>.</p>
    #   @return [Array<String>]
    # @!attribute signing_algorithms
    #   <p>The signing algorithms that the KMS key supports. You cannot use the KMS key with other
    #         signing algorithms within KMS.</p>
    #            <p>This field appears only when the <code>KeyUsage</code> of the KMS key is
    #           <code>SIGN_VERIFY</code>.</p>
    #   @return [Array<String>]
    # @!attribute multi_region
    #   <p>Indicates whether the KMS key is a multi-Region (<code>True</code>) or regional
    #           (<code>False</code>) key. This value is <code>True</code> for multi-Region primary and
    #         replica keys and <code>False</code> for regional KMS keys.</p>
    #            <p>For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute multi_region_configuration
    #   <p>Lists the primary and replica keys in same multi-Region key. This field is present only
    #         when the value of the <code>MultiRegion</code> field is <code>True</code>.</p>
    #            <p>For more information about any listed KMS key, use the <a>DescribeKey</a>
    #         operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MultiRegionKeyType</code> indicates whether the KMS key is a
    #               <code>PRIMARY</code> or <code>REPLICA</code> key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PrimaryKey</code> displays the key ARN and Region of the primary key. This field
    #             displays the current KMS key if it is the primary key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplicaKeys</code> displays the key ARNs and Regions of all replica keys. This
    #             field includes the current KMS key if it is a replica key.</p>
    #               </li>
    #            </ul>
    #   @return [MultiRegionConfiguration]
    # @!attribute pending_deletion_window_in_days
    #   <p>The waiting period before the primary key in a multi-Region key is deleted. This waiting
    #         period begins when the last of its replica keys is deleted. This value is present only when
    #         the <code>KeyState</code> of the KMS key is <code>PendingReplicaDeletion</code>. That
    #         indicates that the KMS key is the primary key in a multi-Region key, it is scheduled for
    #         deletion, and it still has existing replica keys.</p>
    #            <p>When a single-Region KMS key or a multi-Region replica key is scheduled for deletion, its
    #         deletion date is displayed in the <code>DeletionDate</code> field. However, when the primary
    #         key in a multi-Region key is scheduled for deletion, its waiting period doesn't begin until
    #         all of its replica keys are deleted. This value displays that waiting period. When the last
    #         replica key in the multi-Region key is deleted, the <code>KeyState</code> of the scheduled
    #         primary key changes from <code>PendingReplicaDeletion</code> to <code>PendingDeletion</code>
    #         and the deletion date appears in the <code>DeletionDate</code> field.</p>
    #   @return [Integer]
    # @!attribute mac_algorithms
    #   <p>The message authentication code (MAC) algorithm that the HMAC KMS key supports.</p>
    #            <p>This value is present only when the <code>KeyUsage</code> of the KMS key is
    #           <code>GENERATE_VERIFY_MAC</code>.</p>
    #   @return [Array<String>]
    # @!attribute xks_key_configuration
    #   <p>Information about the external key that is associated with a KMS key in an external key
    #         store.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">External key</a> in the
    #         <i>Key Management Service Developer Guide</i>.</p>
    #   @return [XksKeyConfigurationType]
    KeyMetadata = ::Struct.new(
      :aws_account_id,
      :key_id,
      :arn,
      :creation_date,
      :enabled,
      :description,
      :key_usage,
      :key_state,
      :deletion_date,
      :valid_to,
      :origin,
      :custom_key_store_id,
      :cloud_hsm_cluster_id,
      :expiration_model,
      :key_manager,
      :customer_master_key_spec,
      :key_spec,
      :encryption_algorithms,
      :signing_algorithms,
      :multi_region,
      :multi_region_configuration,
      :pending_deletion_window_in_days,
      :mac_algorithms,
      :xks_key_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled = false if self.enabled.nil?
      end
    end

    # Includes enum constants for KeySpec
    module KeySpec
      # No documentation available.
      RSA_2048 = "RSA_2048"

      # No documentation available.
      RSA_3072 = "RSA_3072"

      # No documentation available.
      RSA_4096 = "RSA_4096"

      # No documentation available.
      ECC_NIST_P256 = "ECC_NIST_P256"

      # No documentation available.
      ECC_NIST_P384 = "ECC_NIST_P384"

      # No documentation available.
      ECC_NIST_P521 = "ECC_NIST_P521"

      # No documentation available.
      ECC_SECG_P256_K1 = "ECC_SECG_P256K1"

      # No documentation available.
      SYMMETRIC_DEFAULT = "SYMMETRIC_DEFAULT"

      # No documentation available.
      HMAC_224 = "HMAC_224"

      # No documentation available.
      HMAC_256 = "HMAC_256"

      # No documentation available.
      HMAC_384 = "HMAC_384"

      # No documentation available.
      HMAC_512 = "HMAC_512"

      # No documentation available.
      SM2 = "SM2"
    end

    # Includes enum constants for KeyState
    module KeyState
      # No documentation available.
      CREATING = "Creating"

      # No documentation available.
      ENABLED = "Enabled"

      # No documentation available.
      DISABLED = "Disabled"

      # No documentation available.
      PENDING_DELETION = "PendingDeletion"

      # No documentation available.
      PENDING_IMPORT = "PendingImport"

      # No documentation available.
      PENDING_REPLICA_DELETION = "PendingReplicaDeletion"

      # No documentation available.
      UNAVAILABLE = "Unavailable"

      # No documentation available.
      UPDATING = "Updating"
    end

    # <p>The request was rejected because the specified KMS key was not available. You can retry
    #       the request.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    KeyUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyUsageType
    module KeyUsageType
      # No documentation available.
      SIGN_VERIFY = "SIGN_VERIFY"

      # No documentation available.
      ENCRYPT_DECRYPT = "ENCRYPT_DECRYPT"

      # No documentation available.
      GENERATE_VERIFY_MAC = "GENERATE_VERIFY_MAC"
    end

    # <p>The request was rejected because a quota was exceeded. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Quotas</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    # @!attribute key_id
    #   <p>Lists only aliases that are associated with the specified KMS key. Enter a KMS key in your
    #         Amazon Web Services account. </p>
    #            <p>This parameter is optional. If you omit it, <code>ListAliases</code> returns all aliases
    #         in the account and Region.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    ListAliasesInput = ::Struct.new(
      :key_id,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AliasListEntry>] :aliases
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute aliases
    #   <p>A list of aliases.</p>
    #   @return [Array<AliasListEntry>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListAliasesOutput = ::Struct.new(
      :aliases,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    #   @option params [String] :key_id
    #   @option params [String] :grant_id
    #   @option params [String] :grantee_principal
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>Returns only grants for the specified KMS key. This parameter is required.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute grant_id
    #   <p>Returns only the grant with the specified grant ID. The grant ID uniquely identifies the
    #         grant. </p>
    #   @return [String]
    # @!attribute grantee_principal
    #   <p>Returns only grants where the specified principal is the grantee principal for the
    #         grant.</p>
    #   @return [String]
    ListGrantsInput = ::Struct.new(
      :limit,
      :marker,
      :key_id,
      :grant_id,
      :grantee_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<GrantListEntry>] :grants
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<GrantListEntry>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListGrantsOutput = ::Struct.new(
      :grants,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    # @!attribute key_id
    #   <p>Gets the names of key policies for the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between
    #       1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
    #            <p>Only one policy can be attached to a key.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    ListKeyPoliciesInput = ::Struct.new(
      :key_id,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<String>] :policy_names
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute policy_names
    #   <p>A list of key policy names. The only valid value is <code>default</code>.</p>
    #   @return [Array<String>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListKeyPoliciesOutput = ::Struct.new(
      :policy_names,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between
    #       1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    ListKeysInput = ::Struct.new(
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<KeyListEntry>] :keys
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute keys
    #   <p>A list of KMS keys.</p>
    #   @return [Array<KeyListEntry>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListKeysOutput = ::Struct.new(
      :keys,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    # @!attribute key_id
    #   <p>Gets tags on the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1 and 50, inclusive. If
    #         you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #            <p>Do not attempt to construct this value. Use only the value of <code>NextMarker</code> from
    #         the truncated response you just received.</p>
    #   @return [String]
    ListResourceTagsInput = ::Struct.new(
      :key_id,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Tag>] :tags
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute tags
    #   <p>A list of tags. Each tag consists of a tag key and a tag value.</p>
    #            <note>
    #               <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #   @return [Array<Tag>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #            <p>Do not assume or infer any information from this value.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListResourceTagsOutput = ::Struct.new(
      :tags,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :limit
    #   @option params [String] :marker
    #   @option params [String] :retiring_principal
    # @!attribute limit
    #   <p>Use this parameter to specify the maximum number of items to return. When this
    #       value is present, KMS does not return more than the specified number of items, but it might
    #       return fewer.</p>
    #            <p>This value is optional. If you include a value, it must be between 1
    #       and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter in a subsequent request after you receive a response with
    #       truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    #       you just received.</p>
    #   @return [String]
    # @!attribute retiring_principal
    #   <p>The retiring principal for which to list grants. Enter a principal in your
    #         Amazon Web Services account.</p>
    #            <p>To specify the retiring principal, use the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an
    #         Amazon Web Services principal. Valid principals include Amazon Web Services accounts, IAM users, IAM roles,
    #         federated users, and assumed role users. For help with the ARN syntax for a principal, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #   @return [String]
    ListRetirableGrantsInput = ::Struct.new(
      :limit,
      :marker,
      :retiring_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<GrantListEntry>] :grants
    #   @option params [String] :next_marker
    #   @option params [Boolean] :truncated (false)
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<GrantListEntry>]
    # @!attribute next_marker
    #   <p>When <code>Truncated</code> is true, this element is present and contains the
    #       value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute truncated
    #   <p>A flag that indicates whether there are more items in the list. When this
    #       value is true, the list in this response is truncated. To get more items, pass the value of
    #       the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    #       subsequent request.</p>
    #   @return [Boolean]
    ListRetirableGrantsOutput = ::Struct.new(
      :grants,
      :next_marker,
      :truncated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.truncated = false if self.truncated.nil?
      end
    end

    # Includes enum constants for MacAlgorithmSpec
    module MacAlgorithmSpec
      # No documentation available.
      HMAC_SHA_224 = "HMAC_SHA_224"

      # No documentation available.
      HMAC_SHA_256 = "HMAC_SHA_256"

      # No documentation available.
      HMAC_SHA_384 = "HMAC_SHA_384"

      # No documentation available.
      HMAC_SHA_512 = "HMAC_SHA_512"
    end

    # <p>The request was rejected because the specified policy is not syntactically or semantically
    #       correct.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    MalformedPolicyDocumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageType
    module MessageType
      # No documentation available.
      RAW = "RAW"

      # No documentation available.
      DIGEST = "DIGEST"
    end

    # <p>Describes the configuration of this multi-Region key. This field appears only when the KMS
    #       key is a primary or replica of a multi-Region key.</p>
    #          <p>For more information about any listed KMS key, use the <a>DescribeKey</a>
    #       operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :multi_region_key_type
    #   @option params [MultiRegionKey] :primary_key
    #   @option params [Array<MultiRegionKey>] :replica_keys
    # @!attribute multi_region_key_type
    #   <p>Indicates whether the KMS key is a <code>PRIMARY</code> or <code>REPLICA</code>
    #         key.</p>
    #   Enum, one of: ["PRIMARY", "REPLICA"]
    #   @return [String]
    # @!attribute primary_key
    #   <p>Displays the key ARN and Region of the primary key. This field includes the current KMS
    #         key if it is the primary key.</p>
    #   @return [MultiRegionKey]
    # @!attribute replica_keys
    #   <p>displays the key ARNs and Regions of all replica keys. This field includes the current KMS
    #         key if it is a replica key.</p>
    #   @return [Array<MultiRegionKey>]
    MultiRegionConfiguration = ::Struct.new(
      :multi_region_key_type,
      :primary_key,
      :replica_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the primary or replica key in a multi-Region key.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :arn
    #   @option params [String] :region
    # @!attribute arn
    #   <p>Displays the key ARN of a primary or replica key of a multi-Region key.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Displays the Amazon Web Services Region of a primary or replica key in a multi-Region key.</p>
    #   @return [String]
    MultiRegionKey = ::Struct.new(
      :arn,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MultiRegionKeyType
    module MultiRegionKeyType
      # No documentation available.
      PRIMARY = "PRIMARY"

      # No documentation available.
      REPLICA = "REPLICA"
    end

    # <p>The request was rejected because the specified entity or resource could not be
    #       found.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OriginType
    module OriginType
      # No documentation available.
      AWS_KMS = "AWS_KMS"

      # No documentation available.
      EXTERNAL = "EXTERNAL"

      # No documentation available.
      AWS_CLOUDHSM = "AWS_CLOUDHSM"

      # No documentation available.
      EXTERNAL_KEY_STORE = "EXTERNAL_KEY_STORE"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :policy_name
    #   @option params [String] :policy
    #   @option params [Boolean] :bypass_policy_lockout_safety_check (false)
    # @!attribute key_id
    #   <p>Sets the key policy on the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the key policy. The only valid value is <code>default</code>.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The key policy to attach to the KMS key.</p>
    #            <p>The key policy must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>A key policy document can include only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Printable ASCII characters from the space character (<code>\u0020</code>) through the end of the ASCII character range.</p>
    #               </li>
    #               <li>
    #                  <p>Printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\u00FF</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) special characters</p>
    #               </li>
    #            </ul>
    #            <p>For information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key policies in KMS</a> in the
    #         <i>Key Management Service Developer Guide</i>.For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    #   @return [Boolean]
    PutKeyPolicyInput = ::Struct.new(
      :key_id,
      :policy_name,
      :policy,
      :bypass_policy_lockout_safety_check,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_policy_lockout_safety_check = false if self.bypass_policy_lockout_safety_check.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    PutKeyPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [Hash<String, String>] :source_encryption_context
    #   @option params [String] :source_key_id
    #   @option params [String] :destination_key_id
    #   @option params [Hash<String, String>] :destination_encryption_context
    #   @option params [String] :source_encryption_algorithm
    #   @option params [String] :destination_encryption_algorithm
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute ciphertext_blob
    #   <p>Ciphertext of the data to reencrypt.</p>
    #   @return [String]
    # @!attribute source_encryption_context
    #   <p>Specifies the encryption context to use to decrypt the ciphertext. Enter the same
    #         encryption context that was used to encrypt the ciphertext.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute source_key_id
    #   <p>Specifies the KMS key that KMS will use to decrypt the ciphertext before it is
    #         re-encrypted.</p>
    #            <p>Enter a key ID of the KMS key that was used to encrypt the ciphertext. If you identify a
    #         different KMS key, the <code>ReEncrypt</code> operation throws an
    #           <code>IncorrectKeyException</code>.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key. If you used a symmetric encryption KMS key, KMS can get the KMS key from metadata that
    #         it adds to the symmetric ciphertext blob. However, it is always recommended as a best
    #         practice. This practice ensures that you use the KMS key that you intend.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute destination_key_id
    #   <p>A unique identifier for the KMS key that is used to reencrypt the data. Specify a
    #         symmetric encryption KMS key or an asymmetric KMS key with a <code>KeyUsage</code> value of
    #           <code>ENCRYPT_DECRYPT</code>. To find the <code>KeyUsage</code> value of a KMS key, use the
    #           <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute destination_encryption_context
    #   <p>Specifies that encryption context to use when the reencrypting the data.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>A destination encryption context is valid only when the destination KMS key is a symmetric
    #         encryption KMS key. The standard ciphertext format for asymmetric KMS keys does not include
    #         fields for metadata.</p>
    #            <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represent additional authenticated data.
    #   When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is supported
    #   only on operations with symmetric encryption KMS keys. On operations with symmetric encryption KMS keys, an encryption context is optional, but it is strongly recommended.</p>
    #            <p>For more information, see
    #   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute source_encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to decrypt the ciphertext before it
    #         is reencrypted. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the algorithm
    #         used for symmetric encryption KMS keys.</p>
    #            <p>Specify the same algorithm that was used to encrypt the ciphertext. If you specify a
    #         different algorithm, the decrypt attempt fails.</p>
    #            <p>This parameter is required only when the ciphertext was encrypted under an asymmetric KMS
    #         key.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute destination_encryption_algorithm
    #   <p>Specifies the encryption algorithm that KMS will use to reecrypt the data after it has
    #         decrypted it. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the encryption
    #         algorithm used for symmetric encryption KMS keys.</p>
    #            <p>This parameter is required only when the destination KMS key is an asymmetric KMS
    #         key.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    ReEncryptInput = ::Struct.new(
      :ciphertext_blob,
      :source_encryption_context,
      :source_key_id,
      :destination_key_id,
      :destination_encryption_context,
      :source_encryption_algorithm,
      :destination_encryption_algorithm,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ciphertext_blob
    #   @option params [String] :source_key_id
    #   @option params [String] :key_id
    #   @option params [String] :source_encryption_algorithm
    #   @option params [String] :destination_encryption_algorithm
    # @!attribute ciphertext_blob
    #   <p>The reencrypted data. When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute source_key_id
    #   <p>Unique identifier of the KMS key used to originally encrypt the data.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key that was used to reencrypt the data.</p>
    #   @return [String]
    # @!attribute source_encryption_algorithm
    #   <p>The encryption algorithm that was used to decrypt the ciphertext before it was
    #         reencrypted.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    # @!attribute destination_encryption_algorithm
    #   <p>The encryption algorithm that was used to reencrypt the data.</p>
    #   Enum, one of: ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   @return [String]
    ReEncryptOutput = ::Struct.new(
      :ciphertext_blob,
      :source_key_id,
      :key_id,
      :source_encryption_algorithm,
      :destination_encryption_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the party that receives the response from the API
    #       operation.</p>
    #          <p>This data type is designed to support Amazon Web Services Nitro Enclaves, which lets you create an isolated
    #       compute environment in Amazon EC2. For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_encryption_algorithm
    #   @option params [String] :attestation_document
    # @!attribute key_encryption_algorithm
    #   <p>The encryption algorithm that KMS should use with the public key for an Amazon Web Services Nitro
    #         Enclave to encrypt plaintext values for the response. The only valid value is
    #           <code>RSAES_OAEP_SHA_256</code>.</p>
    #   Enum, one of: ["RSAES_OAEP_SHA_256"]
    #   @return [String]
    # @!attribute attestation_document
    #   <p>The attestation document for an Amazon Web Services Nitro Enclave. This document includes the enclave's
    #         public key.</p>
    #   @return [String]
    RecipientInfo = ::Struct.new(
      :key_encryption_algorithm,
      :attestation_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :replica_region
    #   @option params [String] :policy
    #   @option params [Boolean] :bypass_policy_lockout_safety_check (false)
    #   @option params [String] :description
    #   @option params [Array<Tag>] :tags
    # @!attribute key_id
    #   <p>Identifies the multi-Region primary key that is being replicated. To determine whether a
    #         KMS key is a multi-Region primary key, use the <a>DescribeKey</a> operation to
    #         check the value of the <code>MultiRegionKeyType</code> property.</p>
    #            <p>Specify the key ID or key ARN of a multi-Region primary key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The Region ID of the Amazon Web Services Region for this replica key. </p>
    #            <p>Enter the Region ID, such as <code>us-east-1</code> or <code>ap-southeast-2</code>. For a
    #         list of Amazon Web Services Regions in which KMS is supported, see <a href="https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region">KMS service endpoints</a> in the
    #         <i>Amazon Web Services General Reference</i>.</p>
    #            <note>
    #               <p>HMAC KMS keys are not supported in all Amazon Web Services Regions. If you try to replicate an HMAC
    #           KMS key in an Amazon Web Services Region in which HMAC keys are not supported, the
    #             <code>ReplicateKey</code> operation returns an <code>UnsupportedOperationException</code>.
    #           For a list of Regions in which HMAC KMS keys are supported, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>The replica must be in a different Amazon Web Services Region than its primary key and other replicas of
    #         that primary key, but in the same Amazon Web Services partition. KMS must be available in the replica
    #         Region. If the Region is not enabled by default, the Amazon Web Services account must be enabled in the
    #         Region. For information about Amazon Web Services partitions, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the
    #         <i>Amazon Web Services General Reference</i>. For information about enabling and disabling Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">Enabling a
    #           Region</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-disable">Disabling a Region</a> in the
    #         <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The key policy to attach to the KMS key. This parameter is optional. If you do not provide
    #         a key policy, KMS attaches the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">default key policy</a> to the
    #         KMS key.</p>
    #            <p>The key policy is not a shared property of multi-Region keys. You can specify the same key
    #         policy or a different key policy for each key in a set of related multi-Region keys. KMS
    #         does not synchronize this property.</p>
    #            <p>If you provide a key policy, it must meet the following criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>The key policy must allow the calling principal to make a
    #             subsequent <code>PutKeyPolicy</code> request on the KMS key.  This reduces the risk that
    #             the KMS key becomes unmanageable. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>. (To omit
    #             this condition, set <code>BypassPolicyLockoutSafetyCheck</code> to true.)</p>
    #               </li>
    #               <li>
    #                  <p>Each statement in the key policy must contain one or more principals. The principals
    #             in the key policy must exist and be visible to KMS. When you create a new Amazon Web Services
    #             principal, you might need to enforce a delay before including the new principal in a key
    #             policy because the new principal might not be immediately visible to KMS. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>A key policy document can include only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Printable ASCII characters from the space character (<code>\u0020</code>) through the end of the ASCII character range.</p>
    #               </li>
    #               <li>
    #                  <p>Printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\u00FF</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) special characters</p>
    #               </li>
    #            </ul>
    #            <p>For information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key policies in KMS</a> in the <i>Key Management Service Developer Guide</i>.
    #         For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                  <i>Identity and Access Management User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute bypass_policy_lockout_safety_check
    #   <p>Skips ("bypasses") the key policy lockout safety check. The default value is false.</p>
    #            <important>
    #               <p>Setting this value to true increases the risk that the KMS key becomes unmanageable. Do
    #           not set this value to true indiscriminately.</p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#prevent-unmanageable-key">Default key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </important>
    #            <p>Use this parameter only when you intend to prevent the principal that is making the
    #         request from making a subsequent <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #         request on the KMS key.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the KMS key. The default value is an empty string (no
    #         description).</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>The description is not a shared property of multi-Region keys. You can specify the same
    #         description or a different description for each key in a set of related multi-Region keys.
    #         KMS does not synchronize this property.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags to the replica key. Use this parameter to tag the KMS key when it
    #         is created. To tag an existing KMS key, use the <a>TagResource</a>
    #         operation.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <note>
    #               <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            </note>
    #            <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> permission in an IAM policy.</p>
    #            <p>Tags are not a shared property of multi-Region keys. You can specify the same tags or
    #         different tags for each key in a set of related multi-Region keys. KMS does not synchronize
    #         this property.</p>
    #            <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are
    #         required, but the tag value can be an empty (null) string. You cannot have more than one tag
    #         on a KMS key with the same tag key. If you specify an existing tag key with a different tag
    #         value, KMS replaces the current tag value with the specified one.</p>
    #            <p>When you add tags to an Amazon Web Services resource, Amazon Web Services generates a cost allocation
    #                 report with usage and costs aggregated by tags. Tags can also be used to control access to a KMS key. For details,
    #                 see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging Keys</a>.</p>
    #   @return [Array<Tag>]
    ReplicateKeyInput = ::Struct.new(
      :key_id,
      :replica_region,
      :policy,
      :bypass_policy_lockout_safety_check,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_policy_lockout_safety_check = false if self.bypass_policy_lockout_safety_check.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [KeyMetadata] :replica_key_metadata
    #   @option params [String] :replica_policy
    #   @option params [Array<Tag>] :replica_tags
    # @!attribute replica_key_metadata
    #   <p>Displays details about the new replica key, including its Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) and
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a>. It also includes the ARN and Amazon Web Services Region of its primary key and other
    #         replica keys.</p>
    #   @return [KeyMetadata]
    # @!attribute replica_policy
    #   <p>The key policy of the new replica key. The value is a key policy document in JSON
    #         format.</p>
    #   @return [String]
    # @!attribute replica_tags
    #   <p>The tags on the new replica key. The value is a list of tag key and tag value
    #         pairs.</p>
    #   @return [Array<Tag>]
    ReplicateKeyOutput = ::Struct.new(
      :replica_key_metadata,
      :replica_policy,
      :replica_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :grant_token
    #   @option params [String] :key_id
    #   @option params [String] :grant_id
    #   @option params [Boolean] :dry_run
    # @!attribute grant_token
    #   <p>Identifies the grant to be retired. You can use a grant token to identify a new grant even
    #         before it has achieved eventual consistency.</p>
    #            <p>Only the <a>CreateGrant</a> operation returns a grant token. For details, see
    #           <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency">Eventual consistency</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The key ARN KMS key associated with the grant. To find the key ARN, use the <a>ListKeys</a> operation.</p>
    #            <p>For example: <code>arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute grant_id
    #   <p>Identifies the grant to retire. To get the grant ID, use <a>CreateGrant</a>,
    #           <a>ListGrants</a>, or <a>ListRetirableGrants</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grant ID Example -
    #             0123456789012345678901234567890123456789012345678901234567890123</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    RetireGrantInput = ::Struct.new(
      :grant_token,
      :key_id,
      :grant_id,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    RetireGrantOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :grant_id
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>A unique identifier for the KMS key associated with the grant. To get the key ID and key
    #         ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #            <p>Specify the key ID or key ARN of the KMS key. To specify a KMS key in a
    #   different Amazon Web Services account, you must use the key ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute grant_id
    #   <p>Identifies the grant to revoke. To get the grant ID, use <a>CreateGrant</a>,
    #           <a>ListGrants</a>, or <a>ListRetirableGrants</a>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    RevokeGrantInput = ::Struct.new(
      :key_id,
      :grant_id,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    RevokeGrantOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Integer] :pending_window_in_days
    # @!attribute key_id
    #   <p>The unique identifier of the KMS key to delete.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute pending_window_in_days
    #   <p>The waiting period, specified in number of days. After the waiting period ends, KMS
    #         deletes the KMS key.</p>
    #            <p>If the KMS key is a multi-Region primary key with replica keys, the waiting period begins
    #         when the last of its replica keys is deleted. Otherwise, the waiting period begins
    #         immediately.</p>
    #            <p>This value is optional. If you include a value, it must be between 7 and 30, inclusive. If
    #         you do not include a value, it defaults to 30. You can use the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-schedule-key-deletion-pending-window-in-days">
    #                  <code>kms:ScheduleKeyDeletionPendingWindowInDays</code>
    #               </a> condition key to further
    #         constrain the values that principals can specify in the <code>PendingWindowInDays</code>
    #         parameter.</p>
    #   @return [Integer]
    ScheduleKeyDeletionInput = ::Struct.new(
      :key_id,
      :pending_window_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Time] :deletion_date
    #   @option params [String] :key_state
    #   @option params [Integer] :pending_window_in_days
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the KMS key whose deletion is scheduled.</p>
    #   @return [String]
    # @!attribute deletion_date
    #   <p>The date and time after which KMS deletes the KMS key.</p>
    #            <p>If the KMS key is a multi-Region primary key with replica keys, this field does not
    #         appear. The deletion date for the primary key isn't known until its last replica key is
    #         deleted.</p>
    #   @return [Time]
    # @!attribute key_state
    #   <p>The current status of the KMS key.</p>
    #            <p>For more information about how key state affects the use of a KMS key, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   Enum, one of: ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   @return [String]
    # @!attribute pending_window_in_days
    #   <p>The waiting period before the KMS key is deleted. </p>
    #            <p>If the KMS key is a multi-Region primary key with replicas, the waiting period begins when
    #         the last of its replica keys is deleted. Otherwise, the waiting period begins
    #         immediately.</p>
    #   @return [Integer]
    ScheduleKeyDeletionOutput = ::Struct.new(
      :key_id,
      :deletion_date,
      :key_state,
      :pending_window_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :message
    #   @option params [String] :message_type
    #   @option params [Array<String>] :grant_tokens
    #   @option params [String] :signing_algorithm
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Identifies an asymmetric KMS key. KMS uses the private key in the asymmetric KMS key to
    #         sign the message. The <code>KeyUsage</code> type of the KMS key must be
    #           <code>SIGN_VERIFY</code>. To find the <code>KeyUsage</code> of a KMS key, use the <a>DescribeKey</a> operation.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies the message or message digest to sign. Messages can be 0-4096 bytes. To sign a
    #         larger message, provide a message digest.</p>
    #            <p>If you provide a message digest, use the <code>DIGEST</code> value of
    #           <code>MessageType</code> to prevent the digest from being hashed again while signing.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>Tells KMS whether the value of the <code>Message</code> parameter should be hashed as
    #         part of the signing algorithm. Use <code>RAW</code> for unhashed messages; use
    #           <code>DIGEST</code> for message digests, which are already hashed.</p>
    #            <p>When the value of <code>MessageType</code> is <code>RAW</code>, KMS uses the standard
    #         signing algorithm, which begins with a hash function. When the value is <code>DIGEST</code>,
    #         KMS skips the hashing step in the signing algorithm.</p>
    #            <important>
    #               <p>Use the <code>DIGEST</code> value only when the value of the <code>Message</code>
    #           parameter is a message digest. If you use the <code>DIGEST</code> value with an unhashed
    #           message, the security of the signing operation can be compromised.</p>
    #            </important>
    #            <p>When the value of <code>MessageType</code>is <code>DIGEST</code>, the length of the
    #           <code>Message</code> value must match the length of hashed messages for the specified
    #         signing algorithm.</p>
    #            <p>You can submit a message digest and omit the <code>MessageType</code> or specify
    #           <code>RAW</code> so the digest is hashed again while signing. However, this can cause
    #         verification failures when verifying with a system that assumes a single hash.</p>
    #            <p>The hashing algorithm in that <code>Sign</code> uses is based on the
    #           <code>SigningAlgorithm</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_256 use the SHA_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_384 use the SHA_384 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_512 use the SHA_512 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>SM2DSA uses the SM3 hashing algorithm. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification">Offline
    #               verification with SM2 key pairs</a>.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["RAW", "DIGEST"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute signing_algorithm
    #   <p>Specifies the signing algorithm to use when signing the message. </p>
    #            <p>Choose an algorithm that is compatible with the type and size of the specified asymmetric
    #         KMS key. When signing with RSA key pairs, RSASSA-PSS algorithms are preferred. We include
    #         RSASSA-PKCS1-v1_5 algorithms for compatibility with existing applications.</p>
    #   Enum, one of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    SignInput = ::Struct.new(
      :key_id,
      :message,
      :message_type,
      :grant_tokens,
      :signing_algorithm,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::SignInput "\
          "key_id=#{key_id || 'nil'}, "\
          "message=\"[SENSITIVE]\", "\
          "message_type=#{message_type || 'nil'}, "\
          "grant_tokens=#{grant_tokens || 'nil'}, "\
          "signing_algorithm=#{signing_algorithm || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :signature
    #   @option params [String] :signing_algorithm
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the asymmetric KMS key that was used to sign the message.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>The cryptographic signature that was generated for the message. </p>
    #            <ul>
    #               <li>
    #                  <p>When used with the supported RSA signing algorithms, the encoding of this value is
    #             defined by <a href="https://tools.ietf.org/html/rfc8017">PKCS #1 in RFC
    #             8017</a>.</p>
    #               </li>
    #               <li>
    #                  <p>When used with the <code>ECDSA_SHA_256</code>, <code>ECDSA_SHA_384</code>, or
    #               <code>ECDSA_SHA_512</code> signing algorithms, this value is a DER-encoded object as
    #             defined by ANSI X9.62–2005 and <a href="https://tools.ietf.org/html/rfc3279#section-2.2.3">RFC 3279 Section 2.2.3</a>.
    #             This is the most commonly used signature format and is appropriate for most uses.
    #             </p>
    #               </li>
    #            </ul>
    #            <p>When you use the HTTP API or the Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    #   @return [String]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm that was used to sign the message.</p>
    #   Enum, one of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   @return [String]
    SignOutput = ::Struct.new(
      :key_id,
      :signature,
      :signing_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SigningAlgorithmSpec
    module SigningAlgorithmSpec
      # No documentation available.
      RSASSA_PSS_SHA_256 = "RSASSA_PSS_SHA_256"

      # No documentation available.
      RSASSA_PSS_SHA_384 = "RSASSA_PSS_SHA_384"

      # No documentation available.
      RSASSA_PSS_SHA_512 = "RSASSA_PSS_SHA_512"

      # No documentation available.
      RSASSA_PKCS1_V1_5_SHA_256 = "RSASSA_PKCS1_V1_5_SHA_256"

      # No documentation available.
      RSASSA_PKCS1_V1_5_SHA_384 = "RSASSA_PKCS1_V1_5_SHA_384"

      # No documentation available.
      RSASSA_PKCS1_V1_5_SHA_512 = "RSASSA_PKCS1_V1_5_SHA_512"

      # No documentation available.
      ECDSA_SHA_256 = "ECDSA_SHA_256"

      # No documentation available.
      ECDSA_SHA_384 = "ECDSA_SHA_384"

      # No documentation available.
      ECDSA_SHA_512 = "ECDSA_SHA_512"

      # No documentation available.
      SM2_DSA = "SM2DSA"
    end

    # <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are
    #       both required, but tag values can be empty (null) strings.</p>
    #          <important>
    #             <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #          </important>
    #          <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>Amazon Web Services Billing and Cost Management
    #         User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :tag_key
    #   @option params [String] :tag_value
    # @!attribute tag_key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The value of the tag.</p>
    #   @return [String]
    Tag = ::Struct.new(
      :tag_key,
      :tag_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because one or more tags are not valid.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    TagException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Array<Tag>] :tags
    # @!attribute key_id
    #   <p>Identifies a customer managed key in the account and Region.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags. Each tag consists of a tag key and a tag value. The tag value can be an
    #         empty (null) string. </p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>You cannot have more than one tag on a KMS key with the same tag key. If you specify an
    #         existing tag key with a different tag value, KMS replaces the current tag value with the
    #         specified one.</p>
    #   @return [Array<Tag>]
    TagResourceInput = ::Struct.new(
      :key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because a specified parameter is not supported or a specified
    #       resource is not valid for this operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Array<String>] :tag_keys
    # @!attribute key_id
    #   <p>Identifies the KMS key from which you are removing tags.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    #   @return [Array<String>]
    UntagResourceInput = ::Struct.new(
      :key_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :alias_name
    #   @option params [String] :target_key_id
    # @!attribute alias_name
    #   <p>Identifies the alias that is changing its KMS key. This value must begin with
    #           <code>alias/</code> followed by the alias name, such as <code>alias/ExampleAlias</code>. You
    #         cannot use <code>UpdateAlias</code> to change the alias name.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #   @return [String]
    # @!attribute target_key_id
    #   <p>Identifies the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> to associate with the alias. You don't have permission to
    #         associate an alias with an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #            <p>The KMS key must be in the same Amazon Web Services account and Region as the alias. Also, the new
    #         target KMS key must be the same type as the current target KMS key (both symmetric or both
    #         asymmetric or both HMAC) and they must have the same key usage. </p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #            <p>To verify that the alias is mapped to the correct KMS key, use <a>ListAliases</a>.</p>
    #   @return [String]
    UpdateAliasInput = ::Struct.new(
      :alias_name,
      :target_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    UpdateAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :custom_key_store_id
    #   @option params [String] :new_custom_key_store_name
    #   @option params [String] :key_store_password
    #   @option params [String] :cloud_hsm_cluster_id
    #   @option params [String] :xks_proxy_uri_endpoint
    #   @option params [String] :xks_proxy_uri_path
    #   @option params [String] :xks_proxy_vpc_endpoint_service_name
    #   @option params [XksProxyAuthenticationCredentialType] :xks_proxy_authentication_credential
    #   @option params [String] :xks_proxy_connectivity
    # @!attribute custom_key_store_id
    #   <p>Identifies the custom key store that you want to update. Enter the ID of the custom key
    #         store. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #   @return [String]
    # @!attribute new_custom_key_store_name
    #   <p>Changes the friendly name of the custom key store to the value that you specify. The
    #         custom key store name must be unique in the Amazon Web Services account.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #            <p>To change this value, an CloudHSM key store must be disconnected. An external key store can
    #         be connected or disconnected.</p>
    #   @return [String]
    # @!attribute key_store_password
    #   <p>Enter the current password of the <code>kmsuser</code> crypto user (CU) in the CloudHSM
    #         cluster that is associated with the custom key store. This parameter is valid only for custom
    #         key stores with a <code>CustomKeyStoreType</code> of <code>AWS_CLOUDHSM</code>.</p>
    #            <p>This parameter tells KMS the current password of the <code>kmsuser</code> crypto user
    #         (CU). It does not set or change the password of any users in the CloudHSM cluster.</p>
    #            <p>To change this value, the CloudHSM key store must be disconnected.</p>
    #   @return [String]
    # @!attribute cloud_hsm_cluster_id
    #   <p>Associates the custom key store with a related CloudHSM cluster. This parameter is valid only
    #         for custom key stores with a <code>CustomKeyStoreType</code> of
    #         <code>AWS_CLOUDHSM</code>.</p>
    #            <p>Enter the cluster ID of the cluster that you used to create the custom key store or a
    #         cluster that shares a backup history and has the same cluster certificate as the original
    #         cluster. You cannot use this parameter to associate a custom key store with an unrelated
    #         cluster. In addition, the replacement cluster must <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">fulfill the requirements</a> for
    #         a cluster associated with a custom key store. To view the cluster certificate of a cluster,
    #         use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation.</p>
    #            <p>To change this value, the CloudHSM key store must be disconnected.</p>
    #   @return [String]
    # @!attribute xks_proxy_uri_endpoint
    #   <p>Changes the URI endpoint that KMS uses to connect to your external key store proxy (XKS
    #         proxy). This parameter is valid only for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>For external key stores with an <code>XksProxyConnectivity</code> value of
    #           <code>PUBLIC_ENDPOINT</code>, the protocol must be HTTPS.</p>
    #            <p>For external key stores with an <code>XksProxyConnectivity</code> value of
    #           <code>VPC_ENDPOINT_SERVICE</code>, specify <code>https://</code> followed by the private DNS
    #         name associated with the VPC endpoint service. Each external key store must use a different
    #         private DNS name.</p>
    #            <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values must
    #         be unique in the Amazon Web Services account and Region.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    #   @return [String]
    # @!attribute xks_proxy_uri_path
    #   <p>Changes the base path to the proxy APIs for this external key store. To find this value,
    #         see the documentation for your external key manager and external key store proxy (XKS proxy).
    #         This parameter is valid only for custom key stores with a <code>CustomKeyStoreType</code> of
    #           <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>The value must start with <code>/</code> and must end with <code>/kms/xks/v1</code>, where
    #           <code>v1</code> represents the version of the KMS external key store proxy API. You can
    #         include an optional prefix between the required elements such as
    #             <code>/<i>example</i>/kms/xks/v1</code>.</p>
    #            <p>The combined <code>XksProxyUriEndpoint</code> and <code>XksProxyUriPath</code> values must
    #         be unique in the Amazon Web Services account and Region.</p>
    #            <p>You can change this value when the external key store is connected or disconnected.</p>
    #   @return [String]
    # @!attribute xks_proxy_vpc_endpoint_service_name
    #   <p>Changes the name that KMS uses to identify the Amazon VPC endpoint service for your external
    #         key store proxy (XKS proxy). This parameter is valid when the <code>CustomKeyStoreType</code>
    #         is <code>EXTERNAL_KEY_STORE</code> and the <code>XksProxyConnectivity</code> is
    #           <code>VPC_ENDPOINT_SERVICE</code>.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    #   @return [String]
    # @!attribute xks_proxy_authentication_credential
    #   <p>Changes the credentials that KMS uses to sign requests to the external key store proxy
    #         (XKS proxy). This parameter is valid only for custom key stores with a
    #           <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>.</p>
    #            <p>You must specify both the <code>AccessKeyId</code> and <code>SecretAccessKey</code> value
    #         in the authentication credential, even if you are only updating one value.</p>
    #            <p>This parameter doesn't establish or change your authentication credentials on the proxy.
    #         It just tells KMS the credential that you established with your external key store proxy.
    #         For example, if you rotate the credential on your external key store proxy, you can use this
    #         parameter to update the credential in KMS.</p>
    #            <p>You can change this value when the external key store is connected or disconnected.</p>
    #   @return [XksProxyAuthenticationCredentialType]
    # @!attribute xks_proxy_connectivity
    #   <p>Changes the connectivity setting for the external key store. To indicate that the external
    #         key store proxy uses a Amazon VPC endpoint service to communicate with KMS, specify
    #           <code>VPC_ENDPOINT_SERVICE</code>. Otherwise, specify <code>PUBLIC_ENDPOINT</code>.</p>
    #            <p>If you change the <code>XksProxyConnectivity</code> to <code>VPC_ENDPOINT_SERVICE</code>,
    #         you must also change the <code>XksProxyUriEndpoint</code> and add an
    #           <code>XksProxyVpcEndpointServiceName</code> value. </p>
    #            <p>If you change the <code>XksProxyConnectivity</code> to <code>PUBLIC_ENDPOINT</code>, you
    #         must also change the <code>XksProxyUriEndpoint</code> and specify a null or empty string for
    #         the <code>XksProxyVpcEndpointServiceName</code> value.</p>
    #            <p>To change this value, the external key store must be disconnected.</p>
    #   Enum, one of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   @return [String]
    UpdateCustomKeyStoreInput = ::Struct.new(
      :custom_key_store_id,
      :new_custom_key_store_name,
      :key_store_password,
      :cloud_hsm_cluster_id,
      :xks_proxy_uri_endpoint,
      :xks_proxy_uri_path,
      :xks_proxy_vpc_endpoint_service_name,
      :xks_proxy_authentication_credential,
      :xks_proxy_connectivity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::UpdateCustomKeyStoreInput "\
          "custom_key_store_id=#{custom_key_store_id || 'nil'}, "\
          "new_custom_key_store_name=#{new_custom_key_store_name || 'nil'}, "\
          "key_store_password=\"[SENSITIVE]\", "\
          "cloud_hsm_cluster_id=#{cloud_hsm_cluster_id || 'nil'}, "\
          "xks_proxy_uri_endpoint=#{xks_proxy_uri_endpoint || 'nil'}, "\
          "xks_proxy_uri_path=#{xks_proxy_uri_path || 'nil'}, "\
          "xks_proxy_vpc_endpoint_service_name=#{xks_proxy_vpc_endpoint_service_name || 'nil'}, "\
          "xks_proxy_authentication_credential=#{xks_proxy_authentication_credential || 'nil'}, "\
          "xks_proxy_connectivity=#{xks_proxy_connectivity || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    UpdateCustomKeyStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :description
    # @!attribute key_id
    #   <p>Updates the description of the specified KMS key.</p>
    #            <p>Specify the key ID or key ARN of the KMS key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>New description for the KMS key.</p>
    #            <important>
    #               <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p>
    #            </important>
    #   @return [String]
    UpdateKeyDescriptionInput = ::Struct.new(
      :key_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    UpdateKeyDescriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :primary_region
    # @!attribute key_id
    #   <p>Identifies the current primary key. When the operation completes, this KMS key will be a
    #         replica key.</p>
    #            <p>Specify the key ID or key ARN of a multi-Region primary key.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>The Amazon Web Services Region of the new primary key. Enter the Region ID, such as
    #           <code>us-east-1</code> or <code>ap-southeast-2</code>. There must be an existing replica key
    #         in this Region. </p>
    #            <p>When the operation completes, the multi-Region key in this Region will be the primary
    #         key.</p>
    #   @return [String]
    UpdatePrimaryRegionInput = ::Struct.new(
      :key_id,
      :primary_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    UpdatePrimaryRegionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [String] :message
    #   @option params [String] :message_type
    #   @option params [String] :signature
    #   @option params [String] :signing_algorithm
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute key_id
    #   <p>Identifies the asymmetric KMS key that will be used to verify the signature. This must be
    #         the same KMS key that was used to generate the signature. If you specify a different KMS key,
    #         the signature verification fails.</p>
    #            <p>To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a KMS key in a different Amazon Web Services account, you must use the key ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To get the key ID and key ARN for a KMS key, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies the message that was signed. You can submit a raw message of up to 4096 bytes,
    #         or a hash digest of the message. If you submit a digest, use the <code>MessageType</code>
    #         parameter with a value of <code>DIGEST</code>.</p>
    #            <p>If the message specified here is different from the message that was signed, the signature
    #         verification fails. A message and its hash digest are considered to be the same
    #         message.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>Tells KMS whether the value of the <code>Message</code> parameter should be hashed as
    #         part of the signing algorithm. Use <code>RAW</code> for unhashed messages; use
    #           <code>DIGEST</code> for message digests, which are already hashed.</p>
    #            <p>When the value of <code>MessageType</code> is <code>RAW</code>, KMS uses the standard
    #         signing algorithm, which begins with a hash function. When the value is <code>DIGEST</code>,
    #         KMS skips the hashing step in the signing algorithm.</p>
    #            <important>
    #               <p>Use the <code>DIGEST</code> value only when the value of the <code>Message</code>
    #           parameter is a message digest. If you use the <code>DIGEST</code> value with an unhashed
    #           message, the security of the verification operation can be compromised.</p>
    #            </important>
    #            <p>When the value of <code>MessageType</code>is <code>DIGEST</code>, the length of the
    #           <code>Message</code> value must match the length of hashed messages for the specified
    #         signing algorithm.</p>
    #            <p>You can submit a message digest and omit the <code>MessageType</code> or specify
    #           <code>RAW</code> so the digest is hashed again while signing. However, if the signed message
    #         is hashed once while signing, but twice while verifying, verification fails, even when the
    #         message hasn't changed.</p>
    #            <p>The hashing algorithm in that <code>Verify</code> uses is based on the
    #           <code>SigningAlgorithm</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_256 use the SHA_256 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_384 use the SHA_384 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>Signing algorithms that end in SHA_512 use the SHA_512 hashing algorithm.</p>
    #               </li>
    #               <li>
    #                  <p>SM2DSA uses the SM3 hashing algorithm. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification">Offline
    #               verification with SM2 key pairs</a>.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["RAW", "DIGEST"]
    #   @return [String]
    # @!attribute signature
    #   <p>The signature that the <code>Sign</code> operation generated.</p>
    #   @return [String]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm that was used to sign the message. If you submit a different
    #         algorithm, the signature verification fails.</p>
    #   Enum, one of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    VerifyInput = ::Struct.new(
      :key_id,
      :message,
      :message_type,
      :signature,
      :signing_algorithm,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::VerifyInput "\
          "key_id=#{key_id || 'nil'}, "\
          "message=\"[SENSITIVE]\", "\
          "message_type=#{message_type || 'nil'}, "\
          "signature=#{signature || 'nil'}, "\
          "signing_algorithm=#{signing_algorithm || 'nil'}, "\
          "grant_tokens=#{grant_tokens || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    #   @option params [String] :key_id
    #   @option params [String] :mac_algorithm
    #   @option params [String] :mac
    #   @option params [Array<String>] :grant_tokens
    #   @option params [Boolean] :dry_run
    # @!attribute message
    #   <p>The message that will be used in the verification. Enter the same message that was used to
    #         generate the HMAC.</p>
    #            <p>
    #               <a>GenerateMac</a> and <code>VerifyMac</code> do not provide special handling
    #         for message digests. If you generated an HMAC for a hash digest of a message, you must verify
    #         the HMAC for the same hash digest.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The KMS key that will be used in the verification.</p>
    #            <p>Enter a key ID of the KMS key that was used to generate the HMAC. If you identify a
    #         different KMS key, the <code>VerifyMac</code> operation fails.</p>
    #   @return [String]
    # @!attribute mac_algorithm
    #   <p>The MAC algorithm that will be used in the verification. Enter the same MAC algorithm that
    #         was used to compute the HMAC. This algorithm must be supported by the HMAC KMS key identified
    #         by the <code>KeyId</code> parameter.</p>
    #   Enum, one of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   @return [String]
    # @!attribute mac
    #   <p>The HMAC to verify. Enter the HMAC that was generated by the <a>GenerateMac</a>
    #         operation when you specified the same message, HMAC KMS key, and MAC algorithm as the values
    #         specified in this request.</p>
    #   @return [String]
    # @!attribute grant_tokens
    #   <p>A list of grant tokens.</p>
    #            <p>Use a grant token when your permission to call this operation comes from a new grant that has not yet achieved <i>eventual consistency</i>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">Grant token</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a grant token</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute dry_run
    #   <p>Checks if your request will succeed. <code>DryRun</code> is an optional parameter. </p>
    #            <p>To learn more about how to use this parameter, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-dryrun.html">Testing your KMS API calls</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [Boolean]
    VerifyMacInput = ::Struct.new(
      :message,
      :key_id,
      :mac_algorithm,
      :mac,
      :grant_tokens,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::VerifyMacInput "\
          "message=\"[SENSITIVE]\", "\
          "key_id=#{key_id || 'nil'}, "\
          "mac_algorithm=#{mac_algorithm || 'nil'}, "\
          "mac=#{mac || 'nil'}, "\
          "grant_tokens=#{grant_tokens || 'nil'}, "\
          "dry_run=#{dry_run || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Boolean] :mac_valid (false)
    #   @option params [String] :mac_algorithm
    # @!attribute key_id
    #   <p>The HMAC KMS key used in the verification.</p>
    #   @return [String]
    # @!attribute mac_valid
    #   <p>A Boolean value that indicates whether the HMAC was verified. A value of <code>True</code>
    #         indicates that the HMAC (<code>Mac</code>) was generated with the specified
    #           <code>Message</code>, HMAC KMS key (<code>KeyID</code>) and
    #         <code>MacAlgorithm.</code>.</p>
    #            <p>If the HMAC is not verified, the <code>VerifyMac</code> operation fails with a
    #           <code>KMSInvalidMacException</code> exception. This exception indicates that one or more of
    #         the inputs changed since the HMAC was computed.</p>
    #   @return [Boolean]
    # @!attribute mac_algorithm
    #   <p>The MAC algorithm used in the verification.</p>
    #   Enum, one of: ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   @return [String]
    VerifyMacOutput = ::Struct.new(
      :key_id,
      :mac_valid,
      :mac_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mac_valid = false if self.mac_valid.nil?
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id
    #   @option params [Boolean] :signature_valid (false)
    #   @option params [String] :signing_algorithm
    # @!attribute key_id
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the asymmetric KMS key that was used to verify the signature.</p>
    #   @return [String]
    # @!attribute signature_valid
    #   <p>A Boolean value that indicates whether the signature was verified. A value of
    #           <code>True</code> indicates that the <code>Signature</code> was produced by signing the
    #           <code>Message</code> with the specified <code>KeyID</code> and
    #           <code>SigningAlgorithm.</code> If the signature is not verified, the <code>Verify</code>
    #         operation fails with a <code>KMSInvalidSignatureException</code> exception. </p>
    #   @return [Boolean]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm that was used to verify the signature.</p>
    #   Enum, one of: ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   @return [String]
    VerifyOutput = ::Struct.new(
      :key_id,
      :signature_valid,
      :signing_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.signature_valid = false if self.signature_valid.nil?
      end
    end

    # Includes enum constants for WrappingKeySpec
    module WrappingKeySpec
      # No documentation available.
      RSA_2048 = "RSA_2048"

      # No documentation available.
      RSA_3072 = "RSA_3072"

      # No documentation available.
      RSA_4096 = "RSA_4096"
    end

    # <p>The request was rejected because the (<code>XksKeyId</code>) is already associated with
    #       another KMS key in this external key store. Each KMS key in an external key store must be
    #       associated with a different external key.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksKeyAlreadyInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">external key </a>that is
    #       associated with a KMS key in an external key store. </p>
    #          <p>This element appears in a <a>CreateKey</a> or <a>DescribeKey</a>
    #       response only for a KMS key in an external key store.</p>
    #          <p>The <i>external key</i> is a symmetric encryption key that is hosted by an
    #       external key manager outside of Amazon Web Services. When you use the KMS key in an external key store in a
    #       cryptographic operation, the cryptographic operation is performed in the external key manager
    #       using the specified external key. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html#concept-external-key">External key</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    # @!attribute id
    #   <p>The ID of the external key in its external key manager. This is the ID that the external
    #         key store proxy uses to identify the external key.</p>
    #   @return [String]
    XksKeyConfigurationType = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the external key specified by the <code>XksKeyId</code>
    #       parameter did not meet the configuration requirements for an external key store.</p>
    #          <p>The external key must be an AES-256 symmetric key that is enabled and performs encryption
    #       and decryption.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksKeyInvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the external key store proxy could not find the external
    #       key. This exception is thrown when the value of the <code>XksKeyId</code> parameter doesn't
    #       identify a key in the external key manager associated with the external key proxy.</p>
    #          <p>Verify that the <code>XksKeyId</code> represents an existing key in the external key
    #       manager. Use the key identifier that the external key store proxy uses to identify the key.
    #       For details, see the documentation provided with your external key store proxy or key
    #       manager.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksKeyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>KMS uses the authentication credential to sign requests that it sends to the external
    #       key store proxy (XKS proxy) on your behalf. You establish these credentials on your external
    #       key store proxy and report them to KMS.</p>
    #          <p>The <code>XksProxyAuthenticationCredential</code> includes two required elements.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :access_key_id
    #   @option params [String] :raw_secret_access_key
    # @!attribute access_key_id
    #   <p>A unique identifier for the raw secret access key.</p>
    #   @return [String]
    # @!attribute raw_secret_access_key
    #   <p>A secret string of 43-64 characters. Valid characters are a-z, A-Z, 0-9, /, +, and
    #         =.</p>
    #   @return [String]
    XksProxyAuthenticationCredentialType = ::Struct.new(
      :access_key_id,
      :raw_secret_access_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::XksProxyAuthenticationCredentialType "\
          "access_key_id=\"[SENSITIVE]\", "\
          "raw_secret_access_key=\"[SENSITIVE]\">"
      end
    end

    # <p>Detailed information about the external key store proxy (XKS proxy). Your external key
    #       store proxy translates KMS requests into a format that your external key manager can
    #       understand. These fields appear in a <a>DescribeCustomKeyStores</a> response only
    #       when the <code>CustomKeyStoreType</code> is <code>EXTERNAL_KEY_STORE</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :connectivity
    #   @option params [String] :access_key_id
    #   @option params [String] :uri_endpoint
    #   @option params [String] :uri_path
    #   @option params [String] :vpc_endpoint_service_name
    # @!attribute connectivity
    #   <p>Indicates whether the external key store proxy uses a public endpoint or an Amazon VPC endpoint
    #         service to communicate with KMS.</p>
    #   Enum, one of: ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The part of the external key store <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateCustomKeyStore.html#KMS-CreateCustomKeyStore-request-XksProxyAuthenticationCredential">proxy authentication credential</a> that uniquely identifies the secret access
    #         key.</p>
    #   @return [String]
    # @!attribute uri_endpoint
    #   <p>The URI endpoint for the external key store proxy.</p>
    #            <p>If the external key store proxy has a public endpoint, it is displayed here.</p>
    #            <p>If the external key store proxy uses an Amazon VPC endpoint service name, this field displays
    #         the private DNS name associated with the VPC endpoint service.</p>
    #   @return [String]
    # @!attribute uri_path
    #   <p>The path to the external key store proxy APIs.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_service_name
    #   <p>The Amazon VPC endpoint service used to communicate with the external key store proxy. This
    #         field appears only when the external key store proxy uses an Amazon VPC endpoint service to
    #         communicate with KMS.</p>
    #   @return [String]
    XksProxyConfigurationType = ::Struct.new(
      :connectivity,
      :access_key_id,
      :uri_endpoint,
      :uri_path,
      :vpc_endpoint_service_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KMS::Types::XksProxyConfigurationType "\
          "connectivity=#{connectivity || 'nil'}, "\
          "access_key_id=\"[SENSITIVE]\", "\
          "uri_endpoint=#{uri_endpoint || 'nil'}, "\
          "uri_path=#{uri_path || 'nil'}, "\
          "vpc_endpoint_service_name=#{vpc_endpoint_service_name || 'nil'}>"
      end
    end

    # Includes enum constants for XksProxyConnectivityType
    module XksProxyConnectivityType
      # No documentation available.
      PUBLIC_ENDPOINT = "PUBLIC_ENDPOINT"

      # No documentation available.
      VPC_ENDPOINT_SERVICE = "VPC_ENDPOINT_SERVICE"
    end

    # <p>The request was rejected because the proxy credentials failed to authenticate to the
    #       specified external key store proxy. The specified external key store proxy rejected a status
    #       request from KMS due to invalid credentials. This can indicate an error in the credentials
    #       or in the identification of the external key store proxy.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyIncorrectAuthenticationCredentialException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the external key store proxy is not configured correctly.
    #       To identify the cause, see the error message that accompanies the exception.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyInvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #          <p>KMS cannot interpret the response it received from the external key store proxy. The
    #       problem might be a poorly constructed response, but it could also be a transient network
    #       issue. If you see this error repeatedly, report it to the proxy vendor.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyInvalidResponseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the <code>XksProxyUriEndpoint</code> is already
    #       associated with another external key store in this Amazon Web Services Region. To identify the cause,
    #       see the error message that accompanies the exception. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyUriEndpointInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the concatenation of the <code>XksProxyUriEndpoint</code>
    #       and <code>XksProxyUriPath</code> is already associated with another external key store in this
    #       Amazon Web Services Region. Each external key store in a Region must use a unique external key store proxy
    #       API address.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyUriInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>KMS was unable to reach the specified <code>XksProxyUriPath</code>. The path must be
    #       reachable before you create the external key store or update its settings.</p>
    #          <p>This exception is also thrown when the external key store proxy response to a
    #         <code>GetHealthStatus</code> request indicates that all external key manager instances are
    #       unavailable.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyUriUnreachableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified Amazon VPC endpoint service is already
    #       associated with another external key store in this Amazon Web Services Region. Each external key store in a
    #       Region must use a different Amazon VPC endpoint service.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyVpcEndpointServiceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the Amazon VPC endpoint service configuration does not fulfill
    #       the requirements for an external key store. To identify the cause, see the error message that
    #       accompanies the exception and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/vpc-connectivity.html#xks-vpc-requirements">review the
    #         requirements</a> for Amazon VPC endpoint service connectivity for an external key
    #       store.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyVpcEndpointServiceInvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because KMS could not find the specified VPC endpoint service.
    #       Use <a>DescribeCustomKeyStores</a> to verify the VPC endpoint service name for the
    #       external key store. Also, confirm that the <code>Allow principals</code> list for the VPC
    #       endpoint service includes the KMS service principal for the Region, such as
    #         <code>cks.kms.us-east-1.amazonaws.com</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    XksProxyVpcEndpointServiceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
