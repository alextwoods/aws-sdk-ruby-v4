# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SecretsManager
  # An API client for secretsmanager
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Web Services Secrets Manager</fullname>
  #          <p>Amazon Web Services Secrets Manager provides a service to enable you to store, manage, and retrieve, secrets.</p>
  #
  #          <p>This guide provides descriptions of the Secrets Manager API. For more information about using this
  #       service, see the <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html">Amazon Web Services Secrets Manager User Guide</a>.</p>
  #
  #          <p>
  #             <b>API Version</b>
  #          </p>
  #
  #          <p>This version of the Secrets Manager API Reference documents the Secrets Manager API version 2017-10-17.</p>
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #          <p>
  #             <b>Support and Feedback for Amazon Web Services Secrets Manager</b>
  #          </p>
  #          <p>We welcome your feedback. Send your comments to <a href="mailto:awssecretsmanager-feedback@amazon.com">awssecretsmanager-feedback@amazon.com</a>, or post your feedback and questions in the <a href="http://forums.aws.amazon.com/forum.jspa?forumID=296">Amazon Web Services Secrets Manager Discussion Forum</a>. For more
  #       information about the Amazon Web Services Discussion Forums, see <a href="http://forums.aws.amazon.com/help.jspa">Forums
  #         Help</a>.</p>
  #
  #          <p>
  #             <b>Logging API Requests</b>
  #          </p>
  #          <p>Amazon Web Services Secrets Manager supports Amazon Web Services CloudTrail, a service that records Amazon Web Services API calls for your Amazon Web Services
  #       account and delivers log files to an Amazon S3 bucket. By using information that's collected
  #       by Amazon Web Services CloudTrail, you can determine the requests successfully made to Secrets Manager, who made the
  #       request, when it was made, and so on. For more about Amazon Web Services Secrets Manager and support for Amazon Web Services
  #       CloudTrail, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail">Logging
  #         Amazon Web Services Secrets Manager Events with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Secrets Manager User Guide</i>.
  #       To learn more about CloudTrail, including enabling it and find your log files, see the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">Amazon Web Services CloudTrail User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::SecretsManager::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Turns off automatic rotation, and if a rotation is currently in
    #       progress, cancels the rotation.</p>
    #          <p>If you cancel a rotation in progress, it can leave the <code>VersionStage</code>
    #       labels in an unexpected state. You might
    #       need to remove the staging label <code>AWSPENDING</code> from the partially created version.
    #       You also need to determine whether to roll back to the previous version of the secret
    #       by moving the staging label <code>AWSCURRENT</code> to the version that has <code>AWSPENDING</code>.
    #       To determine
    #       which version has a specific staging label, call <a>ListSecretVersionIds</a>. Then use
    #      <a>UpdateSecretVersionStage</a> to change staging labels.
    #      For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html">How rotation works</a>.</p>
    #          <p>To turn on automatic rotation again, call <a>RotateSecret</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:CancelRotateSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CancelRotateSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @return [Types::CancelRotateSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_rotate_secret(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelRotateSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #
    def cancel_rotate_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelRotateSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelRotateSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelRotateSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::CancelRotateSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelRotateSecret,
        stubs: @stubs,
        params_class: Params::CancelRotateSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_rotate_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new secret. A <i>secret</i> can be a password, a set of
    #       credentials such as a user name and password, an OAuth token, or other secret information
    #       that you store in an encrypted form in Secrets Manager. The secret also
    #       includes the connection information to access a database or other service, which Secrets Manager
    #       doesn't encrypt. A secret in Secrets Manager consists of both the protected secret data and the
    #       important information needed to manage the secret.</p>
    #          <p>For information about creating a secret in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html">Create a secret</a>.</p>
    #          <p>To create a secret, you can provide the secret value to be encrypted in either the
    #       <code>SecretString</code> parameter or the <code>SecretBinary</code> parameter, but not both.
    #       If you include <code>SecretString</code> or <code>SecretBinary</code>
    #       then Secrets Manager creates an initial secret version and automatically attaches the staging
    #       label <code>AWSCURRENT</code> to it.</p>
    #          <p>For database credentials you want to rotate, for Secrets Manager to be able to rotate the secret,
    #       you must make sure the JSON you store in the <code>SecretString</code> matches the <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html">JSON structure of
    #         a database secret</a>.</p>
    #          <p>If you don't specify an KMS encryption key, Secrets Manager uses the Amazon Web Services managed key
    #       <code>aws/secretsmanager</code>. If this key
    #       doesn't already exist in your account, then Secrets Manager creates it for you automatically. All
    #       users and roles in the Amazon Web Services account automatically have access to use <code>aws/secretsmanager</code>.
    #       Creating <code>aws/secretsmanager</code> can result in a one-time significant delay in returning the
    #       result.</p>
    #          <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then
    #       you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create
    #       and use a customer managed KMS key. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:CreateSecret</code>. If you
    #       include tags in the secret, you also need <code>secretsmanager:TagResource</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #          <p>To encrypt the secret with a KMS key other than <code>aws/secretsmanager</code>, you need <code>kms:GenerateDataKey</code> and <code>kms:Decrypt</code> permission to the key. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSecretInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new secret.</p>
    #            <p>The secret name can contain ASCII letters, numbers, and the following characters:
    #         /_+=.@-</p>
    #
    #            <p>Do not end your secret name with a hyphen followed by six characters. If you do so, you
    #           risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager
    #           automatically adds a hyphen and six random characters after the secret name at the end of the ARN.</p>
    #
    # @option params [String] :client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then
    #         Secrets Manager creates an initial version for the secret, and this parameter specifies the unique
    #         identifier for the new version. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
    #           leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it
    #           as the value for this parameter in the request. If you don't use the SDK and instead
    #           generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a
    #           <code>ClientRequestToken</code> yourself for the new version and include the value in the
    #           request.</p>
    #            </note>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental
    #         creation of duplicate versions if there are failures and retries during a rotation. We
    #         recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to
    #         ensure uniqueness of your versions within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version <code>SecretString</code>
    #             and <code>SecretBinary</code> values are the same as those in the request, then the
    #             request is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you cannot modify an existing version.
    #             Instead, use <a>PutSecretValue</a> to create a new version.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    #
    # @option params [String] :description
    #   <p>The description of the secret.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
    #         encrypt the secret value in the secret.</p>
    #            <p>To use a KMS key in a different account, use the key ARN or the alias ARN.</p>
    #            <p>If you don't specify this value, then Secrets Manager uses the key <code>aws/secretsmanager</code>.
    #         If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it
    #         encrypts the secret value.</p>
    #            <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then
    #         you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create
    #         and use a customer managed KMS key. </p>
    #
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. We recommend that you store your binary data in a file and then pass the
    #         contents of the file as a parameter.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>This parameter is not available in the Secrets Manager console.</p>
    #
    # @option params [String] :secret_string
    #   <p>The text data to encrypt and store in this new version of
    #         the secret. We recommend you use a JSON structure of key/value pairs for your secret value.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected
    #         secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the
    #         information as a JSON structure of key/value pairs that a Lambda rotation function can parse.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to attach to the secret. Each tag
    #         is a key and value pair of strings in a JSON text string, for example:</p>
    #            <p>
    #               <code>[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]</code>
    #            </p>
    #            <p>Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag
    #         from one with key "abc".</p>
    #            <p>If you check tags in permissions policies as part of your
    #         security strategy, then adding or removing a tag can change permissions. If the
    #         completion of this operation would result in you losing your permissions for
    #         this secret, then Secrets Manager blocks the operation and returns an <code>Access Denied</code>
    #         error. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac">Control
    #           access to secrets using tags</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2">Limit access to identities with tags that match secrets' tags</a>.</p>
    #            <p>For information about how to format a
    #         JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for
    #           Parameters</a>. If your command-line tool or SDK requires quotation marks around the parameter, you should
    #         use single quotes to avoid confusion with the double quotes required in the JSON text.</p>
    #               <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                  <p>Maximum number of tags per secret: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 127 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 255 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use the <code>aws:</code> prefix in your tag names or values because Amazon Web Services reserves it
    #               for Amazon Web Services use. You can't edit or delete tag names or values with this
    #                 prefix. Tags with this prefix do not count against your tags per secret limit.</p>
    #               </li>
    #               <li>
    #                  <p>If you use your tagging schema across multiple services and resources,
    #                 other services might have restrictions on allowed characters. Generally
    #                 allowed characters: letters, spaces, and numbers representable in UTF-8, plus the
    #                 following special characters: + - = . _ : / @.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<ReplicaRegionType>] :add_replica_regions
    #   <p>A list of Regions and KMS keys to replicate secrets.</p>
    #
    # @option params [Boolean] :force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the
    #         destination Region.</p>
    #
    # @return [Types::CreateSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_secret(
    #     name: 'Name', # required
    #     client_request_token: 'ClientRequestToken',
    #     description: 'Description',
    #     kms_key_id: 'KmsKeyId',
    #     secret_binary: 'SecretBinary',
    #     secret_string: 'SecretString',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     add_replica_regions: [
    #       {
    #         region: 'Region',
    #         kms_key_id: 'KmsKeyId'
    #       }
    #     ],
    #     force_overwrite_replica_secret: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #   resp.data.replication_status #=> Array<ReplicationStatusType>
    #   resp.data.replication_status[0] #=> Types::ReplicationStatusType
    #   resp.data.replication_status[0].region #=> String
    #   resp.data.replication_status[0].kms_key_id #=> String
    #   resp.data.replication_status[0].status #=> String, one of ["InSync", "Failed", "InProgress"]
    #   resp.data.replication_status[0].status_message #=> String
    #   resp.data.replication_status[0].last_accessed_date #=> Time
    #
    def create_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionFailure, Errors::ResourceExistsException, Errors::DecryptionFailure, Errors::InvalidParameterException, Errors::PreconditionNotMetException, Errors::MalformedPolicyDocumentException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::CreateSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSecret,
        stubs: @stubs,
        params_class: Params::CreateSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the resource-based permission policy attached to the secret. To attach a policy to
    #       a secret, use <a>PutResourcePolicy</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DeleteResourcePolicy</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to delete the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a secret and all of its versions. You can specify a recovery
    #       window during which you can restore the secret. The minimum recovery window is 7 days.
    #       The default recovery window is 30 days. Secrets Manager attaches a <code>DeletionDate</code> stamp to
    #       the secret that specifies the end of the recovery window. At the end of the recovery window,
    #       Secrets Manager deletes the secret permanently.</p>
    #          <p>You can't delete a primary secret that is replicated to other Regions. You must first delete the
    #     replicas using <a>RemoveRegionsFromReplication</a>, and then delete the primary secret.
    #     When you delete a replica, it is deleted immediately.</p>
    #          <p>You can't directly delete a version of a secret. Instead, you remove all staging labels
    #     from the version using <a>UpdateSecretVersionStage</a>. This marks the version as deprecated,
    #     and then Secrets Manager can automatically delete the version in the background.</p>
    #          <p>To determine whether an application still uses a secret, you can create an Amazon CloudWatch alarm
    #     to alert you to any attempts to access a secret during the recovery window. For more information,
    #     see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html">
    #     Monitor secrets scheduled for deletion</a>.</p>
    #          <p>Secrets Manager performs the permanent secret deletion at the end of the waiting period as a
    #         background task with low priority. There is no guarantee of a specific time after the
    #         recovery window for the permanent delete to occur.</p>
    #          <p>At any time before recovery window ends, you can use <a>RestoreSecret</a> to
    #       remove the <code>DeletionDate</code> and cancel the deletion of the secret.</p>
    #          <p>When a secret is scheduled for deletion, you cannot retrieve the secret value.
    #       You must first cancel the deletion with <a>RestoreSecret</a> and then you can retrieve the secret.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DeleteSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to delete.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [Integer] :recovery_window_in_days
    #   <p>The number of days from 7 to 30 that Secrets Manager waits before permanently deleting the
    #         secret. You can't use both this parameter and <code>ForceDeleteWithoutRecovery</code>
    #         in the same call. If you don't use either, then Secrets Manager defaults to a 30 day recovery window.</p>
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   <p>Specifies whether to delete the secret without any recovery window. You
    #         can't use both this parameter and <code>RecoveryWindowInDays</code> in the same
    #         call. If you don't use either, then Secrets Manager defaults to a 30 day recovery window.</p>
    #            <p>Secrets Manager performs the actual deletion with an asynchronous background process, so there might
    #         be a short delay before the secret is permanently deleted. If you delete a secret and then
    #         immediately create a secret with the same name, use appropriate back off and retry logic.</p>
    #            <important>
    #               <p>Use this parameter with caution. This parameter causes the operation to skip the normal
    #           recovery window before the permanent deletion that Secrets Manager would normally impose with the
    #             <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the
    #             <code>ForceDeleteWithouRecovery</code> parameter, then you have no opportunity to recover
    #           the secret. You lose the secret permanently.</p>
    #            </important>
    #
    # @return [Types::DeleteSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_secret(
    #     secret_id: 'SecretId', # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.deletion_date #=> Time
    #
    def delete_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DeleteSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSecret,
        stubs: @stubs,
        params_class: Params::DeleteSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of a secret. It does not include the encrypted secret value. Secrets Manager
    #       only returns fields that have a value in the response. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DescribeSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret. </p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @return [Types::DescribeSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_secret(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.kms_key_id #=> String
    #   resp.data.rotation_enabled #=> Boolean
    #   resp.data.rotation_lambda_arn #=> String
    #   resp.data.rotation_rules #=> Types::RotationRulesType
    #   resp.data.rotation_rules.automatically_after_days #=> Integer
    #   resp.data.rotation_rules.duration #=> String
    #   resp.data.rotation_rules.schedule_expression #=> String
    #   resp.data.last_rotated_date #=> Time
    #   resp.data.last_changed_date #=> Time
    #   resp.data.last_accessed_date #=> Time
    #   resp.data.deleted_date #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.version_ids_to_stages #=> Hash<String, Array<String>>
    #   resp.data.version_ids_to_stages['key'] #=> Array<String>
    #   resp.data.version_ids_to_stages['key'][0] #=> String
    #   resp.data.owning_service #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.primary_region #=> String
    #   resp.data.replication_status #=> Array<ReplicationStatusType>
    #   resp.data.replication_status[0] #=> Types::ReplicationStatusType
    #   resp.data.replication_status[0].region #=> String
    #   resp.data.replication_status[0].kms_key_id #=> String
    #   resp.data.replication_status[0].status #=> String, one of ["InSync", "Failed", "InProgress"]
    #   resp.data.replication_status[0].status_message #=> String
    #   resp.data.replication_status[0].last_accessed_date #=> Time
    #
    def describe_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::DescribeSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSecret,
        stubs: @stubs,
        params_class: Params::DescribeSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a random password. We recommend that you specify the
    #       maximum length and include every character type that the system you are generating a password
    #       for can support.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetRandomPassword</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetRandomPasswordInput}.
    #
    # @option params [Integer] :password_length
    #   <p>The length of the password. If you don't include this parameter, the
    #         default length is 32 characters.</p>
    #
    # @option params [String] :exclude_characters
    #   <p>A string of the characters that you don't want in the password.</p>
    #
    # @option params [Boolean] :exclude_numbers
    #   <p>Specifies whether to exclude numbers from the password. If you don't
    #         include this switch, the password can contain numbers.</p>
    #
    # @option params [Boolean] :exclude_punctuation
    #   <p>Specifies whether to exclude the following punctuation characters from the password:
    #         <code>! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~</code>.
    #         If you don't include this switch, the password can contain punctuation.</p>
    #
    # @option params [Boolean] :exclude_uppercase
    #   <p>Specifies whether to exclude uppercase letters from the password. If you
    #         don't include this switch, the password can contain uppercase letters.</p>
    #
    # @option params [Boolean] :exclude_lowercase
    #   <p>Specifies whether to exclude lowercase letters from the password. If
    #         you don't include this switch, the password can contain lowercase letters.</p>
    #
    # @option params [Boolean] :include_space
    #   <p>Specifies whether to include the space character. If you
    #         include this switch, the password can contain space characters.</p>
    #
    # @option params [Boolean] :require_each_included_type
    #   <p>Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation.
    #         If you don't include this switch, the password contains at least one of every character type.</p>
    #
    # @return [Types::GetRandomPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_random_password(
    #     password_length: 1,
    #     exclude_characters: 'ExcludeCharacters',
    #     exclude_numbers: false,
    #     exclude_punctuation: false,
    #     exclude_uppercase: false,
    #     exclude_lowercase: false,
    #     include_space: false,
    #     require_each_included_type: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRandomPasswordOutput
    #   resp.data.random_password #=> String
    #
    def get_random_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRandomPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRandomPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRandomPassword
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::InternalServiceError]),
        data_parser: Parsers::GetRandomPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRandomPassword,
        stubs: @stubs,
        params_class: Params::GetRandomPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_random_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the JSON text of the resource-based policy document attached to the
    #       secret. For more information about permissions policies attached to a secret, see
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html">Permissions
    #         policies attached to a secret</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetResourcePolicy</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePolicyInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to retrieve the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @return [Types::GetResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.resource_policy #=> String
    #
    def get_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::GetResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicy,
        stubs: @stubs,
        params_class: Params::GetResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the contents of the encrypted fields <code>SecretString</code> or
    #         <code>SecretBinary</code> from the specified version of a secret, whichever contains
    #       content.</p>
    #          <p>We recommend that you cache your secret values by using client-side caching.
    #       Caching secrets improves speed and reduces your costs. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html">Cache secrets for
    #         your applications</a>.</p>
    #
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetSecretValue</code>.
    #       If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key
    #       <code>aws/secretsmanager</code>, then you also need <code>kms:Decrypt</code> permissions for that key.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetSecretValueInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to retrieve.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [String] :version_id
    #   <p>The unique identifier of the version of the secret to retrieve. If
    #         you include both this parameter and <code>VersionStage</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #           <code>VersionId</code>, then Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    #            <p>This value is typically a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value with
    #         32 hexadecimal digits.</p>
    #
    # @option params [String] :version_stage
    #   <p>The staging label of the version of the secret to retrieve. </p>
    #            <p>Secrets Manager uses staging labels to keep track of different versions during the rotation process.
    #         If you include both this parameter and <code>VersionId</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #         <code>VersionId</code>, Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    #
    # @return [Types::GetSecretValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_secret_value(
    #     secret_id: 'SecretId', # required
    #     version_id: 'VersionId',
    #     version_stage: 'VersionStage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSecretValueOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #   resp.data.secret_binary #=> String
    #   resp.data.secret_string #=> String
    #   resp.data.version_stages #=> Array<String>
    #   resp.data.version_stages[0] #=> String
    #   resp.data.created_date #=> Time
    #
    def get_secret_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSecretValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSecretValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSecretValue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DecryptionFailure, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::GetSecretValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSecretValue,
        stubs: @stubs,
        params_class: Params::GetSecretValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_secret_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the versions of a secret. Secrets Manager uses staging labels to indicate the different versions
    #     of a secret. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">
    #     Secrets Manager concepts: Versions</a>.</p>
    #          <p>To list the secrets in the account, use <a>ListSecrets</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ListSecretVersionIds</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSecretVersionIdsInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret whose versions you want to list.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>.
    #         To get the next results, call <code>ListSecretVersionIds</code> again with the value from <code>NextToken</code>. </p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous call
    #         did not show all results. To get the next results, call <code>ListSecretVersionIds</code> again with
    #         this value.</p>
    #
    # @option params [Boolean] :include_deprecated
    #   <p>Specifies whether to include versions of secrets that don't have any
    #         staging labels attached to them. Versions without staging labels are considered deprecated and are subject to
    #         deletion by Secrets Manager.</p>
    #
    # @return [Types::ListSecretVersionIdsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secret_version_ids(
    #     secret_id: 'SecretId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     include_deprecated: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecretVersionIdsOutput
    #   resp.data.versions #=> Array<SecretVersionsListEntry>
    #   resp.data.versions[0] #=> Types::SecretVersionsListEntry
    #   resp.data.versions[0].version_id #=> String
    #   resp.data.versions[0].version_stages #=> Array<String>
    #   resp.data.versions[0].version_stages[0] #=> String
    #   resp.data.versions[0].last_accessed_date #=> Time
    #   resp.data.versions[0].created_date #=> Time
    #   resp.data.versions[0].kms_key_ids #=> Array<String>
    #   resp.data.versions[0].kms_key_ids[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def list_secret_version_ids(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecretVersionIdsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecretVersionIdsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecretVersionIds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::ListSecretVersionIds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecretVersionIds,
        stubs: @stubs,
        params_class: Params::ListSecretVersionIdsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_secret_version_ids
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets
    #       that are marked for deletion. To see secrets marked for deletion, use the Secrets Manager console.</p>
    #          <p>To list the versions of a secret, use <a>ListSecretVersionIds</a>.</p>
    #          <p>To get the secret value from <code>SecretString</code> or <code>SecretBinary</code>,
    #       call <a>GetSecretValue</a>.</p>
    #          <p>For information about finding secrets in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html">Find secrets in Secrets Manager</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ListSecrets</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSecretsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>.
    #         To get the next results, call <code>ListSecrets</code> again with the value from
    #         <code>NextToken</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a
    #         previous call did not show all results. To get the next results, call <code>ListSecrets</code> again
    #         with this value.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters to apply to the list of secrets.</p>
    #
    # @option params [String] :sort_order
    #   <p>Lists secrets in the requested order. </p>
    #
    # @return [Types::ListSecretsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secrets(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         key: 'description', # accepts ["description", "name", "tag-key", "tag-value", "primary-region", "all"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     sort_order: 'asc' # accepts ["asc", "desc"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecretsOutput
    #   resp.data.secret_list #=> Array<SecretListEntry>
    #   resp.data.secret_list[0] #=> Types::SecretListEntry
    #   resp.data.secret_list[0].arn #=> String
    #   resp.data.secret_list[0].name #=> String
    #   resp.data.secret_list[0].description #=> String
    #   resp.data.secret_list[0].kms_key_id #=> String
    #   resp.data.secret_list[0].rotation_enabled #=> Boolean
    #   resp.data.secret_list[0].rotation_lambda_arn #=> String
    #   resp.data.secret_list[0].rotation_rules #=> Types::RotationRulesType
    #   resp.data.secret_list[0].rotation_rules.automatically_after_days #=> Integer
    #   resp.data.secret_list[0].rotation_rules.duration #=> String
    #   resp.data.secret_list[0].rotation_rules.schedule_expression #=> String
    #   resp.data.secret_list[0].last_rotated_date #=> Time
    #   resp.data.secret_list[0].last_changed_date #=> Time
    #   resp.data.secret_list[0].last_accessed_date #=> Time
    #   resp.data.secret_list[0].deleted_date #=> Time
    #   resp.data.secret_list[0].tags #=> Array<Tag>
    #   resp.data.secret_list[0].tags[0] #=> Types::Tag
    #   resp.data.secret_list[0].tags[0].key #=> String
    #   resp.data.secret_list[0].tags[0].value #=> String
    #   resp.data.secret_list[0].secret_versions_to_stages #=> Hash<String, Array<String>>
    #   resp.data.secret_list[0].secret_versions_to_stages['key'] #=> Array<String>
    #   resp.data.secret_list[0].secret_versions_to_stages['key'][0] #=> String
    #   resp.data.secret_list[0].owning_service #=> String
    #   resp.data.secret_list[0].created_date #=> Time
    #   resp.data.secret_list[0].primary_region #=> String
    #   resp.data.next_token #=> String
    #
    def list_secrets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecretsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecretsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecrets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::InternalServiceError]),
        data_parser: Parsers::ListSecrets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecrets,
        stubs: @stubs,
        params_class: Params::ListSecretsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_secrets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a resource-based permission policy to a secret. A resource-based policy is
    #       optional. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication and access control for Secrets Manager</a>
    #          </p>
    #          <p>For information about attaching a policy in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html">Attach a
    #       permissions policy to a secret</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:PutResourcePolicy</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to attach the resource-based policy.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [String] :resource_policy
    #   <p>A JSON-formatted string for an Amazon Web Services
    #         resource-based policy. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions
    #           policy examples</a>.</p>
    #
    # @option params [Boolean] :block_public_policy
    #   <p>Specifies whether to block resource-based policies that allow broad access to the secret, for example those that use a wildcard for the principal.</p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     secret_id: 'SecretId', # required
    #     resource_policy: 'ResourcePolicy', # required
    #     block_public_policy: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::MalformedPolicyDocumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError, Errors::PublicPolicyException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version with a new encrypted secret value and attaches it to the secret. The
    #       version can contain a new <code>SecretString</code> value or a new <code>SecretBinary</code> value. </p>
    #          <p>We recommend you avoid calling <code>PutSecretValue</code> at a sustained rate of more than
    #       once every 10 minutes. When you update the secret value, Secrets Manager creates a new version
    #       of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not
    #       remove versions created less than 24 hours ago. If you call <code>PutSecretValue</code> more
    #       than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach
    #       the quota for secret versions.</p>
    #          <p>You can specify the staging labels to attach to the new version in <code>VersionStages</code>.
    #       If you don't include <code>VersionStages</code>, then Secrets Manager automatically
    #       moves the staging label <code>AWSCURRENT</code> to this version. If this operation creates
    #       the first version for the secret, then Secrets Manager
    #         automatically attaches the staging label <code>AWSCURRENT</code> to it .</p>
    #          <p>If this operation moves the staging label <code>AWSCURRENT</code> from another version to this
    #       version, then Secrets Manager also automatically moves the staging label <code>AWSPREVIOUS</code> to
    #       the version that <code>AWSCURRENT</code> was removed from.</p>
    #          <p>This operation is idempotent. If a version with a <code>VersionId</code> with the same
    #       value as the <code>ClientRequestToken</code> parameter already exists, and you specify the
    #       same secret data, the operation succeeds but does nothing. However, if the secret data is
    #       different, then the operation fails because you can't modify an existing version; you can
    #       only create new ones.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:PutSecretValue</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::PutSecretValueInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to add a new version to.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #            <p>If the secret doesn't already exist, use <code>CreateSecret</code> instead.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the new version of the secret. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
    #           leave this parameter empty because they generate a random UUID for you. If you don't
    #           use the SDK and instead generate a raw HTTP request to the
    #           Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself
    #           for new versions and include that value in the request. </p>
    #            </note>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental
    #         creation of duplicate versions if there are failures and retries during the Lambda rotation
    #         function processing. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to
    #         ensure uniqueness within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in
    #             the request then the request is ignored. The operation is idempotent. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version of the
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you can't modify a secret
    #             version. You can only create new versions to store new secret values.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    #
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. To use this parameter in the command-line tools, we recommend that you store your
    #         binary data in a file and then pass the
    #         contents of the file as a parameter. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>You can't access this value from the Secrets Manager console.</p>
    #
    # @option params [String] :secret_string
    #   <p>The text to encrypt and store in the new version of the secret. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>We recommend you create the secret string as JSON key/value pairs, as shown in the example.</p>
    #
    # @option params [Array<String>] :version_stages
    #   <p>A list of staging labels to attach to this version of the
    #         secret. Secrets Manager uses staging labels to track versions of a secret through the rotation process.</p>
    #            <p>If you specify a staging
    #         label that's already associated with a different version of the same secret, then Secrets Manager
    #         removes the label from the other version and attaches it to this version.
    #         If you specify
    #         <code>AWSCURRENT</code>, and it is already attached to another version, then Secrets Manager also
    #         moves the staging label <code>AWSPREVIOUS</code> to the version that <code>AWSCURRENT</code> was removed from.</p>
    #            <p>If you don't include <code>VersionStages</code>, then Secrets Manager automatically
    #         moves the staging label <code>AWSCURRENT</code> to this version.</p>
    #
    # @return [Types::PutSecretValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_secret_value(
    #     secret_id: 'SecretId', # required
    #     client_request_token: 'ClientRequestToken',
    #     secret_binary: 'SecretBinary',
    #     secret_string: 'SecretString',
    #     version_stages: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSecretValueOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #   resp.data.version_stages #=> Array<String>
    #   resp.data.version_stages[0] #=> String
    #
    def put_secret_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSecretValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSecretValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSecretValue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionFailure, Errors::ResourceExistsException, Errors::DecryptionFailure, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::PutSecretValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSecretValue,
        stubs: @stubs,
        params_class: Params::PutSecretValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_secret_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RemoveRegionsFromReplication</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::RemoveRegionsFromReplicationInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #
    # @option params [Array<String>] :remove_replica_regions
    #   <p>The Regions of the replicas to remove.</p>
    #
    # @return [Types::RemoveRegionsFromReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_regions_from_replication(
    #     secret_id: 'SecretId', # required
    #     remove_replica_regions: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveRegionsFromReplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.replication_status #=> Array<ReplicationStatusType>
    #   resp.data.replication_status[0] #=> Types::ReplicationStatusType
    #   resp.data.replication_status[0].region #=> String
    #   resp.data.replication_status[0].kms_key_id #=> String
    #   resp.data.replication_status[0].status #=> String, one of ["InSync", "Failed", "InProgress"]
    #   resp.data.replication_status[0].status_message #=> String
    #   resp.data.replication_status[0].last_accessed_date #=> Time
    #
    def remove_regions_from_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveRegionsFromReplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveRegionsFromReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveRegionsFromReplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::RemoveRegionsFromReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveRegionsFromReplication,
        stubs: @stubs,
        params_class: Params::RemoveRegionsFromReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_regions_from_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replicates the secret to a new Regions. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html">Multi-Region secrets</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ReplicateSecretToRegions</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ReplicateSecretToRegionsInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to replicate.</p>
    #
    # @option params [Array<ReplicaRegionType>] :add_replica_regions
    #   <p>A list of Regions in which to replicate the secret.</p>
    #
    # @option params [Boolean] :force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the destination Region.</p>
    #
    # @return [Types::ReplicateSecretToRegionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replicate_secret_to_regions(
    #     secret_id: 'SecretId', # required
    #     add_replica_regions: [
    #       {
    #         region: 'Region',
    #         kms_key_id: 'KmsKeyId'
    #       }
    #     ], # required
    #     force_overwrite_replica_secret: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReplicateSecretToRegionsOutput
    #   resp.data.arn #=> String
    #   resp.data.replication_status #=> Array<ReplicationStatusType>
    #   resp.data.replication_status[0] #=> Types::ReplicationStatusType
    #   resp.data.replication_status[0].region #=> String
    #   resp.data.replication_status[0].kms_key_id #=> String
    #   resp.data.replication_status[0].status #=> String, one of ["InSync", "Failed", "InProgress"]
    #   resp.data.replication_status[0].status_message #=> String
    #   resp.data.replication_status[0].last_accessed_date #=> Time
    #
    def replicate_secret_to_regions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReplicateSecretToRegionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReplicateSecretToRegionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReplicateSecretToRegions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::ReplicateSecretToRegions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReplicateSecretToRegions,
        stubs: @stubs,
        params_class: Params::ReplicateSecretToRegionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :replicate_secret_to_regions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the scheduled deletion of a secret by removing the <code>DeletedDate</code> time
    #       stamp. You can access a secret again after it has been restored.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RestoreSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::RestoreSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to restore.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @return [Types::RestoreSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_secret(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def restore_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::RestoreSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreSecret,
        stubs: @stubs,
        params_class: Params::RestoreSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures and starts the asynchronous process of rotating the secret. For more information about rotation,
    #       see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html">Rotate secrets</a>.</p>
    #          <p>If you include the
    #       configuration parameters, the operation sets the values for the secret and then immediately
    #       starts a rotation. If you don't include the configuration parameters, the operation starts a
    #       rotation with the values already stored in the secret. </p>
    #          <p>For database credentials you want to rotate, for Secrets Manager to be able to rotate the secret, you must
    #       make sure the secret value is in the
    #         <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html"> JSON structure
    #         of a database secret</a>. In particular, if you want to use the <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets_strategies.html#rotating-secrets-two-users"> alternating users strategy</a>, your secret must contain the ARN of a superuser
    #       secret.</p>
    #
    #          <p>To configure rotation, you also need the ARN of an Amazon Web Services Lambda function and the schedule
    #       for the rotation. The Lambda rotation function creates a new
    #       version of the secret and creates or updates the credentials on the database or service to
    #       match. After testing the new credentials, the function marks the new secret version with the staging
    #       label <code>AWSCURRENT</code>. Then anyone who retrieves the secret gets the new version. For more
    #       information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html">How rotation works</a>.</p>
    #          <p>You can create the Lambda rotation function based on the <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_available-rotation-templates.html">rotation function templates</a> that Secrets Manager provides. Choose
    #       a template that matches your <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets_strategies.html">Rotation strategy</a>.</p>
    #          <p>When rotation is successful, the <code>AWSPENDING</code> staging label might be attached
    #       to the same version as the <code>AWSCURRENT</code> version, or it might not be attached to any
    #       version. If the <code>AWSPENDING</code> staging label is present but not attached to the same
    #       version as <code>AWSCURRENT</code>, then any later invocation of <code>RotateSecret</code>
    #       assumes that a previous rotation request is still in progress and returns an error.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RotateSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. You also need <code>lambda:InvokeFunction</code> permissions on the rotation function.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html">
    #         Permissions for rotation</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RotateSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to rotate.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the new version of the secret that helps
    #       ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if
    #       there are failures and retries during rotation. This value becomes the
    #       <code>VersionId</code> of the new version.</p>
    #            <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDK to call this operation, then you can
    #       leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that
    #       in the request for this parameter. If you don't use the SDK and instead generate a raw HTTP
    #       request to the Secrets Manager service endpoint, then you must generate a
    #       <code>ClientRequestToken</code> yourself for new versions and include that value in the
    #       request.</p>
    #            <p>You only need to specify this value if you implement your own retry logic and you want to
    #       ensure that Secrets Manager doesn't attempt to create a secret version twice. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to
    #       ensure uniqueness within the specified secret. </p>
    #
    # @option params [String] :rotation_lambda_arn
    #   <p>The ARN of the Lambda rotation function that can rotate the secret.</p>
    #
    # @option params [RotationRulesType] :rotation_rules
    #   <p>A structure that defines the rotation configuration for this secret.</p>
    #
    # @option params [Boolean] :rotate_immediately
    #   <p>Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window.
    #       The rotation schedule is defined in <a>RotateSecretRequest$RotationRules</a>.</p>
    #            <p>If you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html">
    #                  <code>testSecret</code>
    #         step</a> of the Lambda rotation function. The test creates an <code>AWSPENDING</code> version of the secret and then removes it.</p>
    #            <p>If you don't specify this value, then by default, Secrets Manager rotates the secret immediately.</p>
    #
    # @return [Types::RotateSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_secret(
    #     secret_id: 'SecretId', # required
    #     client_request_token: 'ClientRequestToken',
    #     rotation_lambda_arn: 'RotationLambdaARN',
    #     rotation_rules: {
    #       automatically_after_days: 1,
    #       duration: 'Duration',
    #       schedule_expression: 'ScheduleExpression'
    #     },
    #     rotate_immediately: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RotateSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #
    def rotate_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RotateSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RotateSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RotateSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::RotateSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RotateSecret,
        stubs: @stubs,
        params_class: Params::RotateSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rotate_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region.</p>
    #          <p>You must call this operation from the Region in which you want to promote the replica to a primary secret.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:StopReplicationToReplica</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::StopReplicationToReplicaInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN of the primary secret. </p>
    #
    # @return [Types::StopReplicationToReplicaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication_to_replica(
    #     secret_id: 'SecretId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopReplicationToReplicaOutput
    #   resp.data.arn #=> String
    #
    def stop_replication_to_replica(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopReplicationToReplicaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopReplicationToReplicaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopReplicationToReplica
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::StopReplicationToReplica
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopReplicationToReplica,
        stubs: @stubs,
        params_class: Params::StopReplicationToReplicaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_replication_to_replica
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches tags to a secret. Tags consist of a key name and a value. Tags are part of the
    #       secret's metadata. They are not associated with specific versions of the secret. This operation appends tags to the existing list of tags.</p>
    #             <p>The following restrictions apply to tags:</p>
    #         <ul>
    #             <li>
    #                <p>Maximum number of tags per secret: 50</p>
    #             </li>
    #             <li>
    #                <p>Maximum key length: 127 Unicode characters in UTF-8</p>
    #             </li>
    #             <li>
    #                <p>Maximum value length: 255 Unicode characters in UTF-8</p>
    #             </li>
    #             <li>
    #                <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                <p>Do not use the <code>aws:</code> prefix in your tag names or values because Amazon Web Services reserves it
    #             for Amazon Web Services use. You can't edit or delete tag names or values with this
    #               prefix. Tags with this prefix do not count against your tags per secret limit.</p>
    #             </li>
    #             <li>
    #                <p>If you use your tagging schema across multiple services and resources,
    #               other services might have restrictions on allowed characters. Generally
    #               allowed characters: letters, spaces, and numbers representable in UTF-8, plus the
    #               following special characters: + - = . _ : / @.</p>
    #             </li>
    #          </ul>
    #
    #          <important>
    #             <p>If you use tags as part of your security strategy, then adding or removing a tag can
    #         change permissions. If successfully completing this operation would result in you losing
    #         your permissions for this secret, then the operation is blocked and returns an Access Denied
    #         error.</p>
    #          </important>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:TagResource</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :secret_id
    #   <p>The identifier for the secret to attach tags to. You can specify either the
    #         Amazon Resource Name (ARN) or the friendly name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the secret as a JSON text string argument. Each element in the list consists of a <code>Key</code>
    #         and a <code>Value</code>.</p>
    #
    #            <p>For storing multiple values, we recommend that you use a JSON text
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     secret_id: 'SecretId', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
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

    # <p>Removes specific tags from a secret.</p>
    #          <p>This operation is idempotent. If a requested tag is not attached to the secret, no error
    #       is returned and the secret metadata is unchanged.</p>
    #          <important>
    #             <p>If you use tags as part of your security strategy, then removing a tag can change
    #         permissions. If successfully completing this operation would result in you losing your
    #         permissions for this secret, then the operation is blocked and returns an Access Denied
    #         error.</p>
    #          </important>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UntagResource</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the secret. You don't specify the value. Both the
    #         key and its associated value are removed.</p>
    #            <p>This parameter requires a JSON text string argument.</p>
    #            <p>For storing multiple values, we recommend that you use a JSON text
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     secret_id: 'SecretId', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
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

    # <p>Modifies the details of a secret, including metadata and the secret value. To change the secret value, you can also use <a>PutSecretValue</a>.</p>
    #          <p>To change the rotation configuration of a secret, use <a>RotateSecret</a> instead.</p>
    #
    #          <p>We recommend you avoid calling <code>UpdateSecret</code> at a sustained rate of more than
    #       once every 10 minutes. When you call <code>UpdateSecret</code> to update the secret value, Secrets Manager creates a new version
    #       of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not
    #       remove versions created less than 24 hours ago. If you update the secret value more
    #       than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach
    #       the quota for secret versions.</p>
    #          <p>If you include <code>SecretString</code> or <code>SecretBinary</code> to create a new
    #       secret version, Secrets Manager automatically attaches the staging label <code>AWSCURRENT</code> to the new
    #       version. </p>
    #          <p>If you call this operation with a <code>VersionId</code> that matches an existing version's
    #       <code>ClientRequestToken</code>, the operation results in an error. You can't modify an existing
    #       version, you can only create a new version. To remove a version, remove all staging labels from it. See
    #     <a>UpdateSecretVersionStage</a>.</p>
    #          <p>If you don't specify an KMS encryption key, Secrets Manager uses the Amazon Web Services managed key
    #       <code>aws/secretsmanager</code>. If this key doesn't already exist in your account, then Secrets Manager
    #       creates it for you automatically. All users and roles in the Amazon Web Services account automatically have access
    #       to use <code>aws/secretsmanager</code>. Creating <code>aws/secretsmanager</code> can result in a one-time
    #       significant delay in returning the result.  </p>
    #          <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then you can't
    #       use <code>aws/secretsmanager</code> to encrypt the secret, and you must create and use a customer managed key. </p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UpdateSecret</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>.
    #       If you use a customer managed key, you must also have <code>kms:GenerateDataKey</code> and
    #       <code>kms:Decrypt</code> permissions on the key. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html">
    #         Secret encryption and decryption</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecretInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then Secrets Manager creates
    #       a new version for the secret, and this parameter specifies the unique identifier for the new
    #       version.</p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
    #           leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it
    #           as the value for this parameter in the request. If you don't use the SDK and instead
    #           generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a
    #           <code>ClientRequestToken</code> yourself for the new version and include the value in the
    #           request.</p>
    #            </note>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    #
    # @option params [String] :description
    #   <p>The description of the secret.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager
    #         uses to encrypt new secret versions as well as any existing versions the staging labels
    #         <code>AWSCURRENT</code>, <code>AWSPENDING</code>, or <code>AWSPREVIOUS</code>.
    #         For more information about versions and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts: Version</a>.</p>
    #            <important>
    #               <p>You can only use the Amazon Web Services managed key <code>aws/secretsmanager</code> if you call this
    #           operation using credentials from the same Amazon Web Services account that owns the secret. If the secret is in
    #           a different account, then you must use a customer managed key and provide the ARN of that KMS key in
    #           this field. The user making the call must have permissions to both the secret and the KMS key in
    #           their respective accounts.</p>
    #            </important>
    #
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new
    #         version of the secret. We recommend that you
    #         store your binary data in a file and then pass
    #         the contents of the file as a parameter. </p>
    #            <p>Either <code>SecretBinary</code> or
    #           <code>SecretString</code> must have a value, but not both.</p>
    #            <p>You can't access this parameter in the Secrets Manager console.</p>
    #
    # @option params [String] :secret_string
    #   <p>The text data to encrypt and store in the new
    #         version of the secret. We recommend you use a JSON structure of key/value pairs for your secret value. </p>
    #            <p>Either <code>SecretBinary</code> or <code>SecretString</code> must have
    #         a value, but not both. </p>
    #
    # @return [Types::UpdateSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret(
    #     secret_id: 'SecretId', # required
    #     client_request_token: 'ClientRequestToken',
    #     description: 'Description',
    #     kms_key_id: 'KmsKeyId',
    #     secret_binary: 'SecretBinary',
    #     secret_string: 'SecretString'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecretOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version_id #=> String
    #
    def update_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionFailure, Errors::ResourceExistsException, Errors::DecryptionFailure, Errors::InvalidParameterException, Errors::PreconditionNotMetException, Errors::MalformedPolicyDocumentException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::UpdateSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecret,
        stubs: @stubs,
        params_class: Params::UpdateSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the staging labels attached to a version of a secret. Secrets Manager uses staging labels to
    #       track a version as it progresses through the secret rotation process. Each staging label can be
    #       attached to only one version at a time. To add a staging label to a version when it is already
    #       attached to another version, Secrets Manager first removes it from the other version first and
    #       then attaches it to this one. For more information about versions and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts: Version</a>. </p>
    #          <p>The staging labels that you specify in the <code>VersionStage</code> parameter are added
    #       to the existing list of staging labels for the version. </p>
    #          <p>You can move the <code>AWSCURRENT</code> staging label to this version by including it in this
    #       call.</p>
    #          <note>
    #             <p>Whenever you move <code>AWSCURRENT</code>, Secrets Manager automatically moves the label <code>AWSPREVIOUS</code>
    #         to the version that <code>AWSCURRENT</code> was removed from.</p>
    #          </note>
    #          <p>If this action results in the last label being removed from a version, then the version is
    #       considered to be 'deprecated' and can be deleted by Secrets Manager.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UpdateSecretVersionStage</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecretVersionStageInput}.
    #
    # @option params [String] :secret_id
    #   <p>The ARN or the name of the secret with the version and staging labelsto modify.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #
    # @option params [String] :version_stage
    #   <p>The staging label to add to this version.</p>
    #
    # @option params [String] :remove_from_version_id
    #   <p>The ID of the version that the staging label is to be removed
    #         from. If the staging label you are trying to attach to one version is already attached to a
    #         different version, then you must include this parameter and specify the version that the label
    #         is to be removed from. If the label is attached and you either do not specify this parameter,
    #         or the version ID does not match, then the operation fails.</p>
    #
    # @option params [String] :move_to_version_id
    #   <p>The ID of the version to add the staging label to. To
    #         remove a label from a version, then do not specify this parameter.</p>
    #            <p>If the staging label is already attached to a different version of the secret, then you
    #         must also specify the <code>RemoveFromVersionId</code> parameter. </p>
    #
    # @return [Types::UpdateSecretVersionStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret_version_stage(
    #     secret_id: 'SecretId', # required
    #     version_stage: 'VersionStage', # required
    #     remove_from_version_id: 'RemoveFromVersionId',
    #     move_to_version_id: 'MoveToVersionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecretVersionStageOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def update_secret_version_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecretVersionStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecretVersionStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecretVersionStage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::UpdateSecretVersionStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecretVersionStage,
        stubs: @stubs,
        params_class: Params::UpdateSecretVersionStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_secret_version_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Validates that a resource policy does not grant a wide range of principals access to
    #       your secret. A resource-based policy is optional for secrets.</p>
    #          <p>The API performs three checks when validating the policy:</p>
    #          <ul>
    #             <li>
    #                <p>Sends a call to <a href="https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/">Zelkova</a>, an automated reasoning engine, to ensure your resource policy does not
    #           allow broad access to your secret, for example policies that use a wildcard for the principal.</p>
    #             </li>
    #             <li>
    #                <p>Checks for correct syntax in a policy.</p>
    #             </li>
    #             <li>
    #                <p>Verifies the policy does not lock out a caller.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ValidateResourcePolicy</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication
    #       and access control in Secrets Manager</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ValidateResourcePolicyInput}.
    #
    # @option params [String] :secret_id
    #   <p>This field is reserved for internal use.</p>
    #
    # @option params [String] :resource_policy
    #   <p>A JSON-formatted string that contains an Amazon Web Services
    #         resource-based policy. The policy in the string identifies who can access or manage this
    #         secret and its versions. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions policy examples</a>.</p>
    #
    # @return [Types::ValidateResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_resource_policy(
    #     secret_id: 'SecretId',
    #     resource_policy: 'ResourcePolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateResourcePolicyOutput
    #   resp.data.policy_validation_passed #=> Boolean
    #   resp.data.validation_errors #=> Array<ValidationErrorsEntry>
    #   resp.data.validation_errors[0] #=> Types::ValidationErrorsEntry
    #   resp.data.validation_errors[0].check_name #=> String
    #   resp.data.validation_errors[0].error_message #=> String
    #
    def validate_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::MalformedPolicyDocumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::InternalServiceError]),
        data_parser: Parsers::ValidateResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateResourcePolicy,
        stubs: @stubs,
        params_class: Params::ValidateResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_resource_policy
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
