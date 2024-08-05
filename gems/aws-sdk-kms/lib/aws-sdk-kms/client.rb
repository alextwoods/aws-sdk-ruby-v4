# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::KMS
  # <fullname>Key Management Service</fullname>
  #          <p>Key Management Service (KMS) is an encryption and key management web service. This guide describes
  #       the KMS operations that you can call programmatically. For general information about KMS,
  #       see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/">
  #                <i>Key Management Service Developer Guide</i>
  #             </a>.</p>
  #          <note>
  #             <p>KMS has replaced the term <i>customer master key (CMK)</i> with <i>KMS key</i> and <i>KMS key</i>. The concept has not changed. To prevent breaking changes, KMS is keeping some variations of this term.</p>
  #             <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various programming
  #         languages and platforms (Java, Ruby, .Net, macOS, Android, etc.). The SDKs provide a
  #         convenient way to create programmatic access to KMS and other Amazon Web Services services. For example,
  #         the SDKs take care of tasks such as signing requests (see below), managing errors, and
  #         retrying requests automatically. For more information about the Amazon Web Services SDKs, including how to
  #         download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web
  #           Services</a>.</p>
  #          </note>
  #          <p>We recommend that you use the Amazon Web Services SDKs to make programmatic API calls to KMS.</p>
  #          <p>If you need to use FIPS 140-2 validated cryptographic modules when communicating with
  #       Amazon Web Services, use the FIPS endpoint in your preferred Amazon Web Services Region. For more information about the
  #       available FIPS endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/kms.html#kms_region">Service endpoints</a> in the Key Management Service topic of
  #       the <i>Amazon Web Services General Reference</i>.</p>
  #          <p>All KMS API calls must be signed and be transmitted using Transport Layer Security
  #       (TLS). KMS recommends you always use the latest supported TLS version. Clients must also
  #       support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman
  #       (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7
  #       and later support these modes.</p>
  #          <p>
  #             <b>Signing Requests</b>
  #          </p>
  #          <p>Requests must be signed using an access key ID and a secret access key. We strongly
  #       recommend that you do not use your Amazon Web Services account root access key ID and secret access key for
  #       everyday work. You can use the access key ID and secret access key for an IAM user or you
  #       can use the Security Token Service (STS) to generate temporary security credentials and use those to sign
  #       requests. </p>
  #          <p>All KMS requests must be signed with <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
  #          <p>
  #             <b>Logging API Requests</b>
  #          </p>
  #          <p>KMS supports CloudTrail, a service that logs Amazon Web Services API calls and related events for your
  #       Amazon Web Services account and delivers them to an Amazon S3 bucket that you specify. By using the
  #       information collected by CloudTrail, you can determine what requests were made to KMS, who made
  #       the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it
  #       on and find your log files, see the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/">CloudTrail User Guide</a>.</p>
  #          <p>
  #             <b>Additional Resources</b>
  #          </p>
  #          <p>For more information about credentials and request signing, see the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">Amazon Web Services
  #             Security Credentials</a> - This topic provides general information about the types
  #           of credentials used to access Amazon Web Services.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary
  #             Security Credentials</a> - This section of the <i>IAM User Guide</i>
  #           describes how to create and use temporary security credentials.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version
  #             4 Signing Process</a> - This set of topics walks you through the process of signing
  #           a request using an access key ID and a secret access key.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Commonly Used API Operations</b>
  #          </p>
  #          <p>Of the API operations discussed in this guide, the following will prove the most useful
  #       for most applications. You will likely perform operations other than these, such as creating
  #       keys and assigning policies, by using the console.</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>Encrypt</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>Decrypt</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GenerateDataKey</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GenerateDataKeyWithoutPlaintext</a>
  #                </p>
  #             </li>
  #          </ul>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Cancels the deletion of a KMS key. When this operation succeeds, the key state of the KMS
    #       key is <code>Disabled</code>. To enable the KMS key, use <a>EnableKey</a>. </p>
    #          <p>For more information about scheduling and canceling deletion of a KMS key, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CancelKeyDeletion</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>ScheduleKeyDeletion</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::CancelKeyDeletionInput] params
    #   Request parameters for this operation.
    #   See {Types::CancelKeyDeletionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.cancel_key_deletion(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::CancelKeyDeletionOutput
    #   resp.data.key_id #=> String
    # @example To cancel deletion of a KMS key
    #   # The following example cancels deletion of the specified KMS key.
    #   resp = client.cancel_key_deletion({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    def cancel_key_deletion(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::CancelKeyDeletionInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::CancelKeyDeletion.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :cancel_key_deletion,
        tracer: tracer
      )
      Telemetry::CancelKeyDeletion.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#cancel_key_deletion] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#cancel_key_deletion] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#cancel_key_deletion] #{output.data}")
        output
      end
    end

    # <p>Connects or reconnects a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> to its backing key store. For an CloudHSM key
    #       store, <code>ConnectCustomKeyStore</code> connects the key store to its associated CloudHSM
    #       cluster. For an external key store, <code>ConnectCustomKeyStore</code> connects the key store
    #       to the external key store proxy that communicates with your external key manager.</p>
    #          <p>The custom key store must be connected before you can create KMS keys in the key store or
    #       use the KMS keys it contains. You can disconnect and reconnect a custom key store at any
    #       time.</p>
    #          <p>The connection process for a custom key store can take an extended amount of time to
    #       complete. This operation starts the connection process, but it does not wait for it to
    #       complete. When it succeeds, this operation quickly returns an HTTP 200 response and a JSON
    #       object with no properties. However, this response does not indicate that the custom key store
    #       is connected. To get the connection state of the custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>The <code>ConnectCustomKeyStore</code> operation might fail for various reasons. To find
    #       the reason, use the <a>DescribeCustomKeyStores</a> operation and see the
    #         <code>ConnectionErrorCode</code> in the response. For help interpreting the
    #         <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p>
    #          <p>To fix the failure, use the <a>DisconnectCustomKeyStore</a> operation to
    #       disconnect the custom key store, correct the error, use the <a>UpdateCustomKeyStore</a> operation if necessary, and then use
    #         <code>ConnectCustomKeyStore</code> again.</p>
    #          <p>
    #             <b>CloudHSM key store</b>
    #          </p>
    #          <p>During the connection process for an CloudHSM key store, KMS finds the CloudHSM cluster that
    #       is associated with the custom key store, creates the connection infrastructure, connects to
    #       the cluster, logs into the CloudHSM client as the <code>kmsuser</code> CU, and rotates its
    #       password.</p>
    #          <p>To connect an CloudHSM key store, its associated CloudHSM cluster must have at least one active
    #       HSM. To get the number of active HSMs in a cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation. To add HSMs
    #       to the cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a> operation. Also, the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser">
    #                <code>kmsuser</code> crypto
    #         user</a> (CU) must not be logged into the cluster. This prevents KMS from using this
    #       account to log in.</p>
    #          <p>If you are having trouble connecting or disconnecting a CloudHSM key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting an CloudHSM key
    #         store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>External key store</b>
    #          </p>
    #          <p>When you connect an external key store that uses public endpoint connectivity, KMS tests
    #       its ability to communicate with your external key manager by sending a request via the
    #       external key store proxy.</p>
    #          <p>When you connect to an external key store that uses VPC endpoint service connectivity,
    #       KMS establishes the networking elements that it needs to communicate with your external key
    #       manager via the external key store proxy. This includes creating an interface endpoint to the
    #       VPC endpoint service and a private hosted zone for traffic between KMS and the VPC endpoint
    #       service.</p>
    #          <p>To connect an external key store, KMS must be able to connect to the external key store
    #       proxy, the external key store proxy must be able to communicate with your external key
    #       manager, and the external key manager must be available for cryptographic operations.</p>
    #          <p>If you are having trouble connecting or disconnecting an external key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting an external
    #         key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ConnectCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ConnectCustomKeyStoreInput] params
    #   Request parameters for this operation.
    #   See {Types::ConnectCustomKeyStoreInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.connect_custom_key_store(
    #     custom_key_store_id: 'CustomKeyStoreId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ConnectCustomKeyStoreOutput
    # @example To connect a custom key store
    #   # This example connects an AWS KMS custom key store to its backing key store. For an AWS CloudHSM key store, it connects the key store to its AWS CloudHSM cluster. For an external key store, it connects the key store to the external key store proxy that communicates with your external key manager. This operation does not return any data. To verify that the custom key store is connected, use the <code>DescribeCustomKeyStores</code> operation.
    #   resp = client.connect_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def connect_custom_key_store(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ConnectCustomKeyStoreInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ConnectCustomKeyStore.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :connect_custom_key_store,
        tracer: tracer
      )
      Telemetry::ConnectCustomKeyStore.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#connect_custom_key_store] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#connect_custom_key_store] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#connect_custom_key_store] #{output.data}")
        output
      end
    end

    # <p>Creates a friendly name for a KMS key. </p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>You can use an alias to identify a KMS key in the KMS console, in the <a>DescribeKey</a> operation and in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a>, such as <a>Encrypt</a> and
    #         <a>GenerateDataKey</a>. You can also change the KMS key that's associated with
    #       the alias (<a>UpdateAlias</a>) or delete the alias (<a>DeleteAlias</a>)
    #       at any time. These operations don't affect the underlying KMS key. </p>
    #          <p>You can associate the alias with any customer managed key in the same Amazon Web Services Region. Each
    #       alias is associated with only one KMS key at a time, but a KMS key can have multiple aliases.
    #       A valid KMS key is required. You can't create an alias without a KMS key.</p>
    #          <p>The alias must be unique in the account and Region, but you can have aliases with the same
    #       name in different Regions. For detailed information about aliases, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html">Using aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation does not return a response. To get the alias that you created, use the
    #         <a>ListAliases</a> operation.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on an alias in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateAlias</a> on
    #           the KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::CreateAliasInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateAliasInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_alias(
    #     alias_name: 'AliasName', # required
    #     target_key_id: 'TargetKeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateAliasOutput
    # @example To create an alias
    #   # The following example creates an alias for the specified KMS key.
    #   resp = client.create_alias({
    #     alias_name: "alias/ExampleAlias",
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def create_alias(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::CreateAliasInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::CreateAlias.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_alias,
        tracer: tracer
      )
      Telemetry::CreateAlias.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_alias] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_alias] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_alias] #{output.data}")
        output
      end
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> backed by a key store that you own and manage. When you use a
    #       KMS key in a custom key store for a cryptographic operation, the cryptographic operation is
    #       actually performed in your key store using your keys. KMS supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a>
    #       backed by an <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html">CloudHSM cluster</a>
    #       and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key
    #         stores</a> backed by an external key store proxy and external key manager outside of
    #       Amazon Web Services.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>Before you create the custom key store, the required elements must be in place and
    #       operational. We recommend that you use the test tools that KMS provides to verify the
    #       configuration your external key store proxy. For details about the required elements and
    #       verification tests, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble the prerequisites (for
    #         CloudHSM key stores)</a> or <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-xks-keystore.html#xks-requirements">Assemble the prerequisites (for
    #         external key stores)</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>To create a custom key store, use the following parameters.</p>
    #          <ul>
    #             <li>
    #                <p>To create an CloudHSM key store, specify the <code>CustomKeyStoreName</code>,
    #             <code>CloudHsmClusterId</code>, <code>KeyStorePassword</code>, and
    #             <code>TrustAnchorCertificate</code>. The <code>CustomKeyStoreType</code> parameter is
    #           optional for CloudHSM key stores. If you include it, set it to the default value,
    #             <code>AWS_CLOUDHSM</code>. For help with failures, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting an CloudHSM key store</a> in the
    #           <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>To create an external key store, specify the <code>CustomKeyStoreName</code> and a
    #             <code>CustomKeyStoreType</code> of <code>EXTERNAL_KEY_STORE</code>. Also, specify values
    #           for <code>XksProxyConnectivity</code>, <code>XksProxyAuthenticationCredential</code>,
    #             <code>XksProxyUriEndpoint</code>, and <code>XksProxyUriPath</code>. If your
    #             <code>XksProxyConnectivity</code> value is <code>VPC_ENDPOINT_SERVICE</code>, specify
    #           the <code>XksProxyVpcEndpointServiceName</code> parameter. For help with failures, see
    #             <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting
    #             an external key store</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>For external key stores:</p>
    #             <p>Some external key managers provide a simpler method for creating an external key store.
    #         For details, see your external key manager documentation.</p>
    #             <p>When creating an external key store in the KMS console, you can upload a JSON-based
    #         proxy configuration file with the desired values. You cannot use a proxy configuration with
    #         the <code>CreateCustomKeyStore</code> operation. However, you can use the values in the file
    #         to help you determine the correct values for the <code>CreateCustomKeyStore</code>
    #         parameters.</p>
    #          </note>
    #          <p>When the operation completes successfully, it returns the ID of the new custom key store.
    #       Before you can use your new custom key store, you need to use the <a>ConnectCustomKeyStore</a> operation to connect a new CloudHSM key store to its CloudHSM
    #       cluster, or to connect a new external key store to the external key store proxy for your
    #       external key manager. Even if you are not going to use your custom key store immediately, you
    #       might want to connect it to verify that all settings are correct and then disconnect it until
    #       you are ready to use it.</p>
    #          <p>For help with failures, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting a custom key store</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateCustomKeyStore</a> (IAM policy).</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::CreateCustomKeyStoreInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateCustomKeyStoreInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_custom_key_store(
    #     custom_key_store_name: 'CustomKeyStoreName', # required
    #     cloud_hsm_cluster_id: 'CloudHsmClusterId',
    #     trust_anchor_certificate: 'TrustAnchorCertificate',
    #     key_store_password: 'KeyStorePassword',
    #     custom_key_store_type: 'AWS_CLOUDHSM', # accepts ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #     xks_proxy_uri_endpoint: 'XksProxyUriEndpoint',
    #     xks_proxy_uri_path: 'XksProxyUriPath',
    #     xks_proxy_vpc_endpoint_service_name: 'XksProxyVpcEndpointServiceName',
    #     xks_proxy_authentication_credential: {
    #       access_key_id: 'AccessKeyId', # required
    #       raw_secret_access_key: 'RawSecretAccessKey' # required
    #     },
    #     xks_proxy_connectivity: 'PUBLIC_ENDPOINT' # accepts ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateCustomKeyStoreOutput
    #   resp.data.custom_key_store_id #=> String
    # @example To create an AWS CloudHSM key store
    #   # This example creates a custom key store that is associated with an AWS CloudHSM cluster.
    #   resp = client.create_custom_key_store({
    #     custom_key_store_name: "ExampleKeyStore",
    #     cloud_hsm_cluster_id: "cluster-234abcdefABC",
    #     trust_anchor_certificate: "<certificate-goes-here>",
    #     key_store_password: "kmsPswd"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   }
    def create_custom_key_store(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::CreateCustomKeyStoreInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::CreateCustomKeyStore.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_custom_key_store,
        tracer: tracer
      )
      Telemetry::CreateCustomKeyStore.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_custom_key_store] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_custom_key_store] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_custom_key_store] #{output.data}")
        output
      end
    end

    # <p>Adds a grant to a KMS key. </p>
    #          <p>A <i>grant</i> is a policy instrument that allows Amazon Web Services principals to use
    #       KMS keys in cryptographic operations. It also can allow them to view a KMS key (<a>DescribeKey</a>) and create and manage grants. When authorizing access to a KMS key,
    #       grants are considered along with key policies and IAM policies. Grants are often used for
    #       temporary permissions because you can create one, use its permissions, and delete it without
    #       changing your key policies or IAM policies. </p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of working with grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html">Programming grants</a>. </p>
    #          <p>The <code>CreateGrant</code> operation returns a <code>GrantToken</code> and a
    #         <code>GrantId</code>.</p>
    #          <ul>
    #             <li>
    #                <p>When you create, retire, or revoke a grant, there might be a brief delay, usually less than five minutes, until the grant is available throughout KMS. This state is known as <i>eventual consistency</i>. Once the grant has achieved eventual consistency, the grantee
    #           principal can use the permissions in the grant without identifying the grant. </p>
    #                <p>However, to use the permissions in the grant immediately, use the
    #             <code>GrantToken</code> that <code>CreateGrant</code> returns. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token">Using a
    #             grant token</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>CreateGrant</code> operation also returns a <code>GrantId</code>. You can
    #           use the <code>GrantId</code> and a key identifier to identify the grant in the <a>RetireGrant</a> and <a>RevokeGrant</a> operations. To find the grant
    #           ID, use the <a>ListGrants</a> or <a>ListRetirableGrants</a>
    #           operations.</p>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateGrant</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::CreateGrantInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateGrantInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_grant(
    #     key_id: 'KeyId', # required
    #     grantee_principal: 'GranteePrincipal', # required
    #     retiring_principal: 'RetiringPrincipal',
    #     operations: [
    #       'Decrypt' # accepts ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac"]
    #     ], # required
    #     constraints: {
    #       encryption_context_subset: {
    #         'key' => 'value'
    #       },
    #     },
    #     grant_tokens: [
    #       'member'
    #     ],
    #     name: 'Name',
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateGrantOutput
    #   resp.data.grant_token #=> String
    #   resp.data.grant_id #=> String
    # @example To create a grant
    #   # The following example creates a grant that allows the specified IAM role to encrypt data with the specified KMS key.
    #   resp = client.create_grant({
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grantee_principal: "arn:aws:iam::111122223333:role/ExampleRole",
    #     operations: [
    #       "Encrypt",
    #       "Decrypt"
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     grant_token: "AQpAM2RhZTk1MGMyNTk2ZmZmMzEyYWVhOWViN2I1MWM4Mzc0MWFiYjc0ZDE1ODkyNGFlNTIzODZhMzgyZjBlNGY3NiKIAgEBAgB4Pa6VDCWW__MSrqnre1HIN0Grt00ViSSuUjhqOC8OT3YAAADfMIHcBgkqhkiG9w0BBwaggc4wgcsCAQAwgcUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMmqLyBTAegIn9XlK5AgEQgIGXZQjkBcl1dykDdqZBUQ6L1OfUivQy7JVYO2-ZJP7m6f1g8GzV47HX5phdtONAP7K_HQIflcgpkoCqd_fUnE114mSmiagWkbQ5sqAVV3ov-VeqgrvMe5ZFEWLMSluvBAqdjHEdMIkHMlhlj4ENZbzBfo9Wxk8b8SnwP4kc4gGivedzFXo-dwN8fxjjq_ZZ9JFOj2ijIbj5FyogDCN0drOfi8RORSEuCEmPvjFRMFAwcmwFkN2NPp89amA",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   }
    def create_grant(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::CreateGrantInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::CreateGrant.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_grant,
        tracer: tracer
      )
      Telemetry::CreateGrant.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_grant] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_grant] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_grant] #{output.data}")
        output
      end
    end

    # <p>Creates a unique customer managed <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms-keys">KMS key</a> in your Amazon Web Services account and Region.
    #       You can use a KMS key in cryptographic operations, such as encryption and signing. Some Amazon Web Services
    #       services let you use KMS keys that you create and manage to protect your service
    #       resources.</p>
    #          <p>A KMS key is a logical representation of a cryptographic key. In addition to the key
    #       material used in cryptographic operations, a KMS key includes metadata, such as the key ID,
    #       key policy, creation date, description, and key state. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html">Managing keys</a> in the
    #       <i>Key Management Service Developer Guide</i>
    #          </p>
    #          <p>Use the parameters of <code>CreateKey</code> to specify the type of KMS key, the source of
    #       its key material, its key policy, description, tags, and other properties.</p>
    #          <note>
    #             <p>KMS has replaced the term <i>customer master key (CMK)</i> with <i>KMS key</i> and <i>KMS key</i>. The concept has not changed. To prevent breaking changes, KMS is keeping some variations of this term.</p>
    #          </note>
    #          <p>To create different types of KMS keys, use the following guidance:</p>
    #          <dl>
    #             <dt>Symmetric encryption KMS key</dt>
    #             <dd>
    #                <p>By default, <code>CreateKey</code> creates a symmetric encryption KMS key with key
    #             material that KMS generates. This is the basic and most widely used type of KMS key, and
    #             provides the best performance.</p>
    #                <p>To create a symmetric encryption KMS key, you don't need to specify any parameters.
    #             The default value for <code>KeySpec</code>, <code>SYMMETRIC_DEFAULT</code>, the default
    #             value for <code>KeyUsage</code>, <code>ENCRYPT_DECRYPT</code>, and the default value for
    #               <code>Origin</code>, <code>AWS_KMS</code>, create a symmetric encryption KMS key with
    #             KMS key material.</p>
    #                <p>If you need a key for basic encryption and decryption or you are creating a KMS key
    #             to protect your resources in an Amazon Web Services service, create a symmetric encryption KMS key.
    #             The key material in a symmetric encryption key never leaves KMS unencrypted. You can
    #             use a symmetric encryption KMS key to encrypt and decrypt data up to 4,096 bytes, but
    #             they are typically used to generate data keys and data keys pairs. For details, see
    #               <a>GenerateDataKey</a> and <a>GenerateDataKeyPair</a>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Asymmetric KMS keys</dt>
    #             <dd>
    #                <p>To create an asymmetric KMS key, use the <code>KeySpec</code> parameter to specify
    #             the type of key material in the KMS key. Then, use the <code>KeyUsage</code> parameter
    #             to determine whether the KMS key will be used to encrypt and decrypt or sign and verify.
    #             You can't change these properties after the KMS key is created.</p>
    #                <p>Asymmetric KMS keys contain an RSA key pair, Elliptic Curve (ECC) key pair, or an
    #             SM2 key pair (China Regions only). The private key in an asymmetric KMS key never leaves
    #             KMS unencrypted. However, you can use the <a>GetPublicKey</a> operation to
    #             download the public key so it can be used outside of KMS. KMS keys with RSA or SM2 key
    #             pairs can be used to encrypt or decrypt data or sign and verify messages (but not both).
    #             KMS keys with ECC key pairs can be used only to sign and verify messages. For
    #             information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the
    #             <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>HMAC KMS key</dt>
    #             <dd>
    #                <p>To create an HMAC KMS key, set the <code>KeySpec</code> parameter to a key spec
    #             value for HMAC KMS keys. Then set the <code>KeyUsage</code> parameter to
    #               <code>GENERATE_VERIFY_MAC</code>. You must set the key usage even though
    #               <code>GENERATE_VERIFY_MAC</code> is the only valid key usage value for HMAC KMS keys.
    #             You can't change these properties after the KMS key is created.</p>
    #                <p>HMAC KMS keys are symmetric keys that never leave KMS unencrypted. You can use
    #             HMAC keys to generate (<a>GenerateMac</a>) and verify (<a>VerifyMac</a>) HMAC codes for messages up to 4096 bytes.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Multi-Region primary keys</dt>
    #             <dt>Imported key material</dt>
    #             <dd>
    #                <p>To create a multi-Region <i>primary key</i> in the local Amazon Web Services Region,
    #             use the <code>MultiRegion</code> parameter with a value of <code>True</code>. To create
    #             a multi-Region <i>replica key</i>, that is, a KMS key with the same key ID
    #             and key material as a primary key, but in a different Amazon Web Services Region, use the <a>ReplicateKey</a> operation. To change a replica key to a primary key, and its
    #             primary key to a replica key, use the <a>UpdatePrimaryRegion</a>
    #             operation.</p>
    #                <p>You can create multi-Region KMS keys for all supported KMS key types: symmetric
    #             encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS keys, and asymmetric
    #             signing KMS keys. You can also create multi-Region keys with imported key material.
    #             However, you can't create multi-Region keys in a custom key store.</p>
    #                <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dd>
    #                <p>To import your own key material into a KMS key, begin by creating a KMS key with no
    #             key material. To do this, use the <code>Origin</code> parameter of
    #               <code>CreateKey</code> with a value of <code>EXTERNAL</code>. Next, use <a>GetParametersForImport</a> operation to get a public key and import token. Use
    #             the wrapping public key to encrypt your key material. Then, use <a>ImportKeyMaterial</a> with your import token to import the key material. For
    #             step-by-step instructions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>
    #                      <i>Key Management Service Developer Guide</i>
    #                   </i>.</p>
    #                <p>You can import key material into KMS keys of all supported KMS key types: symmetric
    #             encryption KMS keys, HMAC KMS keys, asymmetric encryption KMS keys, and asymmetric
    #             signing KMS keys. You can also create multi-Region keys with imported key material.
    #             However, you can't import key material into a KMS key in a custom key store.</p>
    #                <p>To create a multi-Region primary key with imported key material, use the
    #               <code>Origin</code> parameter of <code>CreateKey</code> with a value of
    #               <code>EXTERNAL</code> and the <code>MultiRegion</code> parameter with a value of
    #               <code>True</code>. To create replicas of the multi-Region primary key, use the <a>ReplicateKey</a> operation. For instructions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html ">Importing key material into
    #               multi-Region keys</a>. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p> </p>
    #             </dd>
    #             <dt>Custom key store</dt>
    #             <dd>
    #                <p>A <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> lets you protect your Amazon Web Services resources using keys in a backing key
    #             store that you own and manage. When you request a cryptographic operation with a KMS key
    #             in a custom key store, the operation is performed in the backing key store using its
    #             cryptographic keys.</p>
    #                <p>KMS supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a> backed by an CloudHSM cluster and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key stores</a> backed by an
    #             external key manager outside of Amazon Web Services. When you create a KMS key in an CloudHSM key store,
    #             KMS generates an encryption key in the CloudHSM cluster and associates it with the KMS
    #             key. When you create a KMS key in an external key store, you specify an existing
    #             encryption key in the external key manager.</p>
    #                <note>
    #                   <p>Some external key managers provide a simpler method for creating a KMS key in an
    #               external key store. For details, see your external key manager documentation.</p>
    #                </note>
    #                <p>Before you create a KMS key in a custom key store, the <code>ConnectionState</code>
    #             of the key store must be <code>CONNECTED</code>. To connect the custom key store, use
    #             the <a>ConnectCustomKeyStore</a> operation. To find the
    #               <code>ConnectionState</code>, use the <a>DescribeCustomKeyStores</a>
    #             operation.</p>
    #                <p>To create a KMS key in a custom key store, use the <code>CustomKeyStoreId</code>.
    #             Use the default <code>KeySpec</code> value, <code>SYMMETRIC_DEFAULT</code>, and the
    #             default <code>KeyUsage</code> value, <code>ENCRYPT_DECRYPT</code> to create a symmetric
    #             encryption key. No other key type is supported in a custom key store.</p>
    #                <p>To create a KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key store</a>, use the
    #               <code>Origin</code> parameter with a value of <code>AWS_CLOUDHSM</code>. The CloudHSM
    #             cluster that is associated with the custom key store must have at least two active HSMs
    #             in different Availability Zones in the Amazon Web Services Region.</p>
    #                <p>To create a KMS key in an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key store</a>, use the
    #               <code>Origin</code> parameter with a value of <code>EXTERNAL_KEY_STORE</code> and an
    #               <code>XksKeyId</code> parameter that identifies an existing external key.</p>
    #                <note>
    #                   <p>Some external key managers provide a simpler method for creating a KMS key in an
    #               external key store. For details, see your external key manager documentation.</p>
    #                </note>
    #             </dd>
    #          </dl>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation to
    #       create a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:CreateKey</a> (IAM policy). To use the
    #         <code>Tags</code> parameter, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> (IAM policy). For examples and information about related
    #       permissions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key">Allow a user to create
    #         KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeys</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ScheduleKeyDeletion</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::CreateKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_key(
    #     policy: 'Policy',
    #     description: 'Description',
    #     key_usage: 'SIGN_VERIFY', # accepts ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #     customer_master_key_spec: 'RSA_2048', # accepts ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #     key_spec: 'RSA_2048', # accepts ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #     origin: 'AWS_KMS', # accepts ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #     custom_key_store_id: 'CustomKeyStoreId',
    #     bypass_policy_lockout_safety_check: false,
    #     tags: [
    #       {
    #         tag_key: 'TagKey', # required
    #         tag_value: 'TagValue' # required
    #       }
    #     ],
    #     multi_region: false,
    #     xks_key_id: 'XksKeyId'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateKeyOutput
    #   resp.data.key_metadata #=> Types::KeyMetadata
    #   resp.data.key_metadata.aws_account_id #=> String
    #   resp.data.key_metadata.key_id #=> String
    #   resp.data.key_metadata.arn #=> String
    #   resp.data.key_metadata.creation_date #=> Time
    #   resp.data.key_metadata.enabled #=> Boolean
    #   resp.data.key_metadata.description #=> String
    #   resp.data.key_metadata.key_usage #=> String, one of ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   resp.data.key_metadata.key_state #=> String, one of ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   resp.data.key_metadata.deletion_date #=> Time
    #   resp.data.key_metadata.valid_to #=> Time
    #   resp.data.key_metadata.origin #=> String, one of ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   resp.data.key_metadata.custom_key_store_id #=> String
    #   resp.data.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.data.key_metadata.expiration_model #=> String, one of ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   resp.data.key_metadata.key_manager #=> String, one of ["AWS", "CUSTOMER"]
    #   resp.data.key_metadata.customer_master_key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_metadata.key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_metadata.encryption_algorithms #=> Array<String>
    #   resp.data.key_metadata.encryption_algorithms[0] #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.key_metadata.signing_algorithms #=> Array<String>
    #   resp.data.key_metadata.signing_algorithms[0] #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   resp.data.key_metadata.multi_region #=> Boolean
    #   resp.data.key_metadata.multi_region_configuration #=> Types::MultiRegionConfiguration
    #   resp.data.key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of ["PRIMARY", "REPLICA"]
    #   resp.data.key_metadata.multi_region_configuration.primary_key #=> Types::MultiRegionKey
    #   resp.data.key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.data.key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.data.key_metadata.multi_region_configuration.replica_keys #=> Array<MultiRegionKey>
    #   resp.data.key_metadata.pending_deletion_window_in_days #=> Integer
    #   resp.data.key_metadata.mac_algorithms #=> Array<String>
    #   resp.data.key_metadata.mac_algorithms[0] #=> String, one of ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   resp.data.key_metadata.xks_key_configuration #=> Types::XksKeyConfigurationType
    #   resp.data.key_metadata.xks_key_configuration.id #=> String
    def create_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::CreateKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::CreateKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_key,
        tracer: tracer
      )
      Telemetry::CreateKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_key] #{output.data}")
        output
      end
    end

    # <p>Decrypts ciphertext that was encrypted by a KMS key using any of the following
    #       operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can use this operation to decrypt ciphertext that was encrypted under a symmetric
    #       encryption KMS key or an asymmetric encryption KMS key. When the KMS key is asymmetric, you
    #       must specify the KMS key and the encryption algorithm that was used to encrypt the ciphertext.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The <code>Decrypt</code> operation also decrypts ciphertext that was encrypted outside of
    #       KMS by the public key in an KMS asymmetric KMS key. However, it cannot decrypt symmetric
    #       ciphertext produced by other libraries, such as the <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services Encryption SDK</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 client-side encryption</a>.
    #       These libraries return a ciphertext format that is incompatible with KMS.</p>
    #          <p>If the ciphertext was encrypted under a symmetric encryption KMS key, the
    #         <code>KeyId</code> parameter is optional. KMS can get this information from metadata that
    #       it adds to the symmetric ciphertext blob. This feature adds durability to your implementation
    #       by ensuring that authorized users can decrypt ciphertext decades after it was encrypted, even
    #       if they've lost track of the key ID. However, specifying the KMS key is always recommended as
    #       a best practice. When you use the <code>KeyId</code> parameter to specify a KMS key, KMS
    #       only uses the KMS key you specify. If the ciphertext was encrypted under a different KMS key,
    #       the <code>Decrypt</code> operation fails. This practice ensures that you use the KMS key that
    #       you intend.</p>
    #          <p>Whenever possible, use key policies to give users permission to call the
    #         <code>Decrypt</code> operation on a particular KMS key, instead of using &IAM; policies.
    #       Otherwise, you might create an &IAM; policy that gives the user <code>Decrypt</code>
    #       permission on all KMS keys. This user could decrypt ciphertext that was encrypted by KMS keys
    #       in other accounts if the key policy for the cross-account KMS key permits it. If you must use
    #       an IAM policy for <code>Decrypt</code> permissions, limit the user to particular KMS keys or
    #       particular trusted accounts. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices">Best practices for IAM
    #         policies</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <code>Decrypt</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>Decrypt</code> for a Nitro enclave, use
    #       the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter to provide the
    #       attestation document for the enclave. Instead of the plaintext data, the response includes the
    #       plaintext data encrypted with the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>). For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. If you use the <code>KeyId</code>
    #       parameter to identify a KMS key in a different Amazon Web Services account, specify the key ARN or the alias
    #       ARN of the KMS key.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Decrypt</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReEncrypt</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DecryptInput] params
    #   Request parameters for this operation.
    #   See {Types::DecryptInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.decrypt(
    #     ciphertext_blob: 'CiphertextBlob', # required
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     grant_tokens: [
    #       'member'
    #     ],
    #     key_id: 'KeyId',
    #     encryption_algorithm: 'SYMMETRIC_DEFAULT', # accepts ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #     recipient: {
    #       key_encryption_algorithm: 'RSAES_OAEP_SHA_256', # accepts ["RSAES_OAEP_SHA_256"]
    #       attestation_document: 'AttestationDocument'
    #     },
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::DecryptOutput
    #   resp.data.key_id #=> String
    #   resp.data.plaintext #=> String
    #   resp.data.encryption_algorithm #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.ciphertext_for_recipient #=> String
    # @example To decrypt data with a symmetric encryption KMS key
    #   # The following example decrypts data that was encrypted with a symmetric encryption KMS key. The KeyId is not required when decrypting with a symmetric encryption key, but it is a best practice.
    #   resp = client.decrypt({
    #     ciphertext_blob: '<binary data>',
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     plaintext: '<binary data>',
    #     encryption_algorithm: "SYMMETRIC_DEFAULT"
    #   }
    # @example To decrypt data with an asymmetric encryption KMS key
    #   # The following example decrypts data that was encrypted with an asymmetric encryption KMS key. When the KMS encryption key is asymmetric, you must specify the KMS key ID and the encryption algorithm that was used to encrypt the data.
    #   resp = client.decrypt({
    #     ciphertext_blob: '<binary data>',
    #     key_id: "0987dcba-09fe-87dc-65ba-ab0987654321",
    #     encryption_algorithm: "RSAES_OAEP_SHA_256"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     plaintext: '<binary data>',
    #     encryption_algorithm: "RSAES_OAEP_SHA_256"
    #   }
    def decrypt(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DecryptInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::Decrypt.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :decrypt,
        tracer: tracer
      )
      Telemetry::Decrypt.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decrypt] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#decrypt] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decrypt] #{output.data}")
        output
      end
    end

    # <p>Deletes the specified alias. </p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>Because an alias is not a property of a KMS key, you can delete and change the aliases of
    #       a KMS key without affecting the KMS key. Also, aliases do not appear in the response from the
    #         <a>DescribeKey</a> operation. To get the aliases of all KMS keys, use the <a>ListAliases</a> operation. </p>
    #          <p>Each KMS key can have multiple aliases. To change the alias of a KMS key, use <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to
    #       create a new alias. To associate an existing alias with a different KMS key, call <a>UpdateAlias</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on an alias in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteAlias</a> on
    #           the KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DeleteAliasInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteAliasInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_alias(
    #     alias_name: 'AliasName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteAliasOutput
    # @example To delete an alias
    #   # The following example deletes the specified alias.
    #   resp = client.delete_alias({
    #     alias_name: "alias/ExampleAlias"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_alias(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DeleteAliasInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DeleteAlias.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_alias,
        tracer: tracer
      )
      Telemetry::DeleteAlias.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_alias] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_alias] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_alias] #{output.data}")
        output
      end
    end

    # <p>Deletes a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. This operation does not affect any backing elements of the
    #       custom key store. It does not delete the CloudHSM cluster that is associated with an CloudHSM key
    #       store, or affect any users or keys in the cluster. For an external key store, it does not
    #       affect the external key store proxy, external key manager, or any external keys.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>The custom key store that you delete cannot contain any <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys">KMS keys</a>. Before deleting the key store,
    #       verify that you will never need to use any of the KMS keys in the key store for any
    #       <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a>. Then, use <a>ScheduleKeyDeletion</a> to delete the KMS keys from the
    #       key store. After the required waiting period expires and all KMS keys are deleted from the
    #       custom key store, use <a>DisconnectCustomKeyStore</a> to disconnect the key store
    #       from KMS. Then, you can delete the custom key store.</p>
    #          <p>For keys in an CloudHSM key store, the <code>ScheduleKeyDeletion</code> operation makes a
    #       best effort to delete the key material from the associated cluster. However, you might need to
    #       manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete the orphaned key
    #         material</a> from the cluster and its backups. KMS never creates, manages, or deletes
    #       cryptographic keys in the external key manager associated with an external key store. You must
    #       manage them using your external key manager tools.</p>
    #          <p>Instead of deleting the custom key store, consider using the <a>DisconnectCustomKeyStore</a> operation to disconnect the custom key store from its
    #       backing key store. While the key store is disconnected, you cannot create or use the KMS keys
    #       in the key store. But, you do not need to delete KMS keys and you can reconnect a disconnected
    #       custom key store at any time.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DeleteCustomKeyStoreInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteCustomKeyStoreInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_custom_key_store(
    #     custom_key_store_id: 'CustomKeyStoreId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteCustomKeyStoreOutput
    # @example To delete a custom key store from AWS KMS
    #   # This example deletes a custom key store from AWS KMS. This operation does not affect the backing key store, such as a CloudHSM cluster, external key store proxy, or your external key manager. This operation doesn't return any data. To verify that the operation was successful, use the DescribeCustomKeyStores operation.
    #   resp = client.delete_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def delete_custom_key_store(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DeleteCustomKeyStoreInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DeleteCustomKeyStore.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_custom_key_store,
        tracer: tracer
      )
      Telemetry::DeleteCustomKeyStore.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_custom_key_store] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_custom_key_store] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_custom_key_store] #{output.data}")
        output
      end
    end

    # <p>Deletes key material that was previously imported. This operation makes the specified KMS
    #       key temporarily unusable. To restore the usability of the KMS key, reimport the same key
    #       material. For more information about importing key material into KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a>
    #       in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>When the specified KMS key is in the <code>PendingDeletion</code> state, this operation
    #       does not change the KMS key's state. Otherwise, it changes the KMS key's state to
    #         <code>PendingImport</code>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DeleteImportedKeyMaterial</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetParametersForImport</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DeleteImportedKeyMaterialInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteImportedKeyMaterialInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_imported_key_material(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteImportedKeyMaterialOutput
    # @example To delete imported key material
    #   # The following example deletes the imported key material from the specified KMS key.
    #   resp = client.delete_imported_key_material({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_imported_key_material(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DeleteImportedKeyMaterialInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DeleteImportedKeyMaterial.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_imported_key_material,
        tracer: tracer
      )
      Telemetry::DeleteImportedKeyMaterial.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_imported_key_material] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_imported_key_material] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_imported_key_material] #{output.data}")
        output
      end
    end

    # <p>Gets information about <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> in the account and Region.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>By default, this operation returns information about all custom key stores in the account
    #       and Region. To get only information about a particular custom key store, use either the
    #         <code>CustomKeyStoreName</code> or <code>CustomKeyStoreId</code> parameter (but not
    #       both).</p>
    #          <p>To determine whether the custom key store is connected to its CloudHSM cluster or external
    #       key store proxy, use the <code>ConnectionState</code> element in the response. If an attempt
    #       to connect the custom key store failed, the <code>ConnectionState</code> value is
    #         <code>FAILED</code> and the <code>ConnectionErrorCode</code> element in the response
    #       indicates the cause of the failure. For help interpreting the
    #       <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p>
    #          <p>Custom key stores have a <code>DISCONNECTED</code> connection state if the key store has
    #       never been connected or you used the <a>DisconnectCustomKeyStore</a> operation to
    #       disconnect it. Otherwise, the connection state is CONNECTED. If your custom key store
    #       connection state is <code>CONNECTED</code> but you are having trouble using it, verify that
    #       the backing store is active and available. For an CloudHSM key store, verify that the associated
    #       CloudHSM cluster is active and contains the minimum number of HSMs required for the operation, if
    #       any. For an external key store, verify that the external key store proxy and its associated
    #       external key manager are reachable and enabled.</p>
    #          <p> For help repairing your CloudHSM key store, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting CloudHSM key stores</a>. For help
    #       repairing your external key store, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/xks-troubleshooting.html">Troubleshooting external key stores</a>.
    #       Both topics are in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DescribeCustomKeyStores</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DescribeCustomKeyStoresInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeCustomKeyStoresInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_custom_key_stores(
    #     custom_key_store_id: 'CustomKeyStoreId',
    #     custom_key_store_name: 'CustomKeyStoreName',
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeCustomKeyStoresOutput
    #   resp.data.custom_key_stores #=> Array<CustomKeyStoresListEntry>
    #   resp.data.custom_key_stores[0] #=> Types::CustomKeyStoresListEntry
    #   resp.data.custom_key_stores[0].custom_key_store_id #=> String
    #   resp.data.custom_key_stores[0].custom_key_store_name #=> String
    #   resp.data.custom_key_stores[0].cloud_hsm_cluster_id #=> String
    #   resp.data.custom_key_stores[0].trust_anchor_certificate #=> String
    #   resp.data.custom_key_stores[0].connection_state #=> String, one of ["CONNECTED", "CONNECTING", "FAILED", "DISCONNECTED", "DISCONNECTING"]
    #   resp.data.custom_key_stores[0].connection_error_code #=> String, one of ["INVALID_CREDENTIALS", "CLUSTER_NOT_FOUND", "NETWORK_ERRORS", "INTERNAL_ERROR", "INSUFFICIENT_CLOUDHSM_HSMS", "USER_LOCKED_OUT", "USER_NOT_FOUND", "USER_LOGGED_IN", "SUBNET_NOT_FOUND", "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET", "XKS_PROXY_ACCESS_DENIED", "XKS_PROXY_NOT_REACHABLE", "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND", "XKS_PROXY_INVALID_RESPONSE", "XKS_PROXY_INVALID_CONFIGURATION", "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION", "XKS_PROXY_TIMED_OUT", "XKS_PROXY_INVALID_TLS_CONFIGURATION"]
    #   resp.data.custom_key_stores[0].creation_date #=> Time
    #   resp.data.custom_key_stores[0].custom_key_store_type #=> String, one of ["AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   resp.data.custom_key_stores[0].xks_proxy_configuration #=> Types::XksProxyConfigurationType
    #   resp.data.custom_key_stores[0].xks_proxy_configuration.connectivity #=> String, one of ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   resp.data.custom_key_stores[0].xks_proxy_configuration.access_key_id #=> String
    #   resp.data.custom_key_stores[0].xks_proxy_configuration.uri_endpoint #=> String
    #   resp.data.custom_key_stores[0].xks_proxy_configuration.uri_path #=> String
    #   resp.data.custom_key_stores[0].xks_proxy_configuration.vpc_endpoint_service_name #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    # @example To get detailed information about custom key stores in the account and Region
    #   resp = client.describe_custom_key_stores()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     custom_key_stores: [
    #
    #     ]
    #   }
    def describe_custom_key_stores(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DescribeCustomKeyStoresInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DescribeCustomKeyStores.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_custom_key_stores,
        tracer: tracer
      )
      Telemetry::DescribeCustomKeyStores.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_custom_key_stores] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_custom_key_stores] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_custom_key_stores] #{output.data}")
        output
      end
    end

    # <p>Provides detailed information about a KMS key. You can run <code>DescribeKey</code> on a
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed
    #         key</a> or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a>.</p>
    #          <p>This detailed information includes the key ARN, creation date (and deletion date, if
    #       applicable), the key state, and the origin and expiration date (if any) of the key material.
    #       It includes fields, like <code>KeySpec</code>, that help you distinguish different types of
    #       KMS keys. It also displays the key usage (encryption, signing, or generating and verifying
    #       MACs) and the algorithms that the KMS key supports. </p>
    #          <p>For <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region keys</a>, <code>DescribeKey</code> displays the primary key and all
    #       related replica keys. For KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-cloudhsm.html">CloudHSM key stores</a>, it includes information
    #       about the key store, such as the key store ID and the CloudHSM cluster ID. For KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/keystore-external.html">external key stores</a>,
    #       it includes the custom key store ID and the ID of the external key.</p>
    #          <p>
    #             <code>DescribeKey</code> does not return the following information:</p>
    #          <ul>
    #             <li>
    #                <p>Aliases associated with the KMS key. To get this information, use <a>ListAliases</a>.</p>
    #             </li>
    #             <li>
    #                <p>Whether automatic key rotation is enabled on the KMS key. To get this information, use
    #             <a>GetKeyRotationStatus</a>. Also, some key states prevent a KMS key from
    #           being automatically rotated. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works">How Automatic Key Rotation
    #             Works</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Tags on the KMS key. To get this information, use <a>ListResourceTags</a>.</p>
    #             </li>
    #             <li>
    #                <p>Key policies and grants on the KMS key. To get this information, use <a>GetKeyPolicy</a> and <a>ListGrants</a>.</p>
    #             </li>
    #          </ul>
    #          <p>In general, <code>DescribeKey</code> is a non-mutating operation. It returns data about
    #       KMS keys, but doesn't change them. However, Amazon Web Services services use <code>DescribeKey</code> to
    #       create <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services
    #         managed keys</a> from a <i>predefined Amazon Web Services alias</i> with no key
    #       ID.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DescribeKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetKeyPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListKeys</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DescribeKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_key(
    #     key_id: 'KeyId', # required
    #     grant_tokens: [
    #       'member'
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeKeyOutput
    #   resp.data.key_metadata #=> Types::KeyMetadata
    #   resp.data.key_metadata.aws_account_id #=> String
    #   resp.data.key_metadata.key_id #=> String
    #   resp.data.key_metadata.arn #=> String
    #   resp.data.key_metadata.creation_date #=> Time
    #   resp.data.key_metadata.enabled #=> Boolean
    #   resp.data.key_metadata.description #=> String
    #   resp.data.key_metadata.key_usage #=> String, one of ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   resp.data.key_metadata.key_state #=> String, one of ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   resp.data.key_metadata.deletion_date #=> Time
    #   resp.data.key_metadata.valid_to #=> Time
    #   resp.data.key_metadata.origin #=> String, one of ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   resp.data.key_metadata.custom_key_store_id #=> String
    #   resp.data.key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.data.key_metadata.expiration_model #=> String, one of ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   resp.data.key_metadata.key_manager #=> String, one of ["AWS", "CUSTOMER"]
    #   resp.data.key_metadata.customer_master_key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_metadata.key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_metadata.encryption_algorithms #=> Array<String>
    #   resp.data.key_metadata.encryption_algorithms[0] #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.key_metadata.signing_algorithms #=> Array<String>
    #   resp.data.key_metadata.signing_algorithms[0] #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   resp.data.key_metadata.multi_region #=> Boolean
    #   resp.data.key_metadata.multi_region_configuration #=> Types::MultiRegionConfiguration
    #   resp.data.key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of ["PRIMARY", "REPLICA"]
    #   resp.data.key_metadata.multi_region_configuration.primary_key #=> Types::MultiRegionKey
    #   resp.data.key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.data.key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.data.key_metadata.multi_region_configuration.replica_keys #=> Array<MultiRegionKey>
    #   resp.data.key_metadata.pending_deletion_window_in_days #=> Integer
    #   resp.data.key_metadata.mac_algorithms #=> Array<String>
    #   resp.data.key_metadata.mac_algorithms[0] #=> String, one of ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   resp.data.key_metadata.xks_key_configuration #=> Types::XksKeyConfigurationType
    #   resp.data.key_metadata.xks_key_configuration.id #=> String
    # @example To get details about an RSA asymmetric KMS key
    #   # The following example gets metadata for an asymmetric RSA KMS key used for signing and verification.
    #   resp = client.describe_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "111122223333",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.at(1571767572, 317, :millisecond),
    #       customer_master_key_spec: "RSA_2048",
    #       enabled: false,
    #       description: "",
    #       key_state: "Disabled",
    #       origin: "AWS_KMS",
    #       multi_region: false,
    #       key_manager: "CUSTOMER",
    #       key_spec: "RSA_2048",
    #       key_usage: "SIGN_VERIFY",
    #       signing_algorithms: [
    #         "RSASSA_PKCS1_V1_5_SHA_256",
    #         "RSASSA_PKCS1_V1_5_SHA_384",
    #         "RSASSA_PKCS1_V1_5_SHA_512",
    #         "RSASSA_PSS_SHA_256",
    #         "RSASSA_PSS_SHA_384",
    #         "RSASSA_PSS_SHA_512"
    #       ]
    #     }
    #   }
    # @example To get details about a multi-Region key
    #   # The following example gets metadata for a multi-Region replica key. This multi-Region key is a symmetric encryption key. DescribeKey returns information about the primary key and all of its replicas.
    #   resp = client.describe_key({
    #     key_id: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       multi_region: true,
    #       aws_account_id: "111122223333",
    #       arn: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #       creation_date: Time.at(1586329200, 918, :millisecond),
    #       description: "",
    #       enabled: true,
    #       key_id: "mrk-1234abcd12ab34cd56ef1234567890ab",
    #       key_manager: "CUSTOMER",
    #       key_state: "Enabled",
    #       key_usage: "ENCRYPT_DECRYPT",
    #       origin: "AWS_KMS",
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT",
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT"
    #       ],
    #       multi_region_configuration: {
    #         multi_region_key_type: "PRIMARY",
    #         primary_key: {
    #           arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #           region: "us-west-2"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "arn:aws:kms:eu-west-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "eu-west-1"
    #           },
    #           {
    #             arn: "arn:aws:kms:ap-northeast-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "ap-northeast-1"
    #           },
    #           {
    #             arn: "arn:aws:kms:sa-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "sa-east-1"
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @example To get details about an HMAC KMS key
    #   # The following example gets the metadata of an HMAC KMS key.
    #   resp = client.describe_key({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "123456789012",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.at(1566160362, 664, :millisecond),
    #       enabled: true,
    #       description: "Development test key",
    #       key_usage: "GENERATE_VERIFY_MAC",
    #       key_state: "Enabled",
    #       origin: "AWS_KMS",
    #       key_manager: "CUSTOMER",
    #       customer_master_key_spec: "HMAC_256",
    #       mac_algorithms: [
    #         "HMAC_SHA_256"
    #       ],
    #       multi_region: false
    #     }
    #   }
    # @example To get details about a KMS key in an AWS CloudHSM key store
    #   # The following example gets the metadata of a KMS key in an AWS CloudHSM key store.
    #   resp = client.describe_key({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       aws_account_id: "123456789012",
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       creation_date: Time.at(1646160362, 664, :millisecond),
    #       description: "CloudHSM key store test key",
    #       enabled: true,
    #       multi_region: false,
    #       key_manager: "CUSTOMER",
    #       key_state: "Enabled",
    #       key_usage: "ENCRYPT_DECRYPT",
    #       origin: "AWS_CLOUDHSM",
    #       cloud_hsm_cluster_id: "cluster-234abcdefABC",
    #       custom_key_store_id: "cks-1234567890abcdef0",
    #       key_spec: "SYMMETRIC_DEFAULT",
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT",
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT"
    #       ]
    #     }
    #   }
    # @example To get details about a KMS key in an external key store
    #   # The following example gets the metadata of a KMS key in an external key store.
    #   resp = client.describe_key({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_metadata: {
    #       arn: "arn:aws:kms:us-west-2:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #       aws_account_id: "123456789012",
    #       creation_date: Time.at(1646160362, 664, :millisecond),
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT",
    #       custom_key_store_id: "cks-1234567890abcdef0",
    #       description: "External key store test key",
    #       enabled: true,
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT"
    #       ],
    #       key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #       key_manager: "CUSTOMER",
    #       key_spec: "SYMMETRIC_DEFAULT",
    #       key_state: "Enabled",
    #       key_usage: "ENCRYPT_DECRYPT",
    #       multi_region: false,
    #       origin: "EXTERNAL_KEY_STORE",
    #       xks_key_configuration: {
    #         id: "bb8562717f809024"
    #       }
    #     }
    #   }
    def describe_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DescribeKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DescribeKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_key,
        tracer: tracer
      )
      Telemetry::DescribeKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_key] #{output.data}")
        output
      end
    end

    # <p>Sets the state of a KMS key to disabled. This change temporarily prevents use of the KMS
    #       key for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a>. </p>
    #          <p>For more information about how key state affects the use of a KMS key, see
    #       <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisableKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>EnableKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DisableKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::DisableKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.disable_key(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableKeyOutput
    # @example To disable a KMS key
    #   # The following example disables the specified KMS key.
    #   resp = client.disable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def disable_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DisableKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DisableKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :disable_key,
        tracer: tracer
      )
      Telemetry::DisableKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#disable_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_key] #{output.data}")
        output
      end
    end

    # <p>Disables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
    #         rotation of the key material</a> of the specified symmetric encryption KMS key.</p>
    #          <p>Automatic key rotation is supported only on symmetric encryption KMS keys.
    #       You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key.</p>
    #          <p>You can enable (<a>EnableKeyRotation</a>) and disable automatic rotation of the
    #       key material in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed KMS keys</a>. Key material rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed KMS keys</a> is not
    #       configurable. KMS always rotates the key material for every year. Rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned KMS
    #         keys</a> varies.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years to every year. For details, see <a>EnableKeyRotation</a>.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisableKeyRotation</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DisableKeyRotationInput] params
    #   Request parameters for this operation.
    #   See {Types::DisableKeyRotationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.disable_key_rotation(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableKeyRotationOutput
    # @example To disable automatic rotation of key material
    #   # The following example disables automatic annual rotation of the key material for the specified KMS key.
    #   resp = client.disable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def disable_key_rotation(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DisableKeyRotationInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DisableKeyRotation.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :disable_key_rotation,
        tracer: tracer
      )
      Telemetry::DisableKeyRotation.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_key_rotation] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#disable_key_rotation] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_key_rotation] #{output.data}")
        output
      end
    end

    # <p>Disconnects the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> from its backing key store. This operation disconnects an
    #       CloudHSM key store from its associated CloudHSM cluster or disconnects an external key store from
    #       the external key store proxy that communicates with your external key manager.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <p>While a custom key store is disconnected, you can manage the custom key store and its KMS
    #       keys, but you cannot create or use its KMS keys. You can reconnect the custom key store at any
    #       time.</p>
    #          <note>
    #             <p>While a custom key store is disconnected, all attempts to create KMS keys in the custom key store or to use existing KMS keys in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a> will
    #         fail. This action can prevent users from storing and accessing sensitive data.</p>
    #          </note>
    #          <p>When you disconnect a custom key store, its <code>ConnectionState</code> changes to
    #         <code>Disconnected</code>. To find the connection state of a custom key store, use the <a>DescribeCustomKeyStores</a> operation. To reconnect a custom key store, use the
    #         <a>ConnectCustomKeyStore</a> operation.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:DisconnectCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::DisconnectCustomKeyStoreInput] params
    #   Request parameters for this operation.
    #   See {Types::DisconnectCustomKeyStoreInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.disconnect_custom_key_store(
    #     custom_key_store_id: 'CustomKeyStoreId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisconnectCustomKeyStoreOutput
    # @example To disconnect a custom key store from its CloudHSM cluster
    #   # This example disconnects an AWS KMS custom key store from its backing key store. For an AWS CloudHSM key store, it disconnects the key store from its AWS CloudHSM cluster. For an external key store, it disconnects the key store from the external key store proxy that communicates with your external key manager. This operation doesn't return any data. To verify that the custom key store is disconnected, use the <code>DescribeCustomKeyStores</code> operation.
    #   resp = client.disconnect_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def disconnect_custom_key_store(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::DisconnectCustomKeyStoreInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::DisconnectCustomKeyStore.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :disconnect_custom_key_store,
        tracer: tracer
      )
      Telemetry::DisconnectCustomKeyStore.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disconnect_custom_key_store] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#disconnect_custom_key_store] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disconnect_custom_key_store] #{output.data}")
        output
      end
    end

    # <p>Sets the key state of a KMS key to enabled. This allows you to use the KMS key for
    #       <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations">cryptographic operations</a>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:EnableKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>DisableKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::EnableKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::EnableKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.enable_key(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableKeyOutput
    # @example To enable a KMS key
    #   # The following example enables the specified KMS key.
    #   resp = client.enable_key({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def enable_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::EnableKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::EnableKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :enable_key,
        tracer: tracer
      )
      Telemetry::EnableKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#enable_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_key] #{output.data}")
        output
      end
    end

    # <p>Enables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic rotation
    #         of the key material</a> of the specified symmetric encryption KMS key. </p>
    #          <p>When you enable automatic rotation of a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed KMS key</a>, KMS
    #       rotates the key material of the KMS key one year (approximately 365 days) from the enable date
    #       and every year thereafter. You can monitor rotation of the key material for your KMS keys in
    #       CloudTrail and Amazon CloudWatch. To disable rotation of the key material in a customer
    #       managed KMS key, use the <a>DisableKeyRotation</a> operation.</p>
    #          <p>Automatic key rotation is supported only on <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks">symmetric encryption KMS keys</a>.
    #       You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key. </p>
    #          <p>You cannot enable or disable automatic rotation <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed KMS keys</a>. KMS
    #       always rotates the key material of Amazon Web Services managed keys every year. Rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned KMS
    #         keys</a> varies.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years (approximately 1,095 days) to every year (approximately 365 days).</p>
    #             <p>New Amazon Web Services managed keys are automatically rotated one year after they are created, and
    #         approximately every year thereafter. </p>
    #             <p>Existing Amazon Web Services managed keys are automatically rotated one year after their most recent
    #         rotation, and every year thereafter.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:EnableKeyRotation</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetKeyRotationStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::EnableKeyRotationInput] params
    #   Request parameters for this operation.
    #   See {Types::EnableKeyRotationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.enable_key_rotation(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableKeyRotationOutput
    # @example To enable automatic rotation of key material
    #   # The following example enables automatic annual rotation of the key material for the specified KMS key.
    #   resp = client.enable_key_rotation({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def enable_key_rotation(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::EnableKeyRotationInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::EnableKeyRotation.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :enable_key_rotation,
        tracer: tracer
      )
      Telemetry::EnableKeyRotation.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_key_rotation] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#enable_key_rotation] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_key_rotation] #{output.data}")
        output
      end
    end

    # <p>Encrypts plaintext of up to 4,096 bytes using a KMS key. You can use a symmetric or
    #       asymmetric KMS key with a <code>KeyUsage</code> of <code>ENCRYPT_DECRYPT</code>.</p>
    #          <p>You can use this operation to encrypt small amounts of arbitrary data, such as a personal
    #       identifier or database password, or other sensitive information. You don't need to use the
    #         <code>Encrypt</code> operation to encrypt a data key. The <a>GenerateDataKey</a>
    #       and <a>GenerateDataKeyPair</a> operations return a plaintext data key and an
    #       encrypted copy of that data key.</p>
    #          <p>If you use a symmetric encryption KMS key, you can use an encryption context to add
    #       additional security to your encryption operation. If you specify an
    #         <code>EncryptionContext</code> when encrypting data, you must specify the same encryption
    #       context (a case-sensitive exact match) when decrypting the data. Otherwise, the request to
    #       decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption
    #         Context</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>If you specify an asymmetric KMS key, you must also specify the encryption algorithm. The
    #       algorithm must be compatible with the KMS key spec.</p>
    #          <important>
    #             <p>When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to record the KMS key and encryption algorithm that you choose. You will be required to provide the same KMS key and encryption algorithm when you decrypt the data. If the KMS key and algorithm do not match the values used to encrypt the data, the decrypt operation fails.</p>
    #             <p>You are not required to supply the key ID and encryption algorithm when you decrypt with symmetric encryption KMS keys because KMS stores this information in the ciphertext blob. KMS cannot store metadata in ciphertext generated with asymmetric keys. The standard format for asymmetric key ciphertext does not include configurable fields.</p>
    #          </important>
    #          <p>The maximum size of the data that you can encrypt varies with the type of KMS key and the
    #       encryption algorithm that you choose.</p>
    #          <ul>
    #             <li>
    #                <p>Symmetric encryption KMS keys</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>SYMMETRIC_DEFAULT</code>: 4096 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_2048</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 214 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 190 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_3072</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 342 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 318 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RSA_4096</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_1</code>: 470 bytes</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>RSAES_OAEP_SHA_256</code>: 446 bytes</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SM2PKE</code>: 1024 bytes (China Regions only)</p>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Encrypt</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::EncryptInput] params
    #   Request parameters for this operation.
    #   See {Types::EncryptInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.encrypt(
    #     key_id: 'KeyId', # required
    #     plaintext: 'Plaintext', # required
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     grant_tokens: [
    #       'member'
    #     ],
    #     encryption_algorithm: 'SYMMETRIC_DEFAULT', # accepts ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::EncryptOutput
    #   resp.data.ciphertext_blob #=> String
    #   resp.data.key_id #=> String
    #   resp.data.encryption_algorithm #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    # @example To encrypt data with a symmetric encryption KMS key
    #   # The following example encrypts data with the specified symmetric encryption KMS key.
    #   resp = client.encrypt({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     plaintext: '<binary data>'
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: '<binary data>',
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     encryption_algorithm: "SYMMETRIC_DEFAULT"
    #   }
    # @example To encrypt data with an asymmetric encryption KMS key
    #   # The following example encrypts data with the specified RSA asymmetric KMS key. When you encrypt with an asymmetric key, you must specify the encryption algorithm.
    #   resp = client.encrypt({
    #     key_id: "0987dcba-09fe-87dc-65ba-ab0987654321",
    #     plaintext: '<binary data>',
    #     encryption_algorithm: "RSAES_OAEP_SHA_256"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: '<binary data>',
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     encryption_algorithm: "RSAES_OAEP_SHA_256"
    #   }
    def encrypt(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::EncryptInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::Encrypt.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :encrypt,
        tracer: tracer
      )
      Telemetry::Encrypt.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#encrypt] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#encrypt] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#encrypt] #{output.data}")
        output
      end
    end

    # <p>Returns a unique symmetric data key for use outside of KMS. This operation returns a
    #       plaintext copy of the data key and a copy that is encrypted under a symmetric encryption KMS
    #       key that you specify. The bytes in the plaintext key are random; they are not related to the
    #       caller or the KMS key. You can use the plaintext key to encrypt your data outside of KMS and
    #       store the encrypted data key with the encrypted data.</p>
    #          <p>To generate a data key, specify the symmetric encryption KMS key that will be used to
    #       encrypt the data key. You cannot use an asymmetric KMS key to encrypt data keys. To get the
    #       type of your KMS key, use the <a>DescribeKey</a> operation.</p>
    #          <p>You must also specify the length of the data key. Use either the <code>KeySpec</code> or
    #         <code>NumberOfBytes</code> parameters (but not both). For 128-bit and 256-bit data keys, use
    #       the <code>KeySpec</code> parameter.</p>
    #          <p>To generate a 128-bit SM4 data key (China Regions only), specify a <code>KeySpec</code>
    #       value of <code>AES_128</code> or a <code>NumberOfBytes</code> value of <code>16</code>. The
    #       symmetric encryption key used in China Regions to encrypt your data key is an SM4 encryption
    #       key.</p>
    #          <p>To get only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To generate an asymmetric data key pair, use
    #       the <a>GenerateDataKeyPair</a> or <a>GenerateDataKeyPairWithoutPlaintext</a> operation. To get a cryptographically secure
    #       random byte string, use <a>GenerateRandom</a>.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <code>GenerateDataKey</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateDataKey</code> for an Amazon Web Services Nitro
    #       enclave, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter
    #       to provide the attestation document for the enclave. <code>GenerateDataKey</code> returns a
    #       copy of the data key encrypted under the specified KMS key, as usual. But instead of a
    #       plaintext copy of the data key, the response includes a copy of the data key encrypted under
    #       the public key from the attestation document (<code>CiphertextForRecipient</code>).
    #       For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>..</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>How to use your data key</b>
    #          </p>
    #          <p>We recommend that you use the following pattern to encrypt data locally in your
    #       application. You can write your own code or use a client-side encryption library, such as the
    #         <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services Encryption SDK</a>, the
    #         <a href="https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/">Amazon DynamoDB Encryption Client</a>,
    #       or <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3
    #         client-side encryption</a> to do these tasks for you.</p>
    #          <p>To encrypt data outside of KMS:</p>
    #          <ol>
    #             <li>
    #                <p>Use the <code>GenerateDataKey</code> operation to get a data key.</p>
    #             </li>
    #             <li>
    #                <p>Use the plaintext data key (in the <code>Plaintext</code> field of the response) to
    #           encrypt your data outside of KMS. Then erase the plaintext data key from memory.</p>
    #             </li>
    #             <li>
    #                <p>Store the encrypted data key (in the <code>CiphertextBlob</code> field of the
    #           response) with the encrypted data.</p>
    #             </li>
    #          </ol>
    #          <p>To decrypt data outside of KMS:</p>
    #          <ol>
    #             <li>
    #                <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key. The
    #           operation returns a plaintext copy of the data key.</p>
    #             </li>
    #             <li>
    #                <p>Use the plaintext data key to decrypt data outside of KMS, then erase the plaintext
    #           data key from memory.</p>
    #             </li>
    #          </ol>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateDataKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateDataKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_data_key(
    #     key_id: 'KeyId', # required
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     number_of_bytes: 1,
    #     key_spec: 'AES_256', # accepts ["AES_256", "AES_128"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     recipient: {
    #       key_encryption_algorithm: 'RSAES_OAEP_SHA_256', # accepts ["RSAES_OAEP_SHA_256"]
    #       attestation_document: 'AttestationDocument'
    #     },
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateDataKeyOutput
    #   resp.data.ciphertext_blob #=> String
    #   resp.data.plaintext #=> String
    #   resp.data.key_id #=> String
    #   resp.data.ciphertext_for_recipient #=> String
    # @example To generate a data key
    #   # The following example generates a 256-bit symmetric data encryption key (data key) in two formats. One is the unencrypted (plainext) data key, and the other is the data key encrypted with the specified KMS key.
    #   resp = client.generate_data_key({
    #     key_id: "alias/ExampleAlias",
    #     key_spec: "AES_256"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: '<binary data>',
    #     plaintext: '<binary data>',
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    def generate_data_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateDataKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateDataKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_data_key,
        tracer: tracer
      )
      Telemetry::GenerateDataKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_data_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key] #{output.data}")
        output
      end
    end

    # <p>Returns a unique asymmetric data key pair for use outside of KMS. This operation returns
    #       a plaintext public key, a plaintext private key, and a copy of the private key that is
    #       encrypted under the symmetric encryption KMS key you specify. You can use the data key pair to
    #       perform asymmetric cryptography and implement digital signatures outside of KMS. The bytes
    #       in the keys are random; they are not related to the caller or to the KMS key that is used to
    #       encrypt the private key. </p>
    #          <p>You can use the public key that <code>GenerateDataKeyPair</code> returns to encrypt data
    #       or verify a signature outside of KMS. Then, store the encrypted private key with the data.
    #       When you are ready to decrypt data or sign a message, you can use the <a>Decrypt</a> operation to decrypt the encrypted private key.</p>
    #          <p>To generate a data key pair, you must specify a symmetric encryption KMS key to encrypt
    #       the private key in a data key pair. You cannot use an asymmetric KMS key or a KMS key in a
    #       custom key store. To get the type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #          <p>Use the <code>KeyPairSpec</code> parameter to choose an RSA or Elliptic Curve (ECC) data
    #       key pair. In China Regions, you can also choose an SM2 data key pair. KMS recommends that
    #       you use ECC key pairs for signing, and use RSA and SM2 key pairs for either encryption or
    #       signing, but not both. However, KMS cannot enforce any restrictions on the use of data key
    #       pairs outside of KMS.</p>
    #          <p>If you are using the data key pair to encrypt data, or for any operation where you don't
    #       immediately need a private key, consider using the <a>GenerateDataKeyPairWithoutPlaintext</a> operation.
    #         <code>GenerateDataKeyPairWithoutPlaintext</code> returns a plaintext public key and an
    #       encrypted private key, but omits the plaintext private key that you need only to decrypt
    #       ciphertext or sign a message. Later, when you need to decrypt the data or sign a message, use
    #       the <a>Decrypt</a> operation to decrypt the encrypted private key in the data key
    #       pair.</p>
    #          <p>
    #             <code>GenerateDataKeyPair</code> returns a unique data key pair for each request. The
    #       bytes in the keys are random; they are not related to the caller or the KMS key that is used
    #       to encrypt the private key. The public key is a DER-encoded X.509 SubjectPublicKeyInfo, as
    #       specified in <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>. The private
    #       key is a DER-encoded PKCS8 PrivateKeyInfo, as specified in <a href="https://tools.ietf.org/html/rfc5958">RFC 5958</a>.</p>
    #          <p>
    #             <code>GenerateDataKeyPair</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateDataKeyPair</code> for an Amazon Web Services
    #       Nitro enclave, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code>
    #       parameter to provide the attestation document for the enclave.
    #         <code>GenerateDataKeyPair</code> returns the public data key and a copy of the private data
    #       key encrypted under the specified KMS key, as usual. But instead of a plaintext copy of the
    #       private data key (<code>PrivateKeyPlaintext</code>), the response includes a copy of the
    #       private data key encrypted under the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>). For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>..</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyPair</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateDataKeyPairInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateDataKeyPairInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_data_key_pair(
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     key_id: 'KeyId', # required
    #     key_pair_spec: 'RSA_2048', # required - accepts ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     recipient: {
    #       key_encryption_algorithm: 'RSAES_OAEP_SHA_256', # accepts ["RSAES_OAEP_SHA_256"]
    #       attestation_document: 'AttestationDocument'
    #     },
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateDataKeyPairOutput
    #   resp.data.private_key_ciphertext_blob #=> String
    #   resp.data.private_key_plaintext #=> String
    #   resp.data.public_key #=> String
    #   resp.data.key_id #=> String
    #   resp.data.key_pair_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #   resp.data.ciphertext_for_recipient #=> String
    # @example To generate an RSA key pair for encryption and decryption
    #   # This example generates an RSA data key pair for encryption and decryption. The operation returns a plaintext public key and private key, and a copy of the private key that is encrypted under a symmetric encryption KMS key that you specify.
    #   resp = client.generate_data_key_pair({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: "RSA_3072"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     private_key_ciphertext_blob: '<binary data>',
    #     private_key_plaintext: '<binary data>',
    #     public_key: '<binary data>',
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: "RSA_3072"
    #   }
    def generate_data_key_pair(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateDataKeyPairInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateDataKeyPair.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_data_key_pair,
        tracer: tracer
      )
      Telemetry::GenerateDataKeyPair.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair] #{output.data}")
        output
      end
    end

    # <p>Returns a unique asymmetric data key pair for use outside of KMS. This operation returns
    #       a plaintext public key and a copy of the private key that is encrypted under the symmetric
    #       encryption KMS key you specify. Unlike <a>GenerateDataKeyPair</a>, this operation
    #       does not return a plaintext private key. The bytes in the keys are random; they are not
    #       related to the caller or to the KMS key that is used to encrypt the private key. </p>
    #          <p>You can use the public key that <code>GenerateDataKeyPairWithoutPlaintext</code> returns
    #       to encrypt data or verify a signature outside of KMS. Then, store the encrypted private key
    #       with the data. When you are ready to decrypt data or sign a message, you can use the <a>Decrypt</a> operation to decrypt the encrypted private key.</p>
    #          <p>To generate a data key pair, you must specify a symmetric encryption KMS key to encrypt
    #       the private key in a data key pair. You cannot use an asymmetric KMS key or a KMS key in a
    #       custom key store. To get the type and origin of your KMS key, use the <a>DescribeKey</a> operation. </p>
    #          <p>Use the <code>KeyPairSpec</code> parameter to choose an RSA or Elliptic Curve (ECC) data
    #       key pair. In China Regions, you can also choose an SM2 data key pair. KMS recommends that
    #       you use ECC key pairs for signing, and use RSA and SM2 key pairs for either encryption or
    #       signing, but not both. However, KMS cannot enforce any restrictions on the use of data key
    #       pairs outside of KMS.</p>
    #          <p>
    #             <code>GenerateDataKeyPairWithoutPlaintext</code> returns a unique data key pair for each
    #       request. The bytes in the key are not related to the caller or KMS key that is used to encrypt
    #       the private key. The public key is a DER-encoded X.509 SubjectPublicKeyInfo, as specified in
    #         <a href="https://tools.ietf.org/html/rfc5280">RFC 5280</a>.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyPairWithoutPlaintext</a> (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateDataKeyPairWithoutPlaintextInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateDataKeyPairWithoutPlaintextInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_data_key_pair_without_plaintext(
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     key_id: 'KeyId', # required
    #     key_pair_spec: 'RSA_2048', # required - accepts ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateDataKeyPairWithoutPlaintextOutput
    #   resp.data.private_key_ciphertext_blob #=> String
    #   resp.data.public_key #=> String
    #   resp.data.key_id #=> String
    #   resp.data.key_pair_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SM2"]
    # @example To generate an asymmetric data key pair without a plaintext key
    #   # This example returns an asymmetric elliptic curve (ECC) data key pair. The private key is encrypted under the symmetric encryption KMS key that you specify. This operation doesn't return a plaintext (unencrypted) private key.
    #   resp = client.generate_data_key_pair_without_plaintext({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: "ECC_NIST_P521"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     private_key_ciphertext_blob: '<binary data>',
    #     public_key: '<binary data>',
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     key_pair_spec: "ECC_NIST_P521"
    #   }
    def generate_data_key_pair_without_plaintext(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateDataKeyPairWithoutPlaintextInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateDataKeyPairWithoutPlaintext.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_data_key_pair_without_plaintext,
        tracer: tracer
      )
      Telemetry::GenerateDataKeyPairWithoutPlaintext.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair_without_plaintext] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair_without_plaintext] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_pair_without_plaintext] #{output.data}")
        output
      end
    end

    # <p>Returns a unique symmetric data key for use outside of KMS. This operation returns a
    #       data key that is encrypted under a symmetric encryption KMS key that you specify. The bytes in
    #       the key are random; they are not related to the caller or to the KMS key.</p>
    #          <p>
    #             <code>GenerateDataKeyWithoutPlaintext</code> is identical to the <a>GenerateDataKey</a> operation except that it does not return a plaintext copy of the
    #       data key. </p>
    #          <p>This operation is useful for systems that need to encrypt data at some point, but not
    #       immediately. When you need to encrypt the data, you call the <a>Decrypt</a>
    #       operation on the encrypted copy of the key.</p>
    #          <p>It's also useful in distributed systems with different levels of trust. For example, you
    #       might store encrypted data in containers. One component of your system creates new containers
    #       and stores an encrypted data key with each container. Then, a different component puts the
    #       data into the containers. That component first decrypts the data key, uses the plaintext data
    #       key to encrypt data, puts the encrypted data into the container, and then destroys the
    #       plaintext data key. In this system, the component that creates the containers never sees the
    #       plaintext data key.</p>
    #          <p>To request an asymmetric data key pair, use the <a>GenerateDataKeyPair</a> or
    #         <a>GenerateDataKeyPairWithoutPlaintext</a> operations.</p>
    #          <p>To generate a data key, you must specify the symmetric encryption KMS key that is used to
    #       encrypt the data key. You cannot use an asymmetric KMS key or a key in a custom key store to
    #       generate a data key. To get the type of your KMS key, use the <a>DescribeKey</a>
    #       operation.</p>
    #          <p>You must also specify the length of the data key. Use either the <code>KeySpec</code> or
    #         <code>NumberOfBytes</code> parameters (but not both). For 128-bit and 256-bit data keys, use
    #       the <code>KeySpec</code> parameter.</p>
    #          <p>To generate an SM4 data key (China Regions only), specify a <code>KeySpec</code> value of
    #         <code>AES_128</code> or <code>NumberOfBytes</code> value of <code>16</code>. The symmetric
    #       encryption key used in China Regions to encrypt your data key is an SM4 encryption key.</p>
    #          <p>If the operation succeeds, you will find the encrypted copy of the data key in the
    #         <code>CiphertextBlob</code> field.</p>
    #          <p>You can use an optional encryption context to add additional security to the encryption
    #       operation. If you specify an <code>EncryptionContext</code>, you must specify the same
    #       encryption context (a case-sensitive exact match) when decrypting the encrypted data key.
    #       Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption Context</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateDataKeyWithoutPlaintext</a> (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPairWithoutPlaintext</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateDataKeyWithoutPlaintextInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateDataKeyWithoutPlaintextInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_data_key_without_plaintext(
    #     key_id: 'KeyId', # required
    #     encryption_context: {
    #       'key' => 'value'
    #     },
    #     key_spec: 'AES_256', # accepts ["AES_256", "AES_128"]
    #     number_of_bytes: 1,
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateDataKeyWithoutPlaintextOutput
    #   resp.data.ciphertext_blob #=> String
    #   resp.data.key_id #=> String
    # @example To generate an encrypted data key
    #   # The following example generates an encrypted copy of a 256-bit symmetric data encryption key (data key). The data key is encrypted with the specified KMS key.
    #   resp = client.generate_data_key_without_plaintext({
    #     key_id: "alias/ExampleAlias",
    #     key_spec: "AES_256"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: '<binary data>',
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    def generate_data_key_without_plaintext(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateDataKeyWithoutPlaintextInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateDataKeyWithoutPlaintext.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_data_key_without_plaintext,
        tracer: tracer
      )
      Telemetry::GenerateDataKeyWithoutPlaintext.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_without_plaintext] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_data_key_without_plaintext] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_data_key_without_plaintext] #{output.data}")
        output
      end
    end

    # <p>Generates a hash-based message authentication code (HMAC) for a message using an HMAC KMS
    #       key and a MAC algorithm that the key supports. HMAC KMS keys and the HMAC algorithms that
    #       KMS uses conform to industry standards defined in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #          <p>You can use value that GenerateMac returns in the <a>VerifyMac</a> operation to
    #       demonstrate that the original message has not changed. Also, because a secret key is used to
    #       create the hash, you can verify that the party that generated the hash has the required secret
    #       key. You can also use the raw result to implement HMAC-based algorithms such as key derivation
    #       functions. This operation is part of KMS support for HMAC KMS keys. For
    #       details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC keys in
    #         KMS</a> in the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <note>
    #             <p>Best practices recommend that you limit the time during which any signing mechanism,
    #         including an HMAC, is effective. This deters an attack where the actor uses a signed message
    #         to establish validity repeatedly or long after the message is superseded. HMAC tags do not
    #         include a timestamp, but you can include a timestamp in the token or message to help you
    #         detect when its time to refresh the HMAC. </p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateMac</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>VerifyMac</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateMacInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateMacInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_mac(
    #     message: 'Message', # required
    #     key_id: 'KeyId', # required
    #     mac_algorithm: 'HMAC_SHA_224', # required - accepts ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateMacOutput
    #   resp.data.mac #=> String
    #   resp.data.mac_algorithm #=> String, one of ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   resp.data.key_id #=> String
    # @example To generate an HMAC for a message
    #   # This example generates an HMAC for a message, an HMAC KMS key, and a MAC algorithm. The algorithm must be supported by the specified HMAC KMS key.
    #   resp = client.generate_mac({
    #     message: 'Hello World',
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_algorithm: "HMAC_SHA_384"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     mac: '<HMAC_TAG>',
    #     mac_algorithm: "HMAC_SHA_384",
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    def generate_mac(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateMacInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateMac.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_mac,
        tracer: tracer
      )
      Telemetry::GenerateMac.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_mac] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_mac] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_mac] #{output.data}")
        output
      end
    end

    # <p>Returns a random byte string that is cryptographically secure.</p>
    #          <p>You must use the <code>NumberOfBytes</code> parameter to specify the length of the random
    #       byte string. There is no default value for string length.</p>
    #          <p>By default, the random byte string is generated in KMS. To generate the byte string in
    #       the CloudHSM cluster associated with an CloudHSM key store, use the <code>CustomKeyStoreId</code>
    #       parameter.</p>
    #          <p>
    #             <code>GenerateRandom</code> also supports <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitro-enclave.html">Amazon Web Services Nitro Enclaves</a>, which provide an
    #       isolated compute environment in Amazon EC2. To call <code>GenerateRandom</code> for a Nitro
    #       enclave, use the <a href="https://docs.aws.amazon.com/enclaves/latest/user/developing-applications.html#sdk">Amazon Web Services Nitro Enclaves SDK</a> or any Amazon Web Services SDK. Use the <code>Recipient</code> parameter
    #       to provide the attestation document for the enclave. Instead of plaintext bytes, the response
    #       includes the plaintext bytes encrypted under the public key from the attestation document
    #         (<code>CiphertextForRecipient</code>).For information about the interaction between KMS and Amazon Web Services Nitro Enclaves, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/services-nitro-enclaves.html">How Amazon Web Services Nitro Enclaves uses KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>For more information about entropy and random number generation, see
    #       <a href="https://docs.aws.amazon.com/kms/latest/cryptographic-details/">Key Management Service Cryptographic Details</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Not applicable.
    #         <code>GenerateRandom</code> does not use any account-specific resources, such as KMS
    #       keys.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GenerateRandom</a> (IAM policy)</p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GenerateRandomInput] params
    #   Request parameters for this operation.
    #   See {Types::GenerateRandomInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.generate_random(
    #     number_of_bytes: 1,
    #     custom_key_store_id: 'CustomKeyStoreId',
    #     recipient: {
    #       key_encryption_algorithm: 'RSAES_OAEP_SHA_256', # accepts ["RSAES_OAEP_SHA_256"]
    #       attestation_document: 'AttestationDocument'
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::GenerateRandomOutput
    #   resp.data.plaintext #=> String
    #   resp.data.ciphertext_for_recipient #=> String
    # @example To generate random data
    #   # The following example generates 32 bytes of random data.
    #   resp = client.generate_random({
    #     number_of_bytes: 32
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     plaintext: '<binary data>'
    #   }
    def generate_random(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GenerateRandomInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GenerateRandom.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :generate_random,
        tracer: tracer
      )
      Telemetry::GenerateRandom.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_random] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#generate_random] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#generate_random] #{output.data}")
        output
      end
    end

    # <p>Gets a key policy attached to the specified KMS key.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetKeyPolicy</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GetKeyPolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::GetKeyPolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_key_policy(
    #     key_id: 'KeyId', # required
    #     policy_name: 'PolicyName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetKeyPolicyOutput
    #   resp.data.policy #=> String
    # @example To retrieve a key policy
    #   # The following example retrieves the key policy for the specified KMS key.
    #   resp = client.get_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     policy_name: "default"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",\n  \"Statement\" : [ {\n    \"Sid\" : \"Enable IAM User Permissions\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"AWS\" : \"arn:aws:iam::111122223333:root\"\n    },\n    \"Action\" : \"kms:*\",\n    \"Resource\" : \"*\"\n  } ]\n}"
    #   }
    def get_key_policy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GetKeyPolicyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GetKeyPolicy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_key_policy,
        tracer: tracer
      )
      Telemetry::GetKeyPolicy.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_key_policy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_key_policy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_key_policy] #{output.data}")
        output
      end
    end

    # <p>Gets a Boolean value that indicates whether <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic rotation of the key material</a> is
    #       enabled for the specified KMS key.</p>
    #          <p>When you enable automatic rotation for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed KMS keys</a>, KMS
    #       rotates the key material of the KMS key one year (approximately 365 days) from the enable date
    #       and every year thereafter. You can monitor rotation of the key material for your KMS keys in
    #       CloudTrail and Amazon CloudWatch.</p>
    #          <p>Automatic key rotation is supported only on <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks">symmetric encryption KMS keys</a>.
    #       You cannot enable automatic rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">asymmetric KMS keys</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC KMS keys</a>, KMS keys with <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">imported key material</a>, or KMS keys in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. To enable or disable automatic rotation of a set of related <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-rotate">multi-Region keys</a>, set the property on the primary key..</p>
    #          <p>You can enable (<a>EnableKeyRotation</a>) and disable automatic rotation (<a>DisableKeyRotation</a>) of the key material in customer managed KMS keys. Key
    #       material rotation of <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed KMS keys</a> is not
    #       configurable. KMS always rotates the key material in Amazon Web Services managed KMS keys every year. The
    #       key rotation status for Amazon Web Services managed KMS keys is always <code>true</code>.</p>
    #          <note>
    #             <p>In May 2022, KMS changed the rotation schedule for Amazon Web Services managed keys from every three
    #         years to every year. For details, see <a>EnableKeyRotation</a>.</p>
    #          </note>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <ul>
    #             <li>
    #                <p>Disabled: The key rotation status does not change when you disable a KMS key. However,
    #           while the KMS key is disabled, KMS does not rotate the key material. When you re-enable
    #           the KMS key, rotation resumes. If the key material in the re-enabled KMS key hasn't been
    #           rotated in one year, KMS rotates it immediately, and every year thereafter. If it's been
    #           less than a year since the key material in the re-enabled KMS key was rotated, the KMS key
    #           resumes its prior rotation schedule.</p>
    #             </li>
    #             <li>
    #                <p>Pending deletion: While a KMS key is pending deletion, its key rotation status is
    #             <code>false</code> and KMS does not rotate the key material. If you cancel the
    #           deletion, the original key rotation status returns to <code>true</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetKeyRotationStatus</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DisableKeyRotation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>EnableKeyRotation</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GetKeyRotationStatusInput] params
    #   Request parameters for this operation.
    #   See {Types::GetKeyRotationStatusInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_key_rotation_status(
    #     key_id: 'KeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetKeyRotationStatusOutput
    #   resp.data.key_rotation_enabled #=> Boolean
    # @example To retrieve the rotation status for a KMS key
    #   # The following example retrieves the status of automatic annual rotation of the key material for the specified KMS key.
    #   resp = client.get_key_rotation_status({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_rotation_enabled: true
    #   }
    def get_key_rotation_status(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GetKeyRotationStatusInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GetKeyRotationStatus.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_key_rotation_status,
        tracer: tracer
      )
      Telemetry::GetKeyRotationStatus.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_key_rotation_status] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_key_rotation_status] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_key_rotation_status] #{output.data}")
        output
      end
    end

    # <p>Returns the public key and an import token you need to import or reimport key material for
    #       a KMS key. </p>
    #          <p>By default, KMS keys are created with key material that KMS generates. This operation
    #       supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a>, an advanced feature that lets you generate and import the cryptographic
    #       key material for a KMS key. For more information about importing key material into KMS, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>Before calling <code>GetParametersForImport</code>, use the <a>CreateKey</a>
    #       operation with an <code>Origin</code> value of <code>EXTERNAL</code> to create a KMS key with
    #       no key material. You can import key material for a symmetric encryption KMS key, HMAC KMS key,
    #       asymmetric encryption KMS key, or asymmetric signing KMS key. You can also import key material
    #       into a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any supported type. However, you can't import key material into
    #       a KMS key in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. You can also use <code>GetParametersForImport</code> to get a
    #       public key and import token to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material">reimport the original key
    #         material</a> into a KMS key whose key material expired or was deleted.</p>
    #          <p>
    #             <code>GetParametersForImport</code> returns the items that you need to import your key
    #       material.</p>
    #          <ul>
    #             <li>
    #                <p>The public key (or "wrapping key") of an RSA key pair that KMS generates.</p>
    #                <p>You will use this public key to encrypt ("wrap") your key material while it's in
    #           transit to KMS. </p>
    #             </li>
    #             <li>
    #                <p>A import token that ensures that KMS can decrypt your key material and associate it
    #           with the correct KMS key.</p>
    #             </li>
    #          </ul>
    #          <p>The public key and its import token are permanently linked and must be used together. Each
    #       public key and import token set is valid for 24 hours. The expiration date and time appear in
    #       the <code>ParametersValidTo</code> field in the <code>GetParametersForImport</code> response.
    #       You cannot use an expired public key or import token in an <a>ImportKeyMaterial</a>
    #       request. If your key and token expire, send another <code>GetParametersForImport</code>
    #       request.</p>
    #          <p>
    #             <code>GetParametersForImport</code> requires the following information:</p>
    #          <ul>
    #             <li>
    #                <p>The key ID of the KMS key for which you are importing the key material.</p>
    #             </li>
    #             <li>
    #                <p>The key spec of the public key ("wrapping key") that you will use to encrypt your key
    #           material during import.</p>
    #             </li>
    #             <li>
    #                <p>The wrapping algorithm that you will use with the public key to encrypt your key
    #           material.</p>
    #             </li>
    #          </ul>
    #          <p>You can use the same or a different public key spec and wrapping algorithm each time you
    #       import or reimport the same key material. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetParametersForImport</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ImportKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteImportedKeyMaterial</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GetParametersForImportInput] params
    #   Request parameters for this operation.
    #   See {Types::GetParametersForImportInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_parameters_for_import(
    #     key_id: 'KeyId', # required
    #     wrapping_algorithm: 'RSAES_PKCS1_V1_5', # required - accepts ["RSAES_PKCS1_V1_5", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "RSA_AES_KEY_WRAP_SHA_1", "RSA_AES_KEY_WRAP_SHA_256"]
    #     wrapping_key_spec: 'RSA_2048' # required - accepts ["RSA_2048", "RSA_3072", "RSA_4096"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetParametersForImportOutput
    #   resp.data.key_id #=> String
    #   resp.data.import_token #=> String
    #   resp.data.public_key #=> String
    #   resp.data.parameters_valid_to #=> Time
    def get_parameters_for_import(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GetParametersForImportInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GetParametersForImport.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_parameters_for_import,
        tracer: tracer
      )
      Telemetry::GetParametersForImport.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_parameters_for_import] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_parameters_for_import] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_parameters_for_import] #{output.data}")
        output
      end
    end

    # <p>Returns the public key of an asymmetric KMS key. Unlike the private key of a asymmetric
    #       KMS key, which never leaves KMS unencrypted, callers with <code>kms:GetPublicKey</code>
    #       permission can download the public key of an asymmetric KMS key. You can share the public key
    #       to allow others to encrypt messages and verify signatures outside of KMS.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>You do not need to download the public key. Instead, you can use the public key within
    #       KMS by calling the <a>Encrypt</a>, <a>ReEncrypt</a>, or <a>Verify</a> operations with the identifier of an asymmetric KMS key. When you use the
    #       public key within KMS, you benefit from the authentication, authorization, and logging that
    #       are part of every KMS operation. You also reduce of risk of encrypting data that cannot be
    #       decrypted. These features are not effective outside of KMS.</p>
    #          <p>To help you use the public key safely outside of KMS, <code>GetPublicKey</code> returns
    #       important information about the public key in the response, including:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeySpec">KeySpec</a>: The type of key material in the public key, such as
    #             <code>RSA_4096</code> or <code>ECC_NIST_P521</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage">KeyUsage</a>: Whether the key is used for encryption or signing.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms">EncryptionAlgorithms</a> or <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms">SigningAlgorithms</a>: A list of the encryption algorithms or the signing
    #           algorithms for the key.</p>
    #             </li>
    #          </ul>
    #          <p>Although KMS cannot enforce these restrictions on external operations, it is crucial
    #       that you use this information to prevent the public key from being used improperly. For
    #       example, you can prevent a public signing key from being used encrypt data, or prevent a
    #       public key from being used with an encryption algorithm that is not supported by KMS. You
    #       can also avoid errors, such as using the wrong signing algorithm in a verification
    #       operation.</p>
    #          <p>To verify a signature outside of KMS with an SM2 public key (China Regions only), you
    #       must specify the distinguishing ID. By default, KMS uses <code>1234567812345678</code> as
    #       the distinguishing ID. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification">Offline
    #         verification with SM2 key pairs</a>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:GetPublicKey</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>CreateKey</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::GetPublicKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::GetPublicKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_public_key(
    #     key_id: 'KeyId', # required
    #     grant_tokens: [
    #       'member'
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetPublicKeyOutput
    #   resp.data.key_id #=> String
    #   resp.data.public_key #=> String
    #   resp.data.customer_master_key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.key_usage #=> String, one of ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   resp.data.encryption_algorithms #=> Array<String>
    #   resp.data.encryption_algorithms[0] #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.signing_algorithms #=> Array<String>
    #   resp.data.signing_algorithms[0] #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    # @example To download the public key of an asymmetric KMS key
    #   # This example gets the public key of an asymmetric RSA KMS key used for encryption and decryption. The operation returns the key spec, key usage, and encryption or signing algorithms to help you use the public key correctly outside of AWS KMS.
    #   resp = client.get_public_key({
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     public_key: '<binary data>',
    #     customer_master_key_spec: "RSA_4096",
    #     key_usage: "ENCRYPT_DECRYPT",
    #     encryption_algorithms: [
    #       "RSAES_OAEP_SHA_1",
    #       "RSAES_OAEP_SHA_256"
    #     ]
    #   }
    def get_public_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::GetPublicKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::GetPublicKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_public_key,
        tracer: tracer
      )
      Telemetry::GetPublicKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_public_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_public_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_public_key] #{output.data}")
        output
      end
    end

    # <p>Imports or reimports key material into an existing KMS key that was created without key
    #       material. <code>ImportKeyMaterial</code> also sets the expiration model and expiration date of
    #       the imported key material.</p>
    #          <p>By default, KMS keys are created with key material that KMS generates. This operation
    #       supports <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a>, an advanced feature that lets you generate and import the cryptographic
    #       key material for a KMS key. For more information about importing key material into KMS, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing key
    #         material</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>After you successfully import key material into a KMS key, you can <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material">reimport
    #         the same key material</a> into that KMS key, but you cannot import different key
    #       material. You might reimport key material to replace key material that expired or key material
    #       that you deleted. You might also reimport key material to change the expiration model or
    #       expiration date of the key material. Before reimporting key material, if necessary, call <a>DeleteImportedKeyMaterial</a> to delete the current imported key material. </p>
    #          <p>Each time you import key material into KMS, you can determine whether
    #         (<code>ExpirationModel</code>) and when (<code>ValidTo</code>) the key material expires. To
    #       change the expiration of your key material, you must import it again, either by calling
    #         <code>ImportKeyMaterial</code> or using the <a href="kms/latest/developerguide/importing-keys-import-key-material.html#importing-keys-import-key-material-console">import features</a> of the KMS console.</p>
    #          <p>Before calling <code>ImportKeyMaterial</code>:</p>
    #          <ul>
    #             <li>
    #                <p>Create or identify a KMS key with no key material. The KMS key must have an
    #             <code>Origin</code> value of <code>EXTERNAL</code>, which indicates that the KMS key is
    #           designed for imported key material. </p>
    #                <p>To create an new KMS key for imported key material, call the <a>CreateKey</a> operation with an <code>Origin</code> value of <code>EXTERNAL</code>. You can create a
    #           symmetric encryption KMS key, HMAC KMS key, asymmetric encryption KMS key, or asymmetric
    #           signing KMS key. You can also import key material into a <a href="kms/latest/developerguide/multi-region-keys-overview.html">multi-Region key</a> of any
    #           supported type. However, you can't import key material into a KMS key in a <a href="kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use the <a>DescribeKey</a> operation to verify that the
    #             <code>KeyState</code> of the KMS key is <code>PendingImport</code>, which indicates that
    #           the KMS key has no key material. </p>
    #                <p>If you are reimporting the same key material into an existing KMS key, you might need
    #           to call the <a>DeleteImportedKeyMaterial</a> to delete its existing key
    #           material.</p>
    #             </li>
    #             <li>
    #                <p>Call the <a>GetParametersForImport</a> operation to get a public key and
    #           import token set for importing key material. </p>
    #             </li>
    #             <li>
    #                <p>Use the public key in the <a>GetParametersForImport</a> response to encrypt
    #           your key material.</p>
    #             </li>
    #          </ul>
    #          <p> Then, in an <code>ImportKeyMaterial</code> request, you submit your encrypted key
    #       material and import token. When calling this operation, you must specify the following
    #       values:</p>
    #          <ul>
    #             <li>
    #                <p>The key ID or key ARN of the KMS key to associate with the imported key material. Its
    #             <code>Origin</code> must be <code>EXTERNAL</code> and its <code>KeyState</code> must be
    #             <code>PendingImport</code>. You cannot perform this operation on a KMS key in a <a href="kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>, or on a KMS
    #           key in a different Amazon Web Services account. To get the <code>Origin</code> and <code>KeyState</code>
    #           of a KMS key, call <a>DescribeKey</a>.</p>
    #             </li>
    #             <li>
    #                <p>The encrypted key material. </p>
    #             </li>
    #             <li>
    #                <p>The import token that <a>GetParametersForImport</a> returned. You must use
    #           a public key and token from the same <code>GetParametersForImport</code> response.</p>
    #             </li>
    #             <li>
    #                <p>Whether the key material expires (<code>ExpirationModel</code>) and, if so, when
    #             (<code>ValidTo</code>). For help with this choice, see <a href="https://docs.aws.amazon.com/en_us/kms/latest/developerguide/importing-keys.html#importing-keys-expiration">Setting an expiration time</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #                <p>If you set an expiration date, KMS deletes the key material from the KMS key on the
    #           specified date, making the KMS key unusable. To use the KMS key in cryptographic
    #           operations again, you must reimport the same key material. However, you can delete and
    #           reimport the key material at any time, including before the key material expires. Each
    #           time you reimport, you can eliminate or reset the expiration time.</p>
    #             </li>
    #          </ul>
    #          <p>When this operation is successful, the key state of the KMS key changes from
    #         <code>PendingImport</code> to <code>Enabled</code>, and you can use the KMS key in
    #       cryptographic operations.</p>
    #          <p>If this operation fails, use the exception to help determine the problem. If the error is
    #       related to the key material, the import token, or wrapping key, use <a>GetParametersForImport</a> to get a new public key and import token for the KMS key
    #       and repeat the import procedure. For help, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview">How To Import Key
    #         Material</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ImportKeyMaterial</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteImportedKeyMaterial</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GetParametersForImport</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ImportKeyMaterialInput] params
    #   Request parameters for this operation.
    #   See {Types::ImportKeyMaterialInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.import_key_material(
    #     key_id: 'KeyId', # required
    #     import_token: 'ImportToken', # required
    #     encrypted_key_material: 'EncryptedKeyMaterial', # required
    #     valid_to: Time.now,
    #     expiration_model: 'KEY_MATERIAL_EXPIRES' # accepts ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ImportKeyMaterialOutput
    # @example To import key material into a KMS key
    #   # The following example imports key material into the specified KMS key.
    #   resp = client.import_key_material({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     import_token: '<binary data>',
    #     encrypted_key_material: '<binary data>',
    #     expiration_model: "KEY_MATERIAL_DOES_NOT_EXPIRE"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def import_key_material(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ImportKeyMaterialInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ImportKeyMaterial.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :import_key_material,
        tracer: tracer
      )
      Telemetry::ImportKeyMaterial.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#import_key_material] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#import_key_material] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#import_key_material] #{output.data}")
        output
      end
    end

    # <p>Gets a list of aliases in the caller's Amazon Web Services account and region. For more information
    #       about aliases, see <a>CreateAlias</a>.</p>
    #          <p>By default, the <code>ListAliases</code> operation returns all aliases in the account and
    #       region. To get only the aliases associated with a particular KMS key, use the
    #         <code>KeyId</code> parameter.</p>
    #          <p>The <code>ListAliases</code> response can include aliases that you created and associated
    #       with your customer managed keys, and aliases that Amazon Web Services created and associated with Amazon Web Services
    #       managed keys in your account. You can recognize Amazon Web Services aliases because their names have the
    #       format <code>aws/<service-name></code>, such as <code>aws/dynamodb</code>.</p>
    #          <p>The response might also include aliases that have no <code>TargetKeyId</code> field. These
    #       are predefined aliases that Amazon Web Services has created but has not yet associated with a KMS key.
    #       Aliases that Amazon Web Services creates in your account, including predefined aliases, do not count against
    #       your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit">KMS aliases
    #         quota</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. <code>ListAliases</code> does not
    #       return aliases in other Amazon Web Services accounts.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListAliases</a> (IAM policy)</p>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdateAlias</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListAliasesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListAliasesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_aliases(
    #     key_id: 'KeyId',
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListAliasesOutput
    #   resp.data.aliases #=> Array<AliasListEntry>
    #   resp.data.aliases[0] #=> Types::AliasListEntry
    #   resp.data.aliases[0].alias_name #=> String
    #   resp.data.aliases[0].alias_arn #=> String
    #   resp.data.aliases[0].target_key_id #=> String
    #   resp.data.aliases[0].creation_date #=> Time
    #   resp.data.aliases[0].last_updated_date #=> Time
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    # @example To list aliases
    #   resp = client.list_aliases()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     aliases: [
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/acm",
    #         alias_name: "alias/aws/acm",
    #         target_key_id: "da03f6f7-d279-427a-9cae-de48d07e5b66"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/ebs",
    #         alias_name: "alias/aws/ebs",
    #         target_key_id: "25a217e7-7170-4b8c-8bf6-045ea5f70e5b"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/rds",
    #         alias_name: "alias/aws/rds",
    #         target_key_id: "7ec3104e-c3f2-4b5c-bf42-bfc4772c6685"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/redshift",
    #         alias_name: "alias/aws/redshift",
    #         target_key_id: "08f7a25a-69e2-4fb5-8f10-393db27326fa"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/aws/s3",
    #         alias_name: "alias/aws/s3",
    #         target_key_id: "d2b0f1a3-580d-4f79-b836-bc983be8cfa5"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example1",
    #         alias_name: "alias/example1",
    #         target_key_id: "4da1e216-62d0-46c5-a7c0-5f3a3d2f8046"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example2",
    #         alias_name: "alias/example2",
    #         target_key_id: "f32fef59-2cc2-445b-8573-2d73328acbee"
    #       },
    #       {
    #         alias_arn: "arn:aws:kms:us-east-2:111122223333:alias/example3",
    #         alias_name: "alias/example3",
    #         target_key_id: "1374ef38-d34e-4d5f-b2c9-4e0daee38855"
    #       }
    #     ],
    #     truncated: false
    #   }
    def list_aliases(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListAliasesInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListAliases.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_aliases,
        tracer: tracer
      )
      Telemetry::ListAliases.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_aliases] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_aliases] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_aliases] #{output.data}")
        output
      end
    end

    # <p>Gets a list of all grants for the specified KMS key. </p>
    #          <p>You must specify the KMS key in all requests. You can filter the grant list by grant ID or
    #       grantee principal.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of working with grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html">Programming grants</a>. </p>
    #          <note>
    #             <p>The <code>GranteePrincipal</code> field in the <code>ListGrants</code> response usually contains the
    #         user or role designated as the grantee principal in the grant. However, when the grantee
    #         principal in the grant is an Amazon Web Services service, the <code>GranteePrincipal</code> field contains
    #         the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services">service
    #           principal</a>, which might represent several different grantee principals.</p>
    #          </note>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListGrants</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListGrantsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListGrantsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_grants(
    #     limit: 1,
    #     marker: 'Marker',
    #     key_id: 'KeyId', # required
    #     grant_id: 'GrantId',
    #     grantee_principal: 'GranteePrincipal'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListGrantsOutput
    #   resp.data.grants #=> Array<GrantListEntry>
    #   resp.data.grants[0] #=> Types::GrantListEntry
    #   resp.data.grants[0].key_id #=> String
    #   resp.data.grants[0].grant_id #=> String
    #   resp.data.grants[0].name #=> String
    #   resp.data.grants[0].creation_date #=> Time
    #   resp.data.grants[0].grantee_principal #=> String
    #   resp.data.grants[0].retiring_principal #=> String
    #   resp.data.grants[0].issuing_account #=> String
    #   resp.data.grants[0].operations #=> Array<String>
    #   resp.data.grants[0].operations[0] #=> String, one of ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac"]
    #   resp.data.grants[0].constraints #=> Types::GrantConstraints
    #   resp.data.grants[0].constraints.encryption_context_subset #=> Hash<String, String>
    #   resp.data.grants[0].constraints.encryption_context_subset['key'] #=> String
    #   resp.data.grants[0].constraints.encryption_context_equals #=> Hash<String, String>
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    def list_grants(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListGrantsInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListGrants.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_grants,
        tracer: tracer
      )
      Telemetry::ListGrants.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_grants] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_grants] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_grants] #{output.data}")
        output
      end
    end

    # <p>Gets the names of the key policies that are attached to a KMS key. This operation is
    #       designed to get policy names that you can use in a <a>GetKeyPolicy</a> operation.
    #       However, the only valid policy name is <code>default</code>. </p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListKeyPolicies</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetKeyPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html">PutKeyPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListKeyPoliciesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListKeyPoliciesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_key_policies(
    #     key_id: 'KeyId', # required
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListKeyPoliciesOutput
    #   resp.data.policy_names #=> Array<String>
    #   resp.data.policy_names[0] #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    # @example To list key policies for a KMS key
    #   # The following example lists key policies for the specified KMS key.
    #   resp = client.list_key_policies({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     policy_names: [
    #       "default"
    #     ],
    #     truncated: false
    #   }
    def list_key_policies(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListKeyPoliciesInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListKeyPolicies.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_key_policies,
        tracer: tracer
      )
      Telemetry::ListKeyPolicies.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_key_policies] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_key_policies] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_key_policies] #{output.data}")
        output
      end
    end

    # <p>Gets a list of all KMS keys in the caller's Amazon Web Services account and Region.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListKeys</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListKeysInput] params
    #   Request parameters for this operation.
    #   See {Types::ListKeysInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_keys(
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListKeysOutput
    #   resp.data.keys #=> Array<KeyListEntry>
    #   resp.data.keys[0] #=> Types::KeyListEntry
    #   resp.data.keys[0].key_id #=> String
    #   resp.data.keys[0].key_arn #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    # @example To list KMS keys
    #   resp = client.list_keys()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     keys: [
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/0d990263-018e-4e65-a703-eff731de951e",
    #         key_id: "0d990263-018e-4e65-a703-eff731de951e"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/144be297-0ae1-44ac-9c8f-93cd8c82f841",
    #         key_id: "144be297-0ae1-44ac-9c8f-93cd8c82f841"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/21184251-b765-428e-b852-2c7353e72571",
    #         key_id: "21184251-b765-428e-b852-2c7353e72571"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/214fe92f-5b03-4ae1-b350-db2a45dbe10c",
    #         key_id: "214fe92f-5b03-4ae1-b350-db2a45dbe10c"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/339963f2-e523-49d3-af24-a0fe752aa458",
    #         key_id: "339963f2-e523-49d3-af24-a0fe752aa458"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/b776a44b-df37-4438-9be4-a27494e4271a",
    #         key_id: "b776a44b-df37-4438-9be4-a27494e4271a"
    #       },
    #       {
    #         key_arn: "arn:aws:kms:us-east-2:111122223333:key/deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb",
    #         key_id: "deaf6c9e-cf2c-46a6-bf6d-0b6d487cffbb"
    #       }
    #     ],
    #     truncated: false
    #   }
    def list_keys(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListKeysInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListKeys.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_keys,
        tracer: tracer
      )
      Telemetry::ListKeys.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_keys] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_keys] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_keys] #{output.data}")
        output
      end
    end

    # <p>Returns all tags on the specified KMS key.</p>
    #          <p>For general information about tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in
    #       the <i>Amazon Web Services General Reference</i>. For information about using
    #       tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging
    #         keys</a>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListResourceTags</a> (key policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TagResource</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UntagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListResourceTagsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListResourceTagsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_resource_tags(
    #     key_id: 'KeyId', # required
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListResourceTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].tag_key #=> String
    #   resp.data.tags[0].tag_value #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    # @example To list tags for a KMS key
    #   # The following example lists tags for a KMS key.
    #   resp = client.list_resource_tags({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         tag_key: "CostCenter",
    #         tag_value: "87654"
    #       },
    #       {
    #         tag_key: "CreatedBy",
    #         tag_value: "ExampleUser"
    #       },
    #       {
    #         tag_key: "Purpose",
    #         tag_value: "Test"
    #       }
    #     ],
    #     truncated: false
    #   }
    def list_resource_tags(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListResourceTagsInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListResourceTags.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_resource_tags,
        tracer: tracer
      )
      Telemetry::ListResourceTags.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_resource_tags] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_resource_tags] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_resource_tags] #{output.data}")
        output
      end
    end

    # <p>Returns information about all grants in the Amazon Web Services account and Region that have the
    #       specified retiring principal. </p>
    #          <p>You can specify any principal in your Amazon Web Services account. The grants that are returned include
    #       grants for KMS keys in your Amazon Web Services account and other Amazon Web Services accounts. You might use this
    #       operation to determine which grants you may retire. To retire a grant, use the <a>RetireGrant</a> operation.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of working with grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html">Programming grants</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: You must specify a principal in your
    #       Amazon Web Services account. This operation returns a list of grants where the retiring principal specified
    #       in the <code>ListRetirableGrants</code> request is the same retiring principal on the grant.
    #       This can include grants on KMS keys owned by other Amazon Web Services accounts, but you do not need
    #         <code>kms:ListRetirableGrants</code> permission (or any other additional permission) in any
    #       Amazon Web Services account other than your own.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ListRetirableGrants</a> (IAM policy) in your
    #       Amazon Web Services account.</p>
    #          <note>
    #             <p>KMS authorizes <code>ListRetirableGrants</code> requests by evaluating the caller
    #         account's kms:ListRetirableGrants permissions. The authorized resource in
    #           <code>ListRetirableGrants</code> calls is the retiring principal specified in the request.
    #         KMS does not evaluate the caller's permissions to verify their access to any KMS keys or
    #         grants that might be returned by the <code>ListRetirableGrants</code> call.</p>
    #          </note>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ListRetirableGrantsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListRetirableGrantsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_retirable_grants(
    #     limit: 1,
    #     marker: 'Marker',
    #     retiring_principal: 'RetiringPrincipal' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListRetirableGrantsOutput
    #   resp.data.grants #=> Array<GrantListEntry>
    #   resp.data.grants[0] #=> Types::GrantListEntry
    #   resp.data.grants[0].key_id #=> String
    #   resp.data.grants[0].grant_id #=> String
    #   resp.data.grants[0].name #=> String
    #   resp.data.grants[0].creation_date #=> Time
    #   resp.data.grants[0].grantee_principal #=> String
    #   resp.data.grants[0].retiring_principal #=> String
    #   resp.data.grants[0].issuing_account #=> String
    #   resp.data.grants[0].operations #=> Array<String>
    #   resp.data.grants[0].operations[0] #=> String, one of ["Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "Sign", "Verify", "GetPublicKey", "CreateGrant", "RetireGrant", "DescribeKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateMac", "VerifyMac"]
    #   resp.data.grants[0].constraints #=> Types::GrantConstraints
    #   resp.data.grants[0].constraints.encryption_context_subset #=> Hash<String, String>
    #   resp.data.grants[0].constraints.encryption_context_subset['key'] #=> String
    #   resp.data.grants[0].constraints.encryption_context_equals #=> Hash<String, String>
    #   resp.data.next_marker #=> String
    #   resp.data.truncated #=> Boolean
    def list_retirable_grants(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ListRetirableGrantsInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ListRetirableGrants.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_retirable_grants,
        tracer: tracer
      )
      Telemetry::ListRetirableGrants.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_retirable_grants] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_retirable_grants] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_retirable_grants] #{output.data}")
        output
      end
    end

    # <p>Attaches a key policy to the specified KMS key. </p>
    #          <p>For more information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>Key Management Service Developer Guide</i>.
    #       For help writing and formatting a JSON policy document, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON Policy Reference</a> in the <i>
    #                <i>Identity and Access Management User Guide</i>
    #             </i>. For examples of adding a key policy in multiple programming languages,
    #       see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-key-policies.html#put-policy">Setting a key policy</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:PutKeyPolicy</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>GetKeyPolicy</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::PutKeyPolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::PutKeyPolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_key_policy(
    #     key_id: 'KeyId', # required
    #     policy_name: 'PolicyName', # required
    #     policy: 'Policy', # required
    #     bypass_policy_lockout_safety_check: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutKeyPolicyOutput
    # @example To attach a key policy to a KMS key
    #   # The following example attaches a key policy to the specified KMS key.
    #   resp = client.put_key_policy({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     policy_name: "default",
    #     policy: "{\n    \"Version\": \"2012-10-17\",\n    \"Id\": \"custom-policy-2016-12-07\",\n    \"Statement\": [\n        {\n            \"Sid\": \"Enable IAM User Permissions\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:root\"\n            },\n            \"Action\": \"kms:*\",\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow access for Key Administrators\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": [\n                    \"arn:aws:iam::111122223333:user/ExampleAdminUser\",\n                    \"arn:aws:iam::111122223333:role/ExampleAdminRole\"\n                ]\n            },\n            \"Action\": [\n                \"kms:Create*\",\n                \"kms:Describe*\",\n                \"kms:Enable*\",\n                \"kms:List*\",\n                \"kms:Put*\",\n                \"kms:Update*\",\n                \"kms:Revoke*\",\n                \"kms:Disable*\",\n                \"kms:Get*\",\n                \"kms:Delete*\",\n                \"kms:ScheduleKeyDeletion\",\n                \"kms:CancelKeyDeletion\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow use of the key\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"\n            },\n            \"Action\": [\n                \"kms:Encrypt\",\n                \"kms:Decrypt\",\n                \"kms:ReEncrypt*\",\n                \"kms:GenerateDataKey*\",\n                \"kms:DescribeKey\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"Allow attachment of persistent resources\",\n            \"Effect\": \"Allow\",\n            \"Principal\": {\n                \"AWS\": \"arn:aws:iam::111122223333:role/ExamplePowerUserRole\"\n            },\n            \"Action\": [\n                \"kms:CreateGrant\",\n                \"kms:ListGrants\",\n                \"kms:RevokeGrant\"\n            ],\n            \"Resource\": \"*\",\n            \"Condition\": {\n                \"Bool\": {\n                    \"kms:GrantIsForAWSResource\": \"true\"\n                }\n            }\n        }\n    ]\n}\n"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_key_policy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::PutKeyPolicyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::PutKeyPolicy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_key_policy,
        tracer: tracer
      )
      Telemetry::PutKeyPolicy.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_key_policy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_key_policy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_key_policy] #{output.data}")
        output
      end
    end

    # <p>Decrypts ciphertext and then reencrypts it entirely within KMS. You can use this
    #       operation to change the KMS key under which data is encrypted, such as when you <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually">manually
    #         rotate</a> a KMS key or change the KMS key that protects a ciphertext. You can also use
    #       it to reencrypt ciphertext under the same KMS key, such as to change the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">encryption
    #         context</a> of a ciphertext.</p>
    #          <p>The <code>ReEncrypt</code> operation can decrypt ciphertext that was encrypted by using a
    #       KMS key in an KMS operation, such as <a>Encrypt</a> or <a>GenerateDataKey</a>. It can also decrypt ciphertext that was encrypted by using the
    #       public key of an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks">asymmetric KMS key</a>
    #       outside of KMS. However, it cannot decrypt ciphertext produced by other libraries, such as
    #       the <a href="https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/">Amazon Web Services Encryption SDK</a> or
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3
    #         client-side encryption</a>. These libraries return a ciphertext format that is
    #       incompatible with KMS.</p>
    #          <p>When you use the <code>ReEncrypt</code> operation, you need to provide information for the
    #       decrypt operation and the subsequent encrypt operation.</p>
    #          <ul>
    #             <li>
    #                <p>If your ciphertext was encrypted under an asymmetric KMS key, you must use the
    #             <code>SourceKeyId</code> parameter to identify the KMS key that encrypted the
    #           ciphertext. You must also supply the encryption algorithm that was used. This information
    #           is required to decrypt the data.</p>
    #             </li>
    #             <li>
    #                <p>If your ciphertext was encrypted under a symmetric encryption KMS key, the
    #             <code>SourceKeyId</code> parameter is optional. KMS can get this information from
    #           metadata that it adds to the symmetric ciphertext blob. This feature adds durability to
    #           your implementation by ensuring that authorized users can decrypt ciphertext decades after
    #           it was encrypted, even if they've lost track of the key ID. However, specifying the source
    #           KMS key is always recommended as a best practice. When you use the
    #             <code>SourceKeyId</code> parameter to specify a KMS key, KMS uses only the KMS key you
    #           specify. If the ciphertext was encrypted under a different KMS key, the
    #             <code>ReEncrypt</code> operation fails. This practice ensures that you use the KMS key
    #           that you intend.</p>
    #             </li>
    #             <li>
    #                <p>To reencrypt the data, you must use the <code>DestinationKeyId</code> parameter to
    #           specify the KMS key that re-encrypts the data after it is decrypted. If the destination
    #           KMS key is an asymmetric KMS key, you must also provide the encryption algorithm. The
    #           algorithm that you choose must be compatible with the KMS key.</p>
    #                <important>
    #                   <p>When you use an asymmetric KMS key to encrypt or reencrypt data, be sure to record the KMS key and encryption algorithm that you choose. You will be required to provide the same KMS key and encryption algorithm when you decrypt the data. If the KMS key and algorithm do not match the values used to encrypt the data, the decrypt operation fails.</p>
    #                   <p>You are not required to supply the key ID and encryption algorithm when you decrypt with symmetric encryption KMS keys because KMS stores this information in the ciphertext blob. KMS cannot store metadata in ciphertext generated with asymmetric keys. The standard format for asymmetric key ciphertext does not include configurable fields.</p>
    #                </important>
    #             </li>
    #          </ul>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. The source KMS key and
    #       destination KMS key can be in different Amazon Web Services accounts. Either or both KMS keys can be in a
    #       different account than the caller. To specify a KMS key in a different account, you must use
    #       its key ARN or alias ARN.</p>
    #          <p>
    #             <b>Required permissions</b>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ReEncryptFrom</a>
    #           permission on the source KMS key (key policy)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:ReEncryptTo</a>
    #           permission on the destination KMS key (key policy)</p>
    #             </li>
    #          </ul>
    #          <p>To permit reencryption from or to a KMS key, include the <code>"kms:ReEncrypt*"</code>
    #       permission in your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policy</a>. This permission is
    #       automatically included in the key policy when you use the console to create a KMS key. But you
    #       must include it manually when you create a KMS key programmatically or when you use the <a>PutKeyPolicy</a> operation to set a key policy.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>Decrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>Encrypt</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GenerateDataKeyPair</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ReEncryptInput] params
    #   Request parameters for this operation.
    #   See {Types::ReEncryptInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.re_encrypt(
    #     ciphertext_blob: 'CiphertextBlob', # required
    #     source_encryption_context: {
    #       'key' => 'value'
    #     },
    #     source_key_id: 'SourceKeyId',
    #     destination_key_id: 'DestinationKeyId', # required
    #     source_encryption_algorithm: 'SYMMETRIC_DEFAULT', # accepts ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #     destination_encryption_algorithm: 'SYMMETRIC_DEFAULT', # accepts ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::ReEncryptOutput
    #   resp.data.ciphertext_blob #=> String
    #   resp.data.source_key_id #=> String
    #   resp.data.key_id #=> String
    #   resp.data.source_encryption_algorithm #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.destination_encryption_algorithm #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    # @example To reencrypt data
    #   # The following example reencrypts data with the specified KMS key.
    #   resp = client.re_encrypt({
    #     ciphertext_blob: '<binary data>',
    #     destination_key_id: "0987dcba-09fe-87dc-65ba-ab0987654321"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     ciphertext_blob: '<binary data>',
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     source_key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    def re_encrypt(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ReEncryptInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ReEncrypt.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :re_encrypt,
        tracer: tracer
      )
      Telemetry::ReEncrypt.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#re_encrypt] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#re_encrypt] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#re_encrypt] #{output.data}")
        output
      end
    end

    # <p>Replicates a multi-Region key into the specified Region. This operation creates a
    #       multi-Region replica key based on a multi-Region primary key in a different Region of the same
    #       Amazon Web Services partition. You can create multiple replicas of a primary key, but each must be in a
    #       different Region. To create a multi-Region primary key, use the <a>CreateKey</a>
    #       operation.</p>
    #          <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>A <i>replica key</i> is a fully-functional KMS key that can be used
    #       independently of its primary and peer replica keys. A primary key and its replica keys share
    #       properties that make them interoperable. They have the same <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id">key ID</a> and key material. They also
    #       have the same <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec">key
    #         spec</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage">key
    #         usage</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin">key
    #         material origin</a>, and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic key rotation status</a>. KMS automatically synchronizes these shared
    #       properties among related multi-Region keys. All other properties of a replica key can differ,
    #       including its <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key
    #         policy</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">tags</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html">aliases</a>, and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a>. KMS pricing and quotas for KMS keys apply to each
    #       primary key and replica key.</p>
    #          <p>When this operation completes, the new replica key has a transient key state of
    #         <code>Creating</code>. This key state changes to <code>Enabled</code> (or
    #         <code>PendingImport</code>) after a few seconds when the process of creating the new replica
    #       key is complete. While the key state is <code>Creating</code>, you can manage key, but you
    #       cannot yet use it in cryptographic operations. If you are creating and using the replica key
    #       programmatically, retry on <code>KMSInvalidStateException</code> or call
    #         <code>DescribeKey</code> to check its <code>KeyState</code> value before using it. For
    #       details about the <code>Creating</code> key state, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>You cannot create more than one replica of a primary key in any Region. If the Region
    #       already includes a replica of the key you're trying to replicate, <code>ReplicateKey</code>
    #       returns an <code>AlreadyExistsException</code> error. If the key state of the existing replica
    #       is <code>PendingDeletion</code>, you can cancel the scheduled key deletion (<a>CancelKeyDeletion</a>) or wait for the key to be deleted. The new replica key you
    #       create will have the same <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html#mrk-sync-properties">shared
    #         properties</a> as the original replica key.</p>
    #          <p>The CloudTrail log of a <code>ReplicateKey</code> operation records a
    #         <code>ReplicateKey</code> operation in the primary key's Region and a <a>CreateKey</a> operation in the replica key's Region.</p>
    #          <p>If you replicate a multi-Region primary key with imported key material, the replica key is
    #       created with no key material. You must import the same key material that you imported into the
    #       primary key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html">Importing key material into multi-Region
    #         keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>To convert a replica key to a primary key, use the <a>UpdatePrimaryRegion</a>
    #       operation.</p>
    #          <note>
    #             <p>
    #                <code>ReplicateKey</code> uses different default values for the <code>KeyPolicy</code>
    #         and <code>Tags</code> parameters than those used in the KMS console. For details, see the
    #         parameter descriptions.</p>
    #          </note>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation to
    #       create a replica key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>kms:ReplicateKey</code> on the primary key (in the primary key's Region).
    #           Include this permission in the primary key's key policy.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>kms:CreateKey</code> in an IAM policy in the replica Region.</p>
    #             </li>
    #             <li>
    #                <p>To use the <code>Tags</code> parameter, <code>kms:TagResource</code> in an IAM policy
    #           in the replica Region.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UpdatePrimaryRegion</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ReplicateKeyInput] params
    #   Request parameters for this operation.
    #   See {Types::ReplicateKeyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.replicate_key(
    #     key_id: 'KeyId', # required
    #     replica_region: 'ReplicaRegion', # required
    #     policy: 'Policy',
    #     bypass_policy_lockout_safety_check: false,
    #     description: 'Description',
    #     tags: [
    #       {
    #         tag_key: 'TagKey', # required
    #         tag_value: 'TagValue' # required
    #       }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ReplicateKeyOutput
    #   resp.data.replica_key_metadata #=> Types::KeyMetadata
    #   resp.data.replica_key_metadata.aws_account_id #=> String
    #   resp.data.replica_key_metadata.key_id #=> String
    #   resp.data.replica_key_metadata.arn #=> String
    #   resp.data.replica_key_metadata.creation_date #=> Time
    #   resp.data.replica_key_metadata.enabled #=> Boolean
    #   resp.data.replica_key_metadata.description #=> String
    #   resp.data.replica_key_metadata.key_usage #=> String, one of ["SIGN_VERIFY", "ENCRYPT_DECRYPT", "GENERATE_VERIFY_MAC"]
    #   resp.data.replica_key_metadata.key_state #=> String, one of ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   resp.data.replica_key_metadata.deletion_date #=> Time
    #   resp.data.replica_key_metadata.valid_to #=> Time
    #   resp.data.replica_key_metadata.origin #=> String, one of ["AWS_KMS", "EXTERNAL", "AWS_CLOUDHSM", "EXTERNAL_KEY_STORE"]
    #   resp.data.replica_key_metadata.custom_key_store_id #=> String
    #   resp.data.replica_key_metadata.cloud_hsm_cluster_id #=> String
    #   resp.data.replica_key_metadata.expiration_model #=> String, one of ["KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"]
    #   resp.data.replica_key_metadata.key_manager #=> String, one of ["AWS", "CUSTOMER"]
    #   resp.data.replica_key_metadata.customer_master_key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.replica_key_metadata.key_spec #=> String, one of ["RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521", "ECC_SECG_P256K1", "SYMMETRIC_DEFAULT", "HMAC_224", "HMAC_256", "HMAC_384", "HMAC_512", "SM2"]
    #   resp.data.replica_key_metadata.encryption_algorithms #=> Array<String>
    #   resp.data.replica_key_metadata.encryption_algorithms[0] #=> String, one of ["SYMMETRIC_DEFAULT", "RSAES_OAEP_SHA_1", "RSAES_OAEP_SHA_256", "SM2PKE"]
    #   resp.data.replica_key_metadata.signing_algorithms #=> Array<String>
    #   resp.data.replica_key_metadata.signing_algorithms[0] #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #   resp.data.replica_key_metadata.multi_region #=> Boolean
    #   resp.data.replica_key_metadata.multi_region_configuration #=> Types::MultiRegionConfiguration
    #   resp.data.replica_key_metadata.multi_region_configuration.multi_region_key_type #=> String, one of ["PRIMARY", "REPLICA"]
    #   resp.data.replica_key_metadata.multi_region_configuration.primary_key #=> Types::MultiRegionKey
    #   resp.data.replica_key_metadata.multi_region_configuration.primary_key.arn #=> String
    #   resp.data.replica_key_metadata.multi_region_configuration.primary_key.region #=> String
    #   resp.data.replica_key_metadata.multi_region_configuration.replica_keys #=> Array<MultiRegionKey>
    #   resp.data.replica_key_metadata.pending_deletion_window_in_days #=> Integer
    #   resp.data.replica_key_metadata.mac_algorithms #=> Array<String>
    #   resp.data.replica_key_metadata.mac_algorithms[0] #=> String, one of ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #   resp.data.replica_key_metadata.xks_key_configuration #=> Types::XksKeyConfigurationType
    #   resp.data.replica_key_metadata.xks_key_configuration.id #=> String
    #   resp.data.replica_policy #=> String
    #   resp.data.replica_tags #=> Array<Tag>
    #   resp.data.replica_tags[0] #=> Types::Tag
    #   resp.data.replica_tags[0].tag_key #=> String
    #   resp.data.replica_tags[0].tag_value #=> String
    # @example To replicate a multi-Region key in a different AWS Region
    #   # This example creates a multi-Region replica key in us-west-2 of a multi-Region primary key in us-east-1.
    #   resp = client.replicate_key({
    #     key_id: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #     replica_region: "us-west-2"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     replica_key_metadata: {
    #       multi_region: true,
    #       multi_region_configuration: {
    #         multi_region_key_type: "REPLICA",
    #         primary_key: {
    #           arn: "arn:aws:kms:us-east-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #           region: "us-east-1"
    #         },
    #         replica_keys: [
    #           {
    #             arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #             region: "us-west-2"
    #           }
    #         ]
    #       },
    #       aws_account_id: "111122223333",
    #       arn: "arn:aws:kms:us-west-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #       creation_date: Time.at(1607472987, 918, :millisecond),
    #       description: "",
    #       enabled: true,
    #       key_id: "mrk-1234abcd12ab34cd56ef1234567890ab",
    #       key_manager: "CUSTOMER",
    #       key_state: "Enabled",
    #       key_usage: "ENCRYPT_DECRYPT",
    #       origin: "AWS_KMS",
    #       customer_master_key_spec: "SYMMETRIC_DEFAULT",
    #       encryption_algorithms: [
    #         "SYMMETRIC_DEFAULT"
    #       ]
    #     },
    #     replica_policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Id\" : \"key-default-1\",...}",
    #     replica_tags: [
    #
    #     ]
    #   }
    def replicate_key(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ReplicateKeyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ReplicateKey.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :replicate_key,
        tracer: tracer
      )
      Telemetry::ReplicateKey.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#replicate_key] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#replicate_key] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#replicate_key] #{output.data}")
        output
      end
    end

    # <p>Deletes a grant. Typically, you retire a grant when you no longer need its permissions. To
    #       identify the grant to retire, use a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token">grant token</a>, or both the grant ID and a
    #       key identifier (key ID or key ARN) of the KMS key. The <a>CreateGrant</a> operation
    #       returns both values.</p>
    #          <p>This operation can be called by the <i>retiring principal</i> for a grant,
    #       by the <i>grantee principal</i> if the grant allows the <code>RetireGrant</code>
    #       operation, and by the Amazon Web Services account in which the grant is created. It can also be called by
    #       principals to whom permission for retiring a grant is delegated. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete">Retiring and revoking
    #         grants</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of working with grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html">Programming grants</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. You can retire a grant on a KMS
    #       key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: Permission to retire a grant is
    #       determined primarily by the grant. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#grant-delete">Retiring and revoking grants</a> in
    #       the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RevokeGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::RetireGrantInput] params
    #   Request parameters for this operation.
    #   See {Types::RetireGrantInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.retire_grant(
    #     grant_token: 'GrantToken',
    #     key_id: 'KeyId',
    #     grant_id: 'GrantId',
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::RetireGrantOutput
    # @example To retire a grant
    #   # The following example retires a grant.
    #   resp = client.retire_grant({
    #     key_id: "arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def retire_grant(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::RetireGrantInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::RetireGrant.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :retire_grant,
        tracer: tracer
      )
      Telemetry::RetireGrant.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#retire_grant] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#retire_grant] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#retire_grant] #{output.data}")
        output
      end
    end

    # <p>Deletes the specified grant. You revoke a grant to terminate the permissions that the
    #       grant allows. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/managing-grants.html#grant-delete">Retiring and revoking grants</a> in
    #       the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>.</p>
    #          <p>When you create, retire, or revoke a grant, there might be a brief delay, usually less than five minutes, until the grant is available throughout KMS. This state is known as <i>eventual consistency</i>. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-eventual-consistency">Eventual consistency</a> in
    #       the <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. </p>
    #          <p>For detailed information about grants, including grant terminology, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants in KMS</a> in the
    #         <i>
    #                <i>Key Management Service Developer Guide</i>
    #             </i>. For examples of working with grants in several
    #       programming languages, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-grants.html">Programming grants</a>. </p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key
    #   ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:RevokeGrant</a> (key policy).</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateGrant</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListRetirableGrants</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RetireGrant</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::RevokeGrantInput] params
    #   Request parameters for this operation.
    #   See {Types::RevokeGrantInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.revoke_grant(
    #     key_id: 'KeyId', # required
    #     grant_id: 'GrantId', # required
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::RevokeGrantOutput
    # @example To revoke a grant
    #   # The following example revokes a grant.
    #   resp = client.revoke_grant({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     grant_id: "0c237476b39f8bc44e45212e08498fbe3151305030726c0590dd8d3e9f3d6a60"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def revoke_grant(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::RevokeGrantInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::RevokeGrant.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :revoke_grant,
        tracer: tracer
      )
      Telemetry::RevokeGrant.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#revoke_grant] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#revoke_grant] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#revoke_grant] #{output.data}")
        output
      end
    end

    # <p>Schedules the deletion of a KMS key. By default, KMS applies a waiting period of 30
    #       days, but you can specify a waiting period of 7-30 days. When this operation is successful,
    #       the key state of the KMS key changes to <code>PendingDeletion</code> and the key can't be used
    #       in any cryptographic operations. It remains in this state for the duration of the waiting
    #       period. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to
    #       cancel the deletion of the KMS key. After the waiting period ends, KMS deletes the KMS key,
    #       its key material, and all KMS data associated with it, including all aliases that refer to
    #       it.</p>
    #          <important>
    #             <p>Deleting a KMS key is a destructive and potentially dangerous operation. When a KMS key
    #         is deleted, all data that was encrypted under the KMS key is unrecoverable. (The only
    #         exception is a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html">multi-Region replica key</a>, or an <a href="kms/latest/developerguide/importing-keys-managing.html#import-delete-key">asymmetric or HMAC KMS
    #           key with imported key material</a>.) To prevent the use of a KMS key without deleting
    #         it, use <a>DisableKey</a>. </p>
    #          </important>
    #          <p>You can schedule the deletion of a multi-Region primary key and its replica keys at any
    #       time. However, KMS will not delete a multi-Region primary key with existing replica keys. If
    #       you schedule the deletion of a primary key with replicas, its key state changes to
    #         <code>PendingReplicaDeletion</code> and it cannot be replicated or used in cryptographic
    #       operations. This status can continue indefinitely. When the last of its replicas keys is
    #       deleted (not just scheduled), the key state of the primary key changes to
    #         <code>PendingDeletion</code> and its waiting period (<code>PendingWindowInDays</code>)
    #       begins. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html">Deleting multi-Region keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>When KMS <a href="https://docs.aws.amazon.com/kms/latest/developerguide/delete-cmk-keystore.html">deletes
    #         a KMS key from an CloudHSM key store</a>, it makes a best effort to delete the associated
    #       key material from the associated CloudHSM cluster. However, you might need to manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete
    #         the orphaned key material</a> from the cluster and its backups. <a href="https://docs.aws.amazon.com/kms/latest/developerguide/delete-xks-key.html">Deleting a KMS key from an
    #         external key store</a> has no effect on the associated external key. However, for both
    #       types of custom key stores, deleting a KMS key is destructive and irreversible. You cannot
    #       decrypt ciphertext encrypted under the KMS key by using only its associated external key or
    #       CloudHSM key. Also, you cannot recreate a KMS key in an external key store by creating a new KMS
    #       key with the same key material.</p>
    #          <p>For more information about scheduling a KMS key for deletion, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting KMS keys</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: kms:ScheduleKeyDeletion (key
    #       policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CancelKeyDeletion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisableKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::ScheduleKeyDeletionInput] params
    #   Request parameters for this operation.
    #   See {Types::ScheduleKeyDeletionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.schedule_key_deletion(
    #     key_id: 'KeyId', # required
    #     pending_window_in_days: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ScheduleKeyDeletionOutput
    #   resp.data.key_id #=> String
    #   resp.data.deletion_date #=> Time
    #   resp.data.key_state #=> String, one of ["Creating", "Enabled", "Disabled", "PendingDeletion", "PendingImport", "PendingReplicaDeletion", "Unavailable", "Updating"]
    #   resp.data.pending_window_in_days #=> Integer
    def schedule_key_deletion(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::ScheduleKeyDeletionInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::ScheduleKeyDeletion.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :schedule_key_deletion,
        tracer: tracer
      )
      Telemetry::ScheduleKeyDeletion.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#schedule_key_deletion] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#schedule_key_deletion] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#schedule_key_deletion] #{output.data}")
        output
      end
    end

    # <p>Creates a <a href="https://en.wikipedia.org/wiki/Digital_signature">digital
    #         signature</a> for a message or message digest by using the private key in an asymmetric
    #       signing KMS key. To verify the signature, use the <a>Verify</a> operation, or use
    #       the public key in the same asymmetric KMS key outside of KMS. For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>Digital signatures are generated and verified by using asymmetric key pair, such as an RSA
    #       or ECC pair that is represented by an asymmetric KMS key. The key owner (or an authorized
    #       user) uses their private key to sign a message. Anyone with the public key can verify that the
    #       message was signed with that particular private key and that the message hasn't changed since
    #       it was signed. </p>
    #          <p>To use the <code>Sign</code> operation, provide the following information:</p>
    #          <ul>
    #             <li>
    #                <p>Use the <code>KeyId</code> parameter to identify an asymmetric KMS key with a
    #             <code>KeyUsage</code> value of <code>SIGN_VERIFY</code>. To get the
    #             <code>KeyUsage</code> value of a KMS key, use the <a>DescribeKey</a>
    #           operation. The caller must have <code>kms:Sign</code> permission on the KMS key.</p>
    #             </li>
    #             <li>
    #                <p>Use the <code>Message</code> parameter to specify the message or message digest to
    #           sign. You can submit messages of up to 4096 bytes. To sign a larger message, generate a
    #           hash digest of the message, and then provide the hash digest in the <code>Message</code>
    #           parameter. To indicate whether the message is a full message or a digest, use the
    #             <code>MessageType</code> parameter.</p>
    #             </li>
    #             <li>
    #                <p>Choose a signing algorithm that is compatible with the KMS key. </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>When signing a message, be sure to record the KMS key and the signing algorithm. This
    #         information is required to verify the signature.</p>
    #          </important>
    #          <note>
    #             <p>Best practices recommend that you limit the time during which any signature is
    #         effective. This deters an attack where the actor uses a signed message to establish validity
    #         repeatedly or long after the message is superseded. Signatures do not include a timestamp,
    #         but you can include a timestamp in the signed message to help you detect when its time to
    #         refresh the signature. </p>
    #          </note>
    #          <p>To verify the signature that this operation generates, use the <a>Verify</a>
    #       operation. Or use the <a>GetPublicKey</a> operation to download the public key and
    #       then use the public key to verify the signature outside of KMS. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Sign</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>Verify</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::SignInput] params
    #   Request parameters for this operation.
    #   See {Types::SignInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.sign(
    #     key_id: 'KeyId', # required
    #     message: 'Message', # required
    #     message_type: 'RAW', # accepts ["RAW", "DIGEST"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     signing_algorithm: 'RSASSA_PSS_SHA_256', # required - accepts ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::SignOutput
    #   resp.data.key_id #=> String
    #   resp.data.signature #=> String
    #   resp.data.signing_algorithm #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    # @example To digitally sign a message with an asymmetric KMS key.
    #   # This operation uses the private key in an asymmetric elliptic curve (ECC) KMS key to generate a digital signature for a given message.
    #   resp = client.sign({
    #     key_id: "alias/ECC_signing_key",
    #     message: '<message to be signed>',
    #     message_type: "RAW",
    #     signing_algorithm: "ECDSA_SHA_384"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     signature: '<binary data>',
    #     signing_algorithm: "ECDSA_SHA_384"
    #   }
    # @example To digitally sign a message digest with an asymmetric KMS key.
    #   # This operation uses the private key in an asymmetric RSA signing KMS key to generate a digital signature for a message digest. In this example, a large message was hashed and the resulting digest is provided in the Message parameter. To tell KMS not to hash the message again, the MessageType field is set to DIGEST
    #   resp = client.sign({
    #     key_id: "alias/RSA_signing_key",
    #     message: '<message digest to be signed>',
    #     message_type: "DIGEST",
    #     signing_algorithm: "RSASSA_PKCS1_V1_5_SHA_256"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     signature: '<binary data>',
    #     signing_algorithm: "RSASSA_PKCS1_V1_5_SHA_256"
    #   }
    def sign(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::SignInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::Sign.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :sign,
        tracer: tracer
      )
      Telemetry::Sign.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#sign] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#sign] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#sign] #{output.data}")
        output
      end
    end

    # <p>Adds or edits tags on a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>.</p>
    #          <note>
    #             <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>Each tag consists of a tag key and a tag value, both of which are case-sensitive strings.
    #       The tag value can be an empty (null) string. To add a tag, specify a new tag key and a tag
    #       value. To edit a tag, specify an existing tag key and a new tag value.</p>
    #          <p>You can use this operation to tag a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>, but you cannot
    #       tag an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services
    #         managed key</a>, an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk">Amazon Web Services owned key</a>, a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#keystore-concept">custom key
    #         store</a>, or an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#alias-concept">alias</a>.</p>
    #          <p>You can also add tags to a KMS key while creating it (<a>CreateKey</a>) or
    #       replicating it (<a>ReplicateKey</a>).</p>
    #          <p>For information about using tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging keys</a>. For general information about
    #       tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the <i>Amazon
    #         Web Services General Reference</i>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:TagResource</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>UntagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::TagResourceInput] params
    #   Request parameters for this operation.
    #   See {Types::TagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.tag_resource(
    #     key_id: 'KeyId', # required
    #     tags: [
    #       {
    #         tag_key: 'TagKey', # required
    #         tag_value: 'TagValue' # required
    #       }
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::TagResourceOutput
    # @example To tag a KMS key
    #   # The following example tags a KMS key.
    #   resp = client.tag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     tags: [
    #       {
    #         tag_key: "Purpose",
    #         tag_value: "Test"
    #       }
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def tag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::TagResourceInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::TagResource.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :tag_resource,
        tracer: tracer
      )
      Telemetry::TagResource.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.data}")
        output
      end
    end

    # <p>Deletes tags from a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>. To delete a tag,
    #       specify the tag key and the KMS key.</p>
    #          <note>
    #             <p>Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>When it succeeds, the <code>UntagResource</code> operation doesn't return any output.
    #       Also, if the specified tag key isn't found on the KMS key, it doesn't throw an exception or
    #       return a response. To confirm that the operation worked, use the <a>ListResourceTags</a> operation.</p>
    #          <p>For information about using tags in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html">Tagging keys</a>. For general information about
    #       tags, including the format and syntax, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the <i>Amazon
    #         Web Services General Reference</i>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UntagResource</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListResourceTags</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>TagResource</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::UntagResourceInput] params
    #   Request parameters for this operation.
    #   See {Types::UntagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.untag_resource(
    #     key_id: 'KeyId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UntagResourceOutput
    # @example To remove tags from a KMS key
    #   # The following example removes tags from a KMS key.
    #   resp = client.untag_resource({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     tag_keys: [
    #       "Purpose",
    #       "CostCenter"
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def untag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::UntagResourceInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::UntagResource.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :untag_resource,
        tracer: tracer
      )
      Telemetry::UntagResource.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.data}")
        output
      end
    end

    # <p>Associates an existing KMS alias with a different KMS key. Each alias is associated with
    #       only one KMS key at a time, although a KMS key can have multiple aliases. The alias and the
    #       KMS key must be in the same Amazon Web Services account and Region.</p>
    #          <note>
    #             <p>Adding, deleting, or updating an alias can allow or deny permission to the KMS key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/abac.html">ABAC for KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          </note>
    #          <p>The current and new KMS key must be the same type (both symmetric or both asymmetric or
    #       both HMAC), and they must have the same key usage. This restriction prevents errors in code
    #       that uses aliases. If you must assign an alias to a different type of KMS key, use <a>DeleteAlias</a> to delete the old alias and <a>CreateAlias</a> to create
    #       a new alias.</p>
    #          <p>You cannot use <code>UpdateAlias</code> to change an alias name. To change an alias name,
    #       use <a>DeleteAlias</a> to delete the old alias and <a>CreateAlias</a> to
    #       create a new alias.</p>
    #          <p>Because an alias is not a property of a KMS key, you can create, update, and delete the
    #       aliases of a KMS key without affecting the KMS key. Also, aliases do not appear in the
    #       response from the <a>DescribeKey</a> operation. To get the aliases of all KMS keys
    #       in the account, use the <a>ListAliases</a> operation. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the alias (IAM policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the current KMS key (key policy).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateAlias</a> on
    #           the new KMS key (key policy).</p>
    #             </li>
    #          </ul>
    #          <p>For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access">Controlling access to aliases</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteAlias</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAliases</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::UpdateAliasInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateAliasInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_alias(
    #     alias_name: 'AliasName', # required
    #     target_key_id: 'TargetKeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateAliasOutput
    # @example To update an alias
    #   # The following example updates the specified alias to refer to the specified KMS key.
    #   resp = client.update_alias({
    #     alias_name: "alias/ExampleAlias",
    #     target_key_id: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def update_alias(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::UpdateAliasInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::UpdateAlias.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_alias,
        tracer: tracer
      )
      Telemetry::UpdateAlias.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_alias] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_alias] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_alias] #{output.data}")
        output
      end
    end

    # <p>Changes the properties of a custom key store. You can use this operation to change the
    #       properties of an CloudHSM key store or an external key store.</p>
    #          <p>Use the required <code>CustomKeyStoreId</code> parameter to identify the custom key store.
    #       Use the remaining optional parameters to change its properties. This operation does not return
    #       any property values. To verify the updated property values, use the <a>DescribeCustomKeyStores</a> operation.</p>
    #          <p> This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> feature in KMS, which
    # combines the convenience and extensive integration of KMS with the isolation and control of a
    # key store that you own and manage.</p>
    #          <important>
    #             <p>When updating the properties of an external key store, verify that the updated settings
    #         connect your key store, via the external key store proxy, to the same external key manager
    #         as the previous settings, or to a backup or snapshot of the external key manager with the
    #         same cryptographic keys. If the updated connection settings fail, you can fix them and
    #         retry, although an extended delay might disrupt Amazon Web Services services. However, if KMS
    #         permanently loses its access to cryptographic keys, ciphertext encrypted under those keys is
    #         unrecoverable.</p>
    #          </important>
    #          <note>
    #             <p>For external key stores:</p>
    #             <p>Some external key managers provide a simpler method for updating an external key store.
    #         For details, see your external key manager documentation.</p>
    #             <p>When updating an external key store in the KMS console, you can upload a JSON-based
    #         proxy configuration file with the desired values. You cannot upload the proxy configuration
    #         file to the <code>UpdateCustomKeyStore</code> operation. However, you can use the file to
    #         help you determine the correct values for the <code>UpdateCustomKeyStore</code>
    #         parameters.</p>
    #          </note>
    #          <p>For an CloudHSM key store, you can use this operation to change the custom key store friendly
    #       name (<code>NewCustomKeyStoreName</code>), to tell KMS about a change to the
    #         <code>kmsuser</code> crypto user password (<code>KeyStorePassword</code>), or to associate
    #       the custom key store with a different, but related, CloudHSM cluster
    #         (<code>CloudHsmClusterId</code>). To update any property of an CloudHSM key store, the
    #         <code>ConnectionState</code> of the CloudHSM key store must be <code>DISCONNECTED</code>. </p>
    #          <p>For an external key store, you can use this operation to change the custom key store
    #       friendly name (<code>NewCustomKeyStoreName</code>), or to tell KMS about a change to the
    #       external key store proxy authentication credentials
    #         (<code>XksProxyAuthenticationCredential</code>), connection method
    #         (<code>XksProxyConnectivity</code>), external proxy endpoint
    #         (<code>XksProxyUriEndpoint</code>) and path (<code>XksProxyUriPath</code>). For external key
    #       stores with an <code>XksProxyConnectivity</code> of <code>VPC_ENDPOINT_SERVICE</code>, you can
    #       also update the Amazon VPC endpoint service name (<code>XksProxyVpcEndpointServiceName</code>). To
    #       update most properties of an external key store, the <code>ConnectionState</code> of the
    #       external key store must be <code>DISCONNECTED</code>. However, you can update the
    #         <code>CustomKeyStoreName</code>, <code>XksProxyAuthenticationCredential</code>, and
    #         <code>XksProxyUriPath</code> of an external key store when it is in the CONNECTED or
    #       DISCONNECTED state. </p>
    #          <p>If your update requires a <code>DISCONNECTED</code> state, before using
    #         <code>UpdateCustomKeyStore</code>, use the <a>DisconnectCustomKeyStore</a>
    #       operation to disconnect the custom key store. After the <code>UpdateCustomKeyStore</code>
    #       operation completes, use the <a>ConnectCustomKeyStore</a> to reconnect the custom
    #       key store. To find the <code>ConnectionState</code> of the custom key store, use the <a>DescribeCustomKeyStores</a> operation. </p>
    #          <p>
    #     </p>
    #          <p>Before updating the custom key store, verify that the new values allow KMS to connect
    #       the custom key store to its backing key store. For example, before you change the
    #         <code>XksProxyUriPath</code> value, verify that the external key store proxy is reachable at
    #       the new path.</p>
    #          <p>If the operation succeeds, it returns a JSON object with no
    # properties.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.</p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateCustomKeyStore</a> (IAM policy)</p>
    #          <p>
    #             <b>Related operations:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ConnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>CreateCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteCustomKeyStore</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeCustomKeyStores</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DisconnectCustomKeyStore</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::UpdateCustomKeyStoreInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateCustomKeyStoreInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_custom_key_store(
    #     custom_key_store_id: 'CustomKeyStoreId', # required
    #     new_custom_key_store_name: 'NewCustomKeyStoreName',
    #     key_store_password: 'KeyStorePassword',
    #     cloud_hsm_cluster_id: 'CloudHsmClusterId',
    #     xks_proxy_uri_endpoint: 'XksProxyUriEndpoint',
    #     xks_proxy_uri_path: 'XksProxyUriPath',
    #     xks_proxy_vpc_endpoint_service_name: 'XksProxyVpcEndpointServiceName',
    #     xks_proxy_authentication_credential: {
    #       access_key_id: 'AccessKeyId', # required
    #       raw_secret_access_key: 'RawSecretAccessKey' # required
    #     },
    #     xks_proxy_connectivity: 'PUBLIC_ENDPOINT' # accepts ["PUBLIC_ENDPOINT", "VPC_ENDPOINT_SERVICE"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateCustomKeyStoreOutput
    # @example To edit the friendly name of a custom key store
    #   # This example changes the friendly name of the AWS KMS custom key store to the name that you specify. This operation does not return any data. To verify that the operation worked, use the DescribeCustomKeyStores operation.
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     new_custom_key_store_name: "DevelopmentKeys"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    # @example To edit the password of an AWS CloudHSM key store
    #   # This example tells AWS KMS the password for the kmsuser crypto user in the AWS CloudHSM cluster that is associated with the AWS KMS custom key store. (It does not change the password in the CloudHSM cluster.) This operation does not return any data.
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     key_store_password: "ExamplePassword"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    # @example To associate the custom key store with a different, but related, AWS CloudHSM cluster.
    #   # This example changes the AWS CloudHSM cluster that is associated with an AWS CloudHSM key store to a related cluster, such as a different backup of the same cluster. This operation does not return any data. To verify that the operation worked, use the DescribeCustomKeyStores operation.
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     cloud_hsm_cluster_id: "cluster-234abcdefABC"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    # @example To edit the proxy URI path of an external key store.
    #   # This example updates the proxy URI path for an external key store
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     xks_proxy_uri_path: "/new-path/kms/xks/v1"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    # @example To update the proxy connectivity of an external key store to VPC_ENDPOINT_SERVICE
    #   # To change the external key store proxy connectivity option from public endpoint connectivity to VPC endpoint service connectivity, in addition to changing the <code>XksProxyConnectivity</code> value, you must change the <code>XksProxyUriEndpoint</code> value to reflect the private DNS name associated with the VPC endpoint service. You must also add an <code>XksProxyVpcEndpointServiceName</code> value.
    #   resp = client.update_custom_key_store({
    #     custom_key_store_id: "cks-1234567890abcdef0",
    #     xks_proxy_connectivity: "VPC_ENDPOINT_SERVICE",
    #     xks_proxy_uri_endpoint: "https://myproxy-private.xks.example.com",
    #     xks_proxy_vpc_endpoint_service_name: "com.amazonaws.vpce.us-east-1.vpce-svc-example"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def update_custom_key_store(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::UpdateCustomKeyStoreInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::UpdateCustomKeyStore.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_custom_key_store,
        tracer: tracer
      )
      Telemetry::UpdateCustomKeyStore.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_custom_key_store] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_custom_key_store] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_custom_key_store] #{output.data}")
        output
      end
    end

    # <p>Updates the description of a KMS key. To see the description of a KMS key, use <a>DescribeKey</a>. </p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:UpdateKeyDescription</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::UpdateKeyDescriptionInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateKeyDescriptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_key_description(
    #     key_id: 'KeyId', # required
    #     description: 'Description' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateKeyDescriptionOutput
    # @example To update the description of a KMS key
    #   # The following example updates the description of the specified KMS key.
    #   resp = client.update_key_description({
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     description: "Example description that indicates the intended use of this KMS key."
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def update_key_description(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::UpdateKeyDescriptionInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::UpdateKeyDescription.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_key_description,
        tracer: tracer
      )
      Telemetry::UpdateKeyDescription.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_key_description] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_key_description] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_key_description] #{output.data}")
        output
      end
    end

    # <p>Changes the primary key of a multi-Region key. </p>
    #          <p>This operation changes the replica key in the specified Region to a primary key and
    #       changes the former primary key to a replica key. For example, suppose you have a primary key
    #       in <code>us-east-1</code> and a replica key in <code>eu-west-2</code>. If you run
    #         <code>UpdatePrimaryRegion</code> with a <code>PrimaryRegion</code> value of
    #         <code>eu-west-2</code>, the primary key is now the key in <code>eu-west-2</code>, and the
    #       key in <code>us-east-1</code> becomes a replica key. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-manage.html#multi-region-update">Updating the primary Region</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation supports <i>multi-Region keys</i>, an KMS feature that lets you create multiple
    #       interoperable KMS keys in different Amazon Web Services Regions. Because these KMS keys have the same key ID, key
    #       material, and other metadata, you can use them interchangeably to encrypt data in one Amazon Web Services Region and decrypt
    #       it in a different Amazon Web Services Region without re-encrypting the data or making a cross-Region call. For more information about multi-Region keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Multi-Region keys in KMS</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The <i>primary key</i> of a multi-Region key is the source for properties
    #       that are always shared by primary and replica keys, including the key material, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id">key ID</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-spec">key spec</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-usage">key usage</a>, <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-origin">key material
    #       origin</a>, and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic
    #         key rotation</a>. It's the only key that can be replicated. You cannot <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html">delete the primary
    #         key</a> until all replica keys are deleted.</p>
    #          <p>The key ID and primary Region that you specify uniquely identify the replica key that will
    #       become the primary key. The primary Region must already have a replica key. This operation
    #       does not create a KMS key in the specified Region. To find the replica keys, use the <a>DescribeKey</a> operation on the primary key or any replica key. To create a replica
    #       key, use the <a>ReplicateKey</a> operation.</p>
    #          <p>You can run this operation while using the affected multi-Region keys in cryptographic
    #       operations. This operation should not delay, interrupt, or cause failures in cryptographic
    #       operations. </p>
    #          <p>Even after this operation completes, the process of updating the primary Region might
    #       still be in progress for a few more seconds. Operations such as <code>DescribeKey</code> might
    #       display both the old and new primary keys as replicas. The old and new primary keys have a
    #       transient key state of <code>Updating</code>. The original key state is restored when the
    #       update is complete. While the key state is <code>Updating</code>, you can use the keys in
    #       cryptographic operations, but you cannot replicate the new primary key or perform certain
    #       management operations, such as enabling or disabling these keys. For details about the
    #         <code>Updating</code> key state, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>This operation does not return any output. To verify that primary key is changed, use the
    #         <a>DescribeKey</a> operation.</p>
    #          <p>
    #             <b>Cross-account use</b>: No. You cannot use this operation in a
    #       different Amazon Web Services account. </p>
    #          <p>
    #             <b>Required permissions</b>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>kms:UpdatePrimaryRegion</code> on the current primary key (in the primary key's
    #           Region). Include this permission primary key's key policy.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>kms:UpdatePrimaryRegion</code> on the current replica key (in the replica key's
    #           Region). Include this permission in the replica key's key policy.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Related operations</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateKey</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ReplicateKey</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::UpdatePrimaryRegionInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdatePrimaryRegionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_primary_region(
    #     key_id: 'KeyId', # required
    #     primary_region: 'PrimaryRegion' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdatePrimaryRegionOutput
    # @example To update the primary Region of a multi-Region KMS key
    #   # The following UpdatePrimaryRegion example changes the multi-Region replica key in the eu-central-1 Region to the primary key. The current primary key in the us-west-1 Region becomes a replica key.
    #   #
    #   # The KeyId parameter identifies the current primary key in the us-west-1 Region. The PrimaryRegion parameter indicates the Region of the replica key that will become the new primary key.
    #   #
    #   # This operation does not return any output. To verify that primary key is changed, use the DescribeKey operation.
    #   resp = client.update_primary_region({
    #     key_id: "arn:aws:kms:us-west-1:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab",
    #     primary_region: "eu-central-1"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def update_primary_region(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::UpdatePrimaryRegionInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::UpdatePrimaryRegion.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_primary_region,
        tracer: tracer
      )
      Telemetry::UpdatePrimaryRegion.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_primary_region] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_primary_region] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_primary_region] #{output.data}")
        output
      end
    end

    # <p>Verifies a digital signature that was generated by the <a>Sign</a> operation. </p>
    #          <p></p>
    #          <p>Verification confirms that an authorized user signed the message with the specified KMS
    #       key and signing algorithm, and the message hasn't changed since it was signed. If the
    #       signature is verified, the value of the <code>SignatureValid</code> field in the response is
    #         <code>True</code>. If the signature verification fails, the <code>Verify</code> operation
    #       fails with an <code>KMSInvalidSignatureException</code> exception.</p>
    #          <p>A digital signature is generated by using the private key in an asymmetric KMS key. The
    #       signature is verified by using the public key in the same asymmetric KMS key.
    #       For information about asymmetric KMS keys, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>To use the <code>Verify</code> operation, specify the same asymmetric KMS key, message,
    #       and signing algorithm that were used to produce the signature. The message type does not need
    #       to be the same as the one used for signing, but it must indicate whether the value of the
    #         <code>Message</code> parameter should be hashed as part of the verification process.</p>
    #          <p>You can also verify the digital signature by using the public key of the KMS key outside
    #       of KMS. Use the <a>GetPublicKey</a> operation to download the public key in the
    #       asymmetric KMS key and then use the public key to verify the signature outside of KMS. The
    #       advantage of using the <code>Verify</code> operation is that it is performed within KMS. As
    #       a result, it's easy to call, the operation is performed within the FIPS boundary, it is logged
    #       in CloudTrail, and you can use key policy and IAM policy to determine who is authorized to use
    #       the KMS key to verify signatures.</p>
    #          <p>To verify a signature outside of KMS with an SM2 public key (China Regions only), you
    #       must specify the distinguishing ID. By default, KMS uses <code>1234567812345678</code> as
    #       the distinguishing ID. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-sm-offline-verification">Offline
    #         verification with SM2 key pairs</a>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:Verify</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>Sign</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::VerifyInput] params
    #   Request parameters for this operation.
    #   See {Types::VerifyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.verify(
    #     key_id: 'KeyId', # required
    #     message: 'Message', # required
    #     message_type: 'RAW', # accepts ["RAW", "DIGEST"]
    #     signature: 'Signature', # required
    #     signing_algorithm: 'RSASSA_PSS_SHA_256', # required - accepts ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::VerifyOutput
    #   resp.data.key_id #=> String
    #   resp.data.signature_valid #=> Boolean
    #   resp.data.signing_algorithm #=> String, one of ["RSASSA_PSS_SHA_256", "RSASSA_PSS_SHA_384", "RSASSA_PSS_SHA_512", "RSASSA_PKCS1_V1_5_SHA_256", "RSASSA_PKCS1_V1_5_SHA_384", "RSASSA_PKCS1_V1_5_SHA_512", "ECDSA_SHA_256", "ECDSA_SHA_384", "ECDSA_SHA_512", "SM2DSA"]
    # @example To use an asymmetric KMS key to verify a digital signature
    #   # This operation uses the public key in an elliptic curve (ECC) asymmetric key to verify a digital signature within AWS KMS.
    #   resp = client.verify({
    #     key_id: "alias/ECC_signing_key",
    #     message: '<message to be verified>',
    #     message_type: "RAW",
    #     signature: '<binary data>',
    #     signing_algorithm: "ECDSA_SHA_384"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     signature_valid: true,
    #     signing_algorithm: "ECDSA_SHA_384"
    #   }
    # @example To use an asymmetric KMS key to verify a digital signature on a message digest
    #   # This operation uses the public key in an RSA asymmetric signing key pair to verify the digital signature of a message digest. Hashing a message into a digest before sending it to KMS lets you verify messages that exceed the 4096-byte message size limit. To indicate that the value of Message is a digest, use the MessageType parameter
    #   resp = client.verify({
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     message: '<message digest to be verified>',
    #     message_type: "DIGEST",
    #     signature: '<binary data>',
    #     signing_algorithm: "RSASSA_PSS_SHA_512"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-east-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321",
    #     signature_valid: true,
    #     signing_algorithm: "RSASSA_PSS_SHA_512"
    #   }
    def verify(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::VerifyInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::Verify.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :verify,
        tracer: tracer
      )
      Telemetry::Verify.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#verify] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify] #{output.data}")
        output
      end
    end

    # <p>Verifies the hash-based message authentication code (HMAC) for a specified message, HMAC
    #       KMS key, and MAC algorithm. To verify the HMAC, <code>VerifyMac</code> computes an HMAC using
    #       the message, HMAC KMS key, and MAC algorithm that you specify, and compares the computed HMAC
    #       to the HMAC that you specify. If the HMACs are identical, the verification succeeds;
    #       otherwise, it fails. Verification indicates that the message hasn't changed since the HMAC was
    #       calculated, and the specified key was used to generate and verify the HMAC.</p>
    #          <p>HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry standards
    #       defined in <a href="https://datatracker.ietf.org/doc/html/rfc2104">RFC 2104</a>.</p>
    #          <p>This operation is part of KMS support for HMAC KMS keys. For details, see
    #         <a href="https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html">HMAC keys in KMS</a> in the
    #       <i>Key Management Service Developer Guide</i>.</p>
    #          <p>The KMS key that you use for this operation must be in a compatible key state. For
    # details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">Key states of KMS keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #          <p>
    #             <b>Cross-account use</b>: Yes. To perform this operation with a KMS key in a different Amazon Web Services account, specify
    #   the key ARN or alias ARN in the value of the <code>KeyId</code> parameter. </p>
    #          <p>
    #             <b>Required permissions</b>: <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">kms:VerifyMac</a> (key policy)</p>
    #          <p>
    #             <b>Related operations</b>: <a>GenerateMac</a>
    #          </p>
    #          <p>
    #             <b>Eventual consistency</b>: The KMS API follows an eventual consistency model.
    #   For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html">KMS eventual consistency</a>.</p>
    # @param [Hash | Types::VerifyMacInput] params
    #   Request parameters for this operation.
    #   See {Types::VerifyMacInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.verify_mac(
    #     message: 'Message', # required
    #     key_id: 'KeyId', # required
    #     mac_algorithm: 'HMAC_SHA_224', # required - accepts ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    #     mac: 'Mac', # required
    #     grant_tokens: [
    #       'member'
    #     ],
    #     dry_run: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::VerifyMacOutput
    #   resp.data.key_id #=> String
    #   resp.data.mac_valid #=> Boolean
    #   resp.data.mac_algorithm #=> String, one of ["HMAC_SHA_224", "HMAC_SHA_256", "HMAC_SHA_384", "HMAC_SHA_512"]
    # @example To verify an HMAC
    #   # This example verifies an HMAC for a particular message, HMAC KMS keys, and MAC algorithm. A value of 'true' in the MacValid value in the response indicates that the HMAC is valid.
    #   resp = client.verify_mac({
    #     message: 'Hello World',
    #     key_id: "1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_algorithm: "HMAC_SHA_384",
    #     mac: '<HMAC_TAG>'
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     key_id: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab",
    #     mac_valid: true,
    #     mac_algorithm: "HMAC_SHA_384"
    #   }
    def verify_mac(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.kms.client')
      input = Params::VerifyMacInput.build(params, context: 'params')
      stack = AWS::SDK::KMS::Middleware::VerifyMac.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :verify_mac,
        tracer: tracer
      )
      Telemetry::VerifyMac.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify_mac] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#verify_mac] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify_mac] #{output.data}")
        output
      end
    end
  end
end
