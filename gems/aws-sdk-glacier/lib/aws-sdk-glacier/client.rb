# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Glacier
  # An API client for Glacier
  # See {#initialize} for a full list of supported configuration options
  # <p> Amazon S3 Glacier (Glacier) is a storage solution for "cold data."</p>
  #
  #          <p>Glacier is an extremely low-cost storage service that provides secure,
  #          durable, and easy-to-use storage for data backup and archival. With Glacier,
  #          customers can store their data cost effectively for months, years, or decades.
  #          Glacier also enables customers to offload the administrative burdens of operating and
  #          scaling storage to AWS, so they don't have to worry about capacity planning, hardware
  #          provisioning, data replication, hardware failure and recovery, or time-consuming hardware
  #          migrations.</p>
  #
  #          <p>Glacier is a great storage choice when low storage cost is paramount and your
  #          data is rarely retrieved. If your
  #          application requires fast or frequent access to your data, consider using Amazon S3. For
  #          more information, see <a href="http://aws.amazon.com/s3/">Amazon Simple Storage Service
  #             (Amazon S3)</a>.</p>
  #
  #          <p>You can store any kind of data in any format. There is no maximum limit on the total
  #          amount of data you can store in Glacier.</p>
  #
  #          <p>If you are a first-time user of Glacier, we recommend that you begin by
  #          reading the following sections in the <i>Amazon S3 Glacier Developer
  #          Guide</i>:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html">What is
  #                   Amazon S3 Glacier</a> - This section of the Developer Guide describes the
  #                underlying data model, the operations it supports, and the AWS SDKs that you can use
  #                to interact with the service.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html">Getting Started
  #                   with Amazon S3 Glacier</a> - The Getting Started section walks you through the
  #                process of creating a vault, uploading archives, creating jobs to download archives,
  #                retrieving the job output, and deleting archives.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Glacier::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This operation aborts a multipart upload identified by the upload ID.</p>
    #
    #
    #          <p>After the Abort Multipart Upload request succeeds, you cannot upload any more parts
    #          to the multipart upload or complete the multipart upload. Aborting a completed upload
    #          fails. However, aborting an already-aborted upload will succeed, for a short time. For more
    #          information about uploading a part and completing a multipart upload, see <a>UploadMultipartPart</a> and <a>CompleteMultipartUpload</a>.</p>
    #
    #          <p>This operation is idempotent.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::AbortMultipartUploadInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload to delete.</p>
    #
    # @return [Types::AbortMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_multipart_upload(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     upload_id: 'uploadId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AbortMultipartUploadOutput
    #
    def abort_multipart_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AbortMultipartUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AbortMultipartUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AbortMultipartUpload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AbortMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AbortMultipartUpload,
        stubs: @stubs,
        params_class: Params::AbortMultipartUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :abort_multipart_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation aborts the vault locking process if the vault lock is not in the
    #             <code>Locked</code> state. If the vault lock is in the <code>Locked</code> state when
    #          this operation is requested, the operation returns an <code>AccessDeniedException</code>
    #          error. Aborting the vault locking process removes the vault lock policy from the specified
    #          vault. </p>
    #          <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by
    #          calling <a>CompleteVaultLock</a>. You can get the state of a vault lock by
    #          calling <a>GetVaultLock</a>. For more information about the vault locking
    #          process, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. For more information about vault lock policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon
    #             Glacier Access Control with Vault Lock Policies</a>. </p>
    #          <p>This operation is idempotent. You can successfully invoke this operation multiple
    #          times, if the vault lock is in the <code>InProgress</code> state or if there is no policy
    #          associated with the vault.</p>
    #
    # @param [Hash] params
    #   See {Types::AbortVaultLockInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::AbortVaultLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_vault_lock(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AbortVaultLockOutput
    #
    def abort_vault_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AbortVaultLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AbortVaultLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AbortVaultLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AbortVaultLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AbortVaultLock,
        stubs: @stubs,
        params_class: Params::AbortVaultLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :abort_vault_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation adds the specified tags to a vault. Each tag is composed of a key and
    #          a value. Each vault can have up to 10 tags. If your request would cause the tag limit for
    #          the vault to be exceeded, the operation throws the <code>LimitExceededException</code>
    #          error. If a tag already exists on the vault under a specified key, the existing key value
    #          will be overwritten. For more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier Resources</a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the vault. Each tag is composed of a key and a value. The value
    #            can be an empty string.</p>
    #
    # @return [Types::AddTagsToVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToVaultOutput
    #
    def add_tags_to_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AddTagsToVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToVault,
        stubs: @stubs,
        params_class: Params::AddTagsToVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You call this operation to inform Amazon S3 Glacier (Glacier) that all the archive parts have been
    #          uploaded and that Glacier can now assemble the archive from the uploaded parts.
    #          After assembling and saving the archive to the vault, Glacier returns the URI path
    #          of the newly created archive resource. Using the URI path, you can then access the archive.
    #          After you upload an archive, you should save the archive ID returned to retrieve the
    #          archive at a later point. You can also get the vault inventory to obtain a list of archive
    #          IDs in a vault. For more information, see <a>InitiateJob</a>.</p>
    #
    #          <p>In the request, you must include the computed SHA256 tree hash of the entire archive
    #          you have uploaded. For information about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing
    #             Checksums</a>. On the server side, Glacier also constructs the SHA256 tree
    #          hash of the assembled archive. If the values match, Glacier saves the archive to the
    #          vault; otherwise, it returns an error, and the operation fails. The <a>ListParts</a> operation returns a list of parts uploaded for a specific
    #          multipart upload. It includes checksum information for each uploaded part that can be used
    #          to debug a bad checksum issue.</p>
    #
    #          <p>Additionally, Glacier also checks for any missing content ranges when
    #          assembling the archive, if missing content ranges are found, Glacier returns an
    #          error and the operation fails.</p>
    #
    #          <p>Complete Multipart Upload is an idempotent operation. After your first successful
    #          complete multipart upload, if you call the operation again within a short period, the
    #          operation will succeed and return the same archive ID. This is useful in the event you
    #          experience a network issue that causes an aborted connection or receive a 500 server error,
    #          in which case you can repeat your Complete Multipart Upload request and get the same
    #          archive ID without creating duplicate archives. Note, however, that after the multipart
    #          upload completes, you cannot call the List Parts operation and the multipart upload will
    #          not appear in List Multipart Uploads response, even if idempotent complete is
    #          possible.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html">Complete Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::CompleteMultipartUploadInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #
    # @option params [String] :archive_size
    #   <p>The total size, in bytes, of the entire archive. This value should be the sum of all
    #            the sizes of the individual parts that you uploaded.</p>
    #
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash
    #            of the individual parts. If the value you specify in the request does not match the SHA256
    #            tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier),
    #            Glacier returns an error and the request fails.</p>
    #
    # @return [Types::CompleteMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_multipart_upload(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     upload_id: 'uploadId', # required
    #     archive_size: 'archiveSize',
    #     checksum: 'checksum'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteMultipartUploadOutput
    #   resp.data.location #=> String
    #   resp.data.checksum #=> String
    #   resp.data.archive_id #=> String
    #
    def complete_multipart_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteMultipartUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteMultipartUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteMultipartUpload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CompleteMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteMultipartUpload,
        stubs: @stubs,
        params_class: Params::CompleteMultipartUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_multipart_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation completes the vault locking process by transitioning the vault lock
    #          from the <code>InProgress</code> state to the <code>Locked</code> state, which causes the
    #          vault lock policy to become unchangeable. A vault lock is put into the
    #             <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. You can
    #          obtain the state of the vault lock by calling <a>GetVaultLock</a>. For more
    #          information about the vault locking process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. </p>
    #          <p>This operation is idempotent. This request is always successful if the vault lock is
    #          in the <code>Locked</code> state and the provided lock ID matches the lock ID originally
    #          used to lock the vault.</p>
    #          <p>If an invalid lock ID is passed in the request when the vault lock is in the
    #             <code>Locked</code> state, the operation returns an <code>AccessDeniedException</code>
    #          error. If an invalid lock ID is passed in the request when the vault lock is in the
    #             <code>InProgress</code> state, the operation throws an <code>InvalidParameter</code>
    #          error.</p>
    #
    # @param [Hash] params
    #   See {Types::CompleteVaultLockInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :lock_id
    #   <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
    #
    # @return [Types::CompleteVaultLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_vault_lock(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     lock_id: 'lockId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteVaultLockOutput
    #
    def complete_vault_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteVaultLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteVaultLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteVaultLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CompleteVaultLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteVaultLock,
        stubs: @stubs,
        params_class: Params::CompleteVaultLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_vault_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates a new vault with the specified name. The name of the vault
    #          must be unique within a region for an AWS account. You can create up to 1,000 vaults per
    #          account. If you need to create more vaults, contact Amazon S3 Glacier.</p>
    #          <p>You must use the following guidelines when naming a vault.</p>
    #          <ul>
    #             <li>
    #                <p>Names can be between 1 and 255 characters long.</p>
    #             </li>
    #             <li>
    #                <p>Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.'
    #                (period).</p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html">Creating a Vault in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html">Create Vault </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::CreateVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVaultOutput
    #   resp.data.location #=> String
    #
    def create_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVault,
        stubs: @stubs,
        params_class: Params::CreateVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes an archive from a vault. Subsequent requests to initiate a
    #          retrieval of this archive will fail. Archive retrievals that are in progress for this
    #          archive ID may or may not succeed according to the following scenarios:</p>
    #          <ul>
    #             <li>
    #                <p>If the archive retrieval job is actively preparing the data for download when
    #                Amazon S3 Glacier receives the delete archive request, the archival retrieval operation
    #                might fail.</p>
    #             </li>
    #             <li>
    #                <p>If the archive retrieval job has successfully prepared the archive for download
    #                when Amazon S3 Glacier receives the delete archive request, you will be able to download
    #                the output.</p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent. Attempting to delete an already-deleted archive does
    #          not result in an error.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html">Deleting an Archive in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive</a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteArchiveInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :archive_id
    #   <p>The ID of the archive to delete.</p>
    #
    # @return [Types::DeleteArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     archive_id: 'archiveId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteArchiveOutput
    #
    def delete_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteArchive
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteArchive,
        stubs: @stubs,
        params_class: Params::DeleteArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes a vault. Amazon S3 Glacier will delete a vault only if there are
    #          no archives in the vault as of the last inventory and there have been no writes to the
    #          vault since the last inventory. If either of these conditions is not satisfied, the vault
    #          deletion fails (that is, the vault is not removed) and Amazon S3 Glacier returns an error. You
    #          can use <a>DescribeVault</a> to return the number of archives in a vault, and
    #          you can use <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate a Job (POST
    #             jobs)</a> to initiate a new inventory retrieval for a vault. The inventory contains
    #          the archive IDs you use to delete archives using <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive (DELETE
    #             archive)</a>.</p>
    #
    #          <p>This operation is idempotent.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html">Deleting a Vault in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html">Delete Vault </a> in the
    #             <i>Amazon S3 Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::DeleteVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVaultOutput
    #
    def delete_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVault,
        stubs: @stubs,
        params_class: Params::DeleteVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes the access policy associated with the specified vault. The
    #          operation is eventually consistent; that is, it might take some time for Amazon S3 Glacier to
    #          completely remove the access policy, and you might still see the effect of the policy for a
    #          short time after you send the delete request.</p>
    #          <p>This operation is idempotent. You can invoke delete multiple times, even if there is
    #          no policy associated with the vault. For more information about vault access policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVaultAccessPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::DeleteVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault_access_policy(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVaultAccessPolicyOutput
    #
    def delete_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVaultAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::DeleteVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes the notification configuration set for a vault. The operation
    #          is eventually consistent; that is, it might take some time for Amazon S3 Glacier to completely
    #          disable the notifications and you might still receive some notifications for a short time
    #          after you send the delete request.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #          <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access
    #             Control Using AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html">Delete Vault
    #             Notification Configuration </a> in the Amazon S3 Glacier Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVaultNotificationsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::DeleteVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault_notifications(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVaultNotificationsOutput
    #
    def delete_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVaultNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVaultNotifications,
        stubs: @stubs,
        params_class: Params::DeleteVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about a job you previously initiated, including
    #          the job initiation date, the user who initiated the job, the job status code/message and
    #          the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes the job. For more information
    #          about initiating a job, see <a>InitiateJob</a>. </p>
    #
    #          <note>
    #             <p>This operation enables you to check the status of your job. However, it is
    #             strongly recommended that you set up an Amazon SNS topic and specify it in your initiate
    #             job request so that Glacier can notify the topic after it completes the
    #             job.</p>
    #          </note>
    #
    #          <p>A job ID will not expire for at least 24 hours after Glacier completes the
    #          job.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #
    #          <p> For more information about using this operation,
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html">Describe Job</a>
    #          in the <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID of the job to describe.</p>
    #
    # @return [Types::DescribeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_description #=> String
    #   resp.data.action #=> String, one of ["ArchiveRetrieval", "InventoryRetrieval", "Select"]
    #   resp.data.archive_id #=> String
    #   resp.data.vault_arn #=> String
    #   resp.data.creation_date #=> String
    #   resp.data.completed #=> Boolean
    #   resp.data.status_code #=> String, one of ["InProgress", "Succeeded", "Failed"]
    #   resp.data.status_message #=> String
    #   resp.data.archive_size_in_bytes #=> Integer
    #   resp.data.inventory_size_in_bytes #=> Integer
    #   resp.data.sns_topic #=> String
    #   resp.data.completion_date #=> String
    #   resp.data.sha256_tree_hash #=> String
    #   resp.data.archive_sha256_tree_hash #=> String
    #   resp.data.retrieval_byte_range #=> String
    #   resp.data.tier #=> String
    #   resp.data.inventory_retrieval_parameters #=> Types::InventoryRetrievalJobDescription
    #   resp.data.inventory_retrieval_parameters.format #=> String
    #   resp.data.inventory_retrieval_parameters.start_date #=> String
    #   resp.data.inventory_retrieval_parameters.end_date #=> String
    #   resp.data.inventory_retrieval_parameters.limit #=> String
    #   resp.data.inventory_retrieval_parameters.marker #=> String
    #   resp.data.job_output_path #=> String
    #   resp.data.select_parameters #=> Types::SelectParameters
    #   resp.data.select_parameters.input_serialization #=> Types::InputSerialization
    #   resp.data.select_parameters.input_serialization.csv #=> Types::CSVInput
    #   resp.data.select_parameters.input_serialization.csv.file_header_info #=> String, one of ["USE", "IGNORE", "NONE"]
    #   resp.data.select_parameters.input_serialization.csv.comments #=> String
    #   resp.data.select_parameters.input_serialization.csv.quote_escape_character #=> String
    #   resp.data.select_parameters.input_serialization.csv.record_delimiter #=> String
    #   resp.data.select_parameters.input_serialization.csv.field_delimiter #=> String
    #   resp.data.select_parameters.input_serialization.csv.quote_character #=> String
    #   resp.data.select_parameters.expression_type #=> String, one of ["SQL"]
    #   resp.data.select_parameters.expression #=> String
    #   resp.data.select_parameters.output_serialization #=> Types::OutputSerialization
    #   resp.data.select_parameters.output_serialization.csv #=> Types::CSVOutput
    #   resp.data.select_parameters.output_serialization.csv.quote_fields #=> String, one of ["ALWAYS", "ASNEEDED"]
    #   resp.data.select_parameters.output_serialization.csv.quote_escape_character #=> String
    #   resp.data.select_parameters.output_serialization.csv.record_delimiter #=> String
    #   resp.data.select_parameters.output_serialization.csv.field_delimiter #=> String
    #   resp.data.select_parameters.output_serialization.csv.quote_character #=> String
    #   resp.data.output_location #=> Types::OutputLocation
    #   resp.data.output_location.s3 #=> Types::S3Location
    #   resp.data.output_location.s3.bucket_name #=> String
    #   resp.data.output_location.s3.prefix #=> String
    #   resp.data.output_location.s3.encryption #=> Types::Encryption
    #   resp.data.output_location.s3.encryption.encryption_type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.output_location.s3.encryption.kms_key_id #=> String
    #   resp.data.output_location.s3.encryption.kms_context #=> String
    #   resp.data.output_location.s3.canned_acl #=> String, one of ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.output_location.s3.access_control_list #=> Array<Grant>
    #   resp.data.output_location.s3.access_control_list[0] #=> Types::Grant
    #   resp.data.output_location.s3.access_control_list[0].grantee #=> Types::Grantee
    #   resp.data.output_location.s3.access_control_list[0].grantee.type #=> String, one of ["AmazonCustomerByEmail", "CanonicalUser", "Group"]
    #   resp.data.output_location.s3.access_control_list[0].grantee.display_name #=> String
    #   resp.data.output_location.s3.access_control_list[0].grantee.uri #=> String
    #   resp.data.output_location.s3.access_control_list[0].grantee.id #=> String
    #   resp.data.output_location.s3.access_control_list[0].grantee.email_address #=> String
    #   resp.data.output_location.s3.access_control_list[0].permission #=> String, one of ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #   resp.data.output_location.s3.tagging #=> Hash<String, String>
    #   resp.data.output_location.s3.tagging['key'] #=> String
    #   resp.data.output_location.s3.user_metadata #=> Hash<String, String>
    #   resp.data.output_location.s3.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #
    def describe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJob,
        stubs: @stubs,
        params_class: Params::DescribeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about a vault, including the vault's Amazon
    #          Resource Name (ARN), the date the vault was created, the number of archives it contains,
    #          and the total size of all the archives in the vault. The number of archives and their total
    #          size are as of the last inventory generation. This means that if you add or remove an
    #          archive from a vault, and then immediately use Describe Vault, the change in contents will
    #          not be immediately reflected. If you want to retrieve the latest inventory of the vault,
    #          use <a>InitiateJob</a>. Amazon S3 Glacier generates vault inventories approximately
    #          daily. For more information, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a Vault Inventory in
    #             Amazon S3 Glacier</a>. </p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html">Describe Vault </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::DescribeVaultOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVaultOperationOutput
    #   resp.data.vault_arn #=> String
    #   resp.data.vault_name #=> String
    #   resp.data.creation_date #=> String
    #   resp.data.last_inventory_date #=> String
    #   resp.data.number_of_archives #=> Integer
    #   resp.data.size_in_bytes #=> Integer
    #
    def describe_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVault,
        stubs: @stubs,
        params_class: Params::DescribeVaultOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns the current data retrieval policy for the account and region
    #          specified in the GET request. For more information about data retrieval policies, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon Glacier Data Retrieval Policies</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataRetrievalPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
    #
    # @return [Types::GetDataRetrievalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_retrieval_policy(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataRetrievalPolicyOutput
    #   resp.data.policy #=> Types::DataRetrievalPolicy
    #   resp.data.policy.rules #=> Array<DataRetrievalRule>
    #   resp.data.policy.rules[0] #=> Types::DataRetrievalRule
    #   resp.data.policy.rules[0].strategy #=> String
    #   resp.data.policy.rules[0].bytes_per_hour #=> Integer
    #
    def get_data_retrieval_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataRetrievalPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataRetrievalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataRetrievalPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetDataRetrievalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataRetrievalPolicy,
        stubs: @stubs,
        params_class: Params::GetDataRetrievalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_retrieval_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation downloads the output of the job you initiated using <a>InitiateJob</a>. Depending on the job type you specified when you initiated the
    #          job, the output will be either the content of an archive or a vault inventory.</p>
    #
    #          <p>You can download all the job output or download a portion of the output by specifying
    #          a byte range. In the case of an archive retrieval job, depending on the byte range you
    #          specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion of the data. You can compute the
    #          checksum on the client and verify that the values match to ensure the portion you downloaded
    #          is the correct data.</p>
    #          <p>A job ID will not expire for at least 24 hours after Glacier completes the job. That
    #          a byte range. For both archive and inventory retrieval jobs, you should verify the downloaded
    #          size against the size returned in the headers from the
    #          <b>Get Job Output</b> response.</p>
    #          <p>For archive retrieval jobs, you should also verify that the size is what you expected. If
    #          you download a portion of the output, the expected size is based on the range of bytes
    #          you specified. For example, if you specify a range of <code>bytes=0-1048575</code>, you should
    #          verify your download size is 1,048,576 bytes. If you download an entire archive, the
    #          expected size is the size of the archive when you uploaded it to Amazon S3 Glacier
    #          The expected size is also returned in the headers from the
    #          <b>Get Job Output</b> response.</p>
    #          <p>In the case of an archive retrieval job, depending on the byte range you
    #          specify, Glacier returns the checksum for the portion of the data. To ensure the portion you downloaded
    #          is the correct data, compute the checksum on the client, verify that the values match,
    #          and verify that the size is what you expected.</p>
    #
    #          <p>A job ID does not expire for at least 24 hours after Glacier completes the
    #          job. That is, you can download the job output within the 24 hours period after Amazon
    #          Glacier completes the job.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a
    #             Vault Inventory</a>, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html">Downloading an
    #             Archive</a>, and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html">Get Job Output </a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::GetJobOutputInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :job_id
    #   <p>The job ID whose data is downloaded.</p>
    #
    # @option params [String] :range
    #   <p>The range of bytes to retrieve from the output. For example, if you want to download
    #            the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation
    #            downloads the entire output.</p>
    #
    #            <p>If the job output is large, then you can use a range to
    #            retrieve a portion of the output. This allows you to download the entire output in smaller
    #            chunks of bytes. For example, suppose you have 1 GB of job output you want to download and
    #            you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job
    #            Output requests. You use the following process to download the job output:</p>
    #
    #            <ol>
    #               <li>
    #                  <p>Download a 128 MB chunk of output by specifying the appropriate byte range.
    #                     Verify that all 128 MB of data was received.</p>
    #               </li>
    #               <li>
    #                  <p>Along with the data, the response includes a SHA256 tree hash of the payload.
    #                     You compute the checksum of the payload on the client and compare it with the
    #                     checksum you received in the response to ensure you received all the expected
    #                     data.</p>
    #               </li>
    #               <li>
    #                  <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time
    #                     specifying the appropriate byte range.</p>
    #               </li>
    #               <li>
    #                  <p>After downloading all the parts of the job output, you have a list of eight
    #                     checksum values. Compute the tree hash of these values to find the checksum of the
    #                     entire output. Using the <a>DescribeJob</a> API, obtain job information of
    #                     the job that provided you the output. The response includes the checksum of the
    #                     entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you
    #                     computed to ensure you have downloaded the entire archive content with no
    #                     errors.</p>
    #                  <p></p>
    #               </li>
    #            </ol>
    #
    # @return [Types::GetJobOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_output(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     job_id: 'jobId', # required
    #     range: 'range'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobOutputOutput
    #   resp.data.body #=> String
    #   resp.data.checksum #=> String
    #   resp.data.status #=> Integer
    #   resp.data.content_range #=> String
    #   resp.data.accept_ranges #=> String
    #   resp.data.content_type #=> String
    #   resp.data.archive_description #=> String
    #
    def get_job_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobOutputInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetJobOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobOutput,
        stubs: @stubs,
        params_class: Params::GetJobOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation retrieves the <code>access-policy</code> subresource set on the vault;
    #          for more information on setting this subresource, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html">Set Vault Access Policy
    #             (PUT access-policy)</a>. If there is no access policy set on the vault, the
    #          operation returns a <code>404 Not found</code> error. For more information about vault
    #          access policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control
    #             with Vault Access Policies</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVaultAccessPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::GetVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_access_policy(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVaultAccessPolicyOutput
    #   resp.data.policy #=> Types::VaultAccessPolicy
    #   resp.data.policy.policy #=> String
    #
    def get_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVaultAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::GetVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation retrieves the following attributes from the <code>lock-policy</code>
    #          subresource set on the specified vault: </p>
    #          <ul>
    #             <li>
    #                <p>The vault lock policy set on the vault.</p>
    #             </li>
    #             <li>
    #                <p>The state of the vault lock, which is either <code>InProgess</code> or
    #                   <code>Locked</code>.</p>
    #             </li>
    #             <li>
    #                <p>When the lock ID expires. The lock ID is used to complete the vault locking
    #                process.</p>
    #             </li>
    #             <li>
    #                <p>When the vault lock was initiated and put into the <code>InProgress</code>
    #                state.</p>
    #             </li>
    #          </ul>
    #
    #          <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by
    #          calling <a>CompleteVaultLock</a>. You can abort the vault locking process by
    #          calling <a>AbortVaultLock</a>. For more information about the vault locking
    #          process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon
    #             Glacier Vault Lock</a>. </p>
    #          <p>If there is no vault lock policy set on the vault, the operation returns a <code>404
    #             Not found</code> error. For more information about vault lock policies, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon
    #             Glacier Access Control with Vault Lock Policies</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetVaultLockInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::GetVaultLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_lock(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVaultLockOutput
    #   resp.data.policy #=> String
    #   resp.data.state #=> String
    #   resp.data.expiration_date #=> String
    #   resp.data.creation_date #=> String
    #
    def get_vault_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVaultLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVaultLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVaultLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetVaultLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVaultLock,
        stubs: @stubs,
        params_class: Params::GetVaultLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vault_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation retrieves the <code>notification-configuration</code> subresource of
    #          the specified vault.</p>
    #
    #          <p>For information about setting a notification configuration on a vault, see <a>SetVaultNotifications</a>. If a notification configuration for a vault is not
    #          set, the operation returns a <code>404 Not Found</code> error. For more information about
    #          vault notifications, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a>. </p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html">Get Vault Notification
    #             Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetVaultNotificationsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::GetVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_notifications(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVaultNotificationsOutput
    #   resp.data.vault_notification_config #=> Types::VaultNotificationConfig
    #   resp.data.vault_notification_config.sns_topic #=> String
    #   resp.data.vault_notification_config.events #=> Array<String>
    #   resp.data.vault_notification_config.events[0] #=> String
    #
    def get_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVaultNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVaultNotifications,
        stubs: @stubs,
        params_class: Params::GetVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation initiates a job of the specified type, which can be a select, an archival retrieval,
    #          or a vault retrieval. For more information about using this operation,
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate
    #             a Job</a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::InitiateJobInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [JobParameters] :job_parameters
    #   <p>Provides options for specifying job information.</p>
    #
    # @return [Types::InitiateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_job(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     job_parameters: {
    #       format: 'Format',
    #       type: 'Type',
    #       archive_id: 'ArchiveId',
    #       description: 'Description',
    #       sns_topic: 'SNSTopic',
    #       retrieval_byte_range: 'RetrievalByteRange',
    #       tier: 'Tier',
    #       inventory_retrieval_parameters: {
    #         start_date: 'StartDate',
    #         end_date: 'EndDate',
    #         limit: 'Limit',
    #         marker: 'Marker'
    #       },
    #       select_parameters: {
    #         input_serialization: {
    #           csv: {
    #             file_header_info: 'USE', # accepts ["USE", "IGNORE", "NONE"]
    #             comments: 'Comments',
    #             quote_escape_character: 'QuoteEscapeCharacter',
    #             record_delimiter: 'RecordDelimiter',
    #             field_delimiter: 'FieldDelimiter',
    #             quote_character: 'QuoteCharacter'
    #           }
    #         },
    #         expression_type: 'SQL', # accepts ["SQL"]
    #         expression: 'Expression',
    #         output_serialization: {
    #           csv: {
    #             quote_fields: 'ALWAYS', # accepts ["ALWAYS", "ASNEEDED"]
    #             quote_escape_character: 'QuoteEscapeCharacter',
    #             record_delimiter: 'RecordDelimiter',
    #             field_delimiter: 'FieldDelimiter',
    #             quote_character: 'QuoteCharacter'
    #           }
    #         }
    #       },
    #       output_location: {
    #         s3: {
    #           bucket_name: 'BucketName',
    #           prefix: 'Prefix',
    #           encryption: {
    #             encryption_type: 'aws:kms', # accepts ["aws:kms", "AES256"]
    #             kms_key_id: 'KMSKeyId',
    #             kms_context: 'KMSContext'
    #           },
    #           canned_acl: 'private', # accepts ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #           access_control_list: [
    #             {
    #               grantee: {
    #                 type: 'AmazonCustomerByEmail', # required - accepts ["AmazonCustomerByEmail", "CanonicalUser", "Group"]
    #                 display_name: 'DisplayName',
    #                 uri: 'URI',
    #                 id: 'ID',
    #                 email_address: 'EmailAddress'
    #               },
    #               permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #             }
    #           ],
    #           tagging: {
    #             'key' => 'value'
    #           },
    #           storage_class: 'STANDARD' # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateJobOutput
    #   resp.data.location #=> String
    #   resp.data.job_id #=> String
    #   resp.data.job_output_path #=> String
    #
    def initiate_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InsufficientCapacityException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::PolicyEnforcedException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::InitiateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateJob,
        stubs: @stubs,
        params_class: Params::InitiateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation initiates a multipart upload. Amazon S3 Glacier creates a multipart
    #          upload resource and returns its ID in the response. The multipart upload ID is used in
    #          subsequent requests to upload parts of an archive (see <a>UploadMultipartPart</a>).</p>
    #
    #          <p>When you initiate a multipart upload, you specify the part size in number of bytes.
    #          The part size must be a megabyte (1024 KB) multiplied by a power of 2-for example, 1048576
    #          (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable
    #          part size is 1 MB, and the maximum is 4 GB.</p>
    #
    #          <p>Every part you upload to this resource (see <a>UploadMultipartPart</a>),
    #          except the last one, must have the same size. The last one can be the same size or smaller.
    #          For example, suppose you want to upload a 16.2 MB file. If you initiate the multipart
    #          upload with a part size of 4 MB, you will upload four parts of 4 MB each and one part of
    #          0.2 MB. </p>
    #
    #          <note>
    #             <p>You don't need to know the size of the archive when you start a multipart upload
    #             because Amazon S3 Glacier does not require you to specify the overall archive
    #             size.</p>
    #          </note>
    #
    #          <p>After you complete the multipart upload, Amazon S3 Glacier (Glacier) removes the multipart upload
    #          resource referenced by the ID. Glacier also removes the multipart upload resource if
    #          you cancel the multipart upload or it may be removed if there is no activity for a period
    #          of 24 hours.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html">Initiate Multipart
    #             Upload</a> in the <i>Amazon Glacier Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::InitiateMultipartUploadInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :archive_description
    #   <p>The archive description that you are uploading in parts.</p>
    #            <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example
    #            1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum
    #            allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
    #
    # @option params [String] :part_size
    #   <p>The size of each part except the last, in bytes. The last part can be smaller than
    #            this part size.</p>
    #
    # @return [Types::InitiateMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_multipart_upload(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     archive_description: 'archiveDescription',
    #     part_size: 'partSize'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateMultipartUploadOutput
    #   resp.data.location #=> String
    #   resp.data.upload_id #=> String
    #
    def initiate_multipart_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateMultipartUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateMultipartUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateMultipartUpload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::InitiateMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateMultipartUpload,
        stubs: @stubs,
        params_class: Params::InitiateMultipartUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_multipart_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation initiates the vault locking process by doing the following:</p>
    #          <ul>
    #             <li>
    #                <p>Installing a vault lock policy on the specified vault.</p>
    #             </li>
    #             <li>
    #                <p>Setting the lock state of vault lock to <code>InProgress</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returning a lock ID, which is used to complete the vault locking
    #                process.</p>
    #             </li>
    #          </ul>
    #
    #          <p>You can set one vault lock policy for each vault and this policy can be up to 20 KB
    #          in size. For more information about vault lock policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon Glacier Access Control with
    #             Vault Lock Policies</a>. </p>
    #          <p>You must complete the vault locking process within 24 hours after the vault lock
    #          enters the <code>InProgress</code> state. After the 24 hour window ends, the lock ID
    #          expires, the vault automatically exits the <code>InProgress</code> state, and the vault
    #          lock policy is removed from the vault. You call <a>CompleteVaultLock</a> to
    #          complete the vault locking process by setting the state of the vault lock to
    #             <code>Locked</code>. </p>
    #          <p>After a vault lock is in the <code>Locked</code> state, you cannot initiate a new
    #          vault lock for the vault.</p>
    #
    #          <p>You can abort the vault locking process by calling <a>AbortVaultLock</a>.
    #          You can get the state of the vault lock by calling <a>GetVaultLock</a>. For more
    #          information about the vault locking process, <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault
    #          Lock</a>.</p>
    #
    #          <p>If this operation is called when the vault lock is in the <code>InProgress</code>
    #          state, the operation returns an <code>AccessDeniedException</code> error. When the vault
    #          lock is in the <code>InProgress</code> state you must call <a>AbortVaultLock</a>
    #          before you can initiate a new vault lock policy. </p>
    #
    # @param [Hash] params
    #   See {Types::InitiateVaultLockInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [VaultLockPolicy] :policy
    #   <p>The vault lock policy as a JSON string, which uses "\" as an escape
    #            character.</p>
    #
    # @return [Types::InitiateVaultLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_vault_lock(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     policy: {
    #       policy: 'Policy'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateVaultLockOutput
    #   resp.data.lock_id #=> String
    #
    def initiate_vault_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateVaultLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateVaultLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateVaultLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::InitiateVaultLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateVaultLock,
        stubs: @stubs,
        params_class: Params::InitiateVaultLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_vault_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists jobs for a vault, including jobs that are in-progress and jobs
    #          that have recently finished. The List Job operation returns a list of these jobs sorted by job initiation
    #          time.</p>
    #
    #          <note>
    #             <p>Amazon Glacier retains recently completed jobs for a period before deleting them;
    #             however, it eventually removes completed jobs. The output of completed jobs can be
    #             retrieved. Retaining completed jobs for a period of time after they have completed
    #             enables you to get a job output in the event you miss the job completion notification or
    #             your first attempt to download it fails. For example, suppose you start an archive
    #             retrieval job to download an archive. After the job completes, you start to download the
    #             archive but encounter a network error. In this scenario, you can retry and download the
    #             archive while the job exists.</p>
    #          </note>
    #
    #          <p>The List Jobs operation supports pagination. You should always check the response <code>Marker</code> field.
    #          If there are no more jobs to list, the <code>Marker</code> field is set to <code>null</code>. If there are more jobs to list,
    #          the <code>Marker</code> field is set to a non-null value, which you can use to continue the pagination of the list.
    #          To return a list of jobs that begins at a specific job,
    #          set the marker request parameter to the <code>Marker</code> value for that job that you obtained from a previous List Jobs request.</p>
    #
    #          <p>You can set a maximum limit for the number of jobs returned in the response by
    #          specifying the <code>limit</code> parameter in the request. The default limit is 50. The
    #          number of jobs returned might be fewer than the limit, but the number of returned jobs
    #          never exceeds the limit.</p>
    #
    #         <p>Additionally, you can filter the jobs list returned by specifying the optional
    #             <code>statuscode</code> parameter or <code>completed</code> parameter, or both. Using
    #          the <code>statuscode</code> parameter, you can specify to return only jobs that match
    #          either the <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code> status.
    #          Using the <code>completed</code> parameter, you can specify to return only jobs that were
    #          completed (<code>true</code>) or jobs that were not completed
    #          (<code>false</code>).</p>
    #
    #          <p>For more information about using this operation,
    #          see the documentation for the underlying REST API <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html">List Jobs</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of jobs to be returned. The default limit is 50. The number of
    #            jobs returned might be fewer than the specified limit, but the number of returned jobs
    #            never exceeds the limit.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the job at which the
    #            listing of jobs should begin. Get the marker value from a previous List Jobs response. You
    #            only need to include the marker if you are continuing the pagination of results started in
    #            a previous List Jobs request.</p>
    #
    # @option params [String] :statuscode
    #   <p>The type of job status to return. You can specify the following values:
    #               <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
    #
    # @option params [String] :completed
    #   <p>The state of the jobs to return. You can specify <code>true</code> or
    #               <code>false</code>.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     limit: 1,
    #     marker: 'marker',
    #     statuscode: 'statuscode',
    #     completed: 'completed'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.job_list #=> Array<GlacierJobDescription>
    #   resp.data.job_list[0] #=> Types::GlacierJobDescription
    #   resp.data.job_list[0].job_id #=> String
    #   resp.data.job_list[0].job_description #=> String
    #   resp.data.job_list[0].action #=> String, one of ["ArchiveRetrieval", "InventoryRetrieval", "Select"]
    #   resp.data.job_list[0].archive_id #=> String
    #   resp.data.job_list[0].vault_arn #=> String
    #   resp.data.job_list[0].creation_date #=> String
    #   resp.data.job_list[0].completed #=> Boolean
    #   resp.data.job_list[0].status_code #=> String, one of ["InProgress", "Succeeded", "Failed"]
    #   resp.data.job_list[0].status_message #=> String
    #   resp.data.job_list[0].archive_size_in_bytes #=> Integer
    #   resp.data.job_list[0].inventory_size_in_bytes #=> Integer
    #   resp.data.job_list[0].sns_topic #=> String
    #   resp.data.job_list[0].completion_date #=> String
    #   resp.data.job_list[0].sha256_tree_hash #=> String
    #   resp.data.job_list[0].archive_sha256_tree_hash #=> String
    #   resp.data.job_list[0].retrieval_byte_range #=> String
    #   resp.data.job_list[0].tier #=> String
    #   resp.data.job_list[0].inventory_retrieval_parameters #=> Types::InventoryRetrievalJobDescription
    #   resp.data.job_list[0].inventory_retrieval_parameters.format #=> String
    #   resp.data.job_list[0].inventory_retrieval_parameters.start_date #=> String
    #   resp.data.job_list[0].inventory_retrieval_parameters.end_date #=> String
    #   resp.data.job_list[0].inventory_retrieval_parameters.limit #=> String
    #   resp.data.job_list[0].inventory_retrieval_parameters.marker #=> String
    #   resp.data.job_list[0].job_output_path #=> String
    #   resp.data.job_list[0].select_parameters #=> Types::SelectParameters
    #   resp.data.job_list[0].select_parameters.input_serialization #=> Types::InputSerialization
    #   resp.data.job_list[0].select_parameters.input_serialization.csv #=> Types::CSVInput
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.file_header_info #=> String, one of ["USE", "IGNORE", "NONE"]
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.comments #=> String
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.quote_escape_character #=> String
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.record_delimiter #=> String
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.field_delimiter #=> String
    #   resp.data.job_list[0].select_parameters.input_serialization.csv.quote_character #=> String
    #   resp.data.job_list[0].select_parameters.expression_type #=> String, one of ["SQL"]
    #   resp.data.job_list[0].select_parameters.expression #=> String
    #   resp.data.job_list[0].select_parameters.output_serialization #=> Types::OutputSerialization
    #   resp.data.job_list[0].select_parameters.output_serialization.csv #=> Types::CSVOutput
    #   resp.data.job_list[0].select_parameters.output_serialization.csv.quote_fields #=> String, one of ["ALWAYS", "ASNEEDED"]
    #   resp.data.job_list[0].select_parameters.output_serialization.csv.quote_escape_character #=> String
    #   resp.data.job_list[0].select_parameters.output_serialization.csv.record_delimiter #=> String
    #   resp.data.job_list[0].select_parameters.output_serialization.csv.field_delimiter #=> String
    #   resp.data.job_list[0].select_parameters.output_serialization.csv.quote_character #=> String
    #   resp.data.job_list[0].output_location #=> Types::OutputLocation
    #   resp.data.job_list[0].output_location.s3 #=> Types::S3Location
    #   resp.data.job_list[0].output_location.s3.bucket_name #=> String
    #   resp.data.job_list[0].output_location.s3.prefix #=> String
    #   resp.data.job_list[0].output_location.s3.encryption #=> Types::Encryption
    #   resp.data.job_list[0].output_location.s3.encryption.encryption_type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.job_list[0].output_location.s3.encryption.kms_key_id #=> String
    #   resp.data.job_list[0].output_location.s3.encryption.kms_context #=> String
    #   resp.data.job_list[0].output_location.s3.canned_acl #=> String, one of ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.job_list[0].output_location.s3.access_control_list #=> Array<Grant>
    #   resp.data.job_list[0].output_location.s3.access_control_list[0] #=> Types::Grant
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee #=> Types::Grantee
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee.type #=> String, one of ["AmazonCustomerByEmail", "CanonicalUser", "Group"]
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee.display_name #=> String
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee.uri #=> String
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee.id #=> String
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].grantee.email_address #=> String
    #   resp.data.job_list[0].output_location.s3.access_control_list[0].permission #=> String, one of ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #   resp.data.job_list[0].output_location.s3.tagging #=> Hash<String, String>
    #   resp.data.job_list[0].output_location.s3.tagging['key'] #=> String
    #   resp.data.job_list[0].output_location.s3.user_metadata #=> Hash<String, String>
    #   resp.data.job_list[0].output_location.s3.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"]
    #   resp.data.marker #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists in-progress multipart uploads for the specified vault. An
    #          in-progress multipart upload is a multipart upload that has been initiated by an <a>InitiateMultipartUpload</a> request, but has not yet been completed or aborted.
    #          The list returned in the List Multipart Upload response has no guaranteed order. </p>
    #
    #          <p>The List Multipart Uploads operation supports pagination. By default, this operation
    #          returns up to 50 multipart uploads in the response. You should always check the response
    #          for a <code>marker</code> at which to continue the list; if there are no more items the
    #             <code>marker</code> is <code>null</code>. To return a list of multipart uploads that
    #          begins at a specific upload, set the <code>marker</code> request parameter to the value you
    #          obtained from a previous List Multipart Upload request. You can also limit the number of
    #          uploads returned in the response by specifying the <code>limit</code> parameter in the
    #          request.</p>
    #
    #          <p>Note the difference between this operation and listing parts (<a>ListParts</a>). The List Multipart Uploads operation lists all multipart uploads
    #          for a vault and does not require a multipart upload ID. The List Parts operation requires a
    #          multipart upload ID since parts are associated with a single upload.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working
    #             with Archives in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html">List Multipart Uploads
    #          </a> in the <i>Amazon Glacier Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMultipartUploadsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the maximum number of uploads returned in the response body. If this value
    #            is not specified, the List Uploads operation returns up to 50 uploads.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the upload at which the
    #            listing of uploads should begin. Get the marker value from a previous List Uploads
    #            response. You need only include the marker if you are continuing the pagination of results
    #            started in a previous List Uploads request.</p>
    #
    # @return [Types::ListMultipartUploadsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multipart_uploads(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     limit: 1,
    #     marker: 'marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMultipartUploadsOutput
    #   resp.data.uploads_list #=> Array<UploadListElement>
    #   resp.data.uploads_list[0] #=> Types::UploadListElement
    #   resp.data.uploads_list[0].multipart_upload_id #=> String
    #   resp.data.uploads_list[0].vault_arn #=> String
    #   resp.data.uploads_list[0].archive_description #=> String
    #   resp.data.uploads_list[0].part_size_in_bytes #=> Integer
    #   resp.data.uploads_list[0].creation_date #=> String
    #   resp.data.marker #=> String
    #
    def list_multipart_uploads(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMultipartUploadsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMultipartUploadsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMultipartUploads
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListMultipartUploads
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMultipartUploads,
        stubs: @stubs,
        params_class: Params::ListMultipartUploadsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_multipart_uploads
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists the parts of an archive that have been uploaded in a specific
    #          multipart upload. You can make this request at any time during an in-progress multipart
    #          upload before you complete the upload (see <a>CompleteMultipartUpload</a>. List
    #          Parts returns an error for completed uploads. The list returned in the List Parts response
    #          is sorted by part range. </p>
    #
    #          <p>The List Parts operation supports pagination. By default, this operation returns up
    #          to 50 uploaded parts in the response. You should always check the response for a
    #             <code>marker</code> at which to continue the list; if there are no more items the
    #             <code>marker</code> is <code>null</code>. To return a list of parts that begins at a
    #          specific part, set the <code>marker</code> request parameter to the value you obtained from
    #          a previous List Parts request. You can also limit the number of parts returned in the
    #          response by specifying the <code>limit</code> parameter in the request. </p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and the underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working
    #             with Archives in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html">List Parts</a> in the
    #             <i>Amazon Glacier Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPartsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string used for pagination. This value specifies the part at which the
    #            listing of parts should begin. Get the marker value from the response of a previous List
    #            Parts response. You need only include the marker if you are continuing the pagination of
    #            results started in a previous List Parts request.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of parts to be returned. The default limit is 50. The number of
    #            parts returned might be fewer than the specified limit, but the number of returned parts
    #            never exceeds the limit.</p>
    #
    # @return [Types::ListPartsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parts(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     upload_id: 'uploadId', # required
    #     marker: 'marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPartsOutput
    #   resp.data.multipart_upload_id #=> String
    #   resp.data.vault_arn #=> String
    #   resp.data.archive_description #=> String
    #   resp.data.part_size_in_bytes #=> Integer
    #   resp.data.creation_date #=> String
    #   resp.data.parts #=> Array<PartListElement>
    #   resp.data.parts[0] #=> Types::PartListElement
    #   resp.data.parts[0].range_in_bytes #=> String
    #   resp.data.parts[0].sha256_tree_hash #=> String
    #   resp.data.marker #=> String
    #
    def list_parts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPartsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPartsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListParts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListParts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListParts,
        stubs: @stubs,
        params_class: Params::ListPartsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_parts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists the provisioned capacity units for the specified AWS
    #          account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisionedCapacityInput}.
    #
    # @option params [String] :account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    #
    # @return [Types::ListProvisionedCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_capacity(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisionedCapacityOutput
    #   resp.data.provisioned_capacity_list #=> Array<ProvisionedCapacityDescription>
    #   resp.data.provisioned_capacity_list[0] #=> Types::ProvisionedCapacityDescription
    #   resp.data.provisioned_capacity_list[0].capacity_id #=> String
    #   resp.data.provisioned_capacity_list[0].start_date #=> String
    #   resp.data.provisioned_capacity_list[0].expiration_date #=> String
    #
    def list_provisioned_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisionedCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisionedCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisionedCapacity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListProvisionedCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisionedCapacity,
        stubs: @stubs,
        params_class: Params::ListProvisionedCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioned_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists all the tags attached to a vault. The operation returns an empty
    #          map if there are no tags. For more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier
    #          Resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @return [Types::ListTagsForVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForVaultOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListTagsForVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForVault,
        stubs: @stubs,
        params_class: Params::ListTagsForVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists all vaults owned by the calling user's account. The list
    #          returned in the response is ASCII-sorted by vault name.</p>
    #
    #          <p>By default, this operation returns up to 10 items. If there are more vaults to
    #          list, the response <code>marker</code> field contains the vault Amazon Resource Name (ARN)
    #          at which to continue the list with a new List Vaults request; otherwise, the
    #             <code>marker</code> field is <code>null</code>. To return a list of vaults that begins
    #          at a specific vault, set the <code>marker</code> request parameter to the vault ARN you
    #          obtained from a previous List Vaults request. You can also limit the number of vaults
    #          returned in the response by specifying the <code>limit</code> parameter in the request. </p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in
    #             Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html">List Vaults </a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListVaultsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [String] :marker
    #   <p>A string used for pagination. The marker specifies the vault ARN after which the
    #            listing of vaults should begin.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of vaults to be returned. The default limit is 10. The number of
    #            vaults returned might be fewer than the specified limit, but the number of returned vaults
    #            never exceeds the limit.</p>
    #
    # @return [Types::ListVaultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vaults(
    #     account_id: 'accountId', # required
    #     marker: 'marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVaultsOutput
    #   resp.data.vault_list #=> Array<DescribeVaultOutput>
    #   resp.data.vault_list[0] #=> Types::DescribeVaultOutput
    #   resp.data.vault_list[0].vault_arn #=> String
    #   resp.data.vault_list[0].vault_name #=> String
    #   resp.data.vault_list[0].creation_date #=> String
    #   resp.data.vault_list[0].last_inventory_date #=> String
    #   resp.data.vault_list[0].number_of_archives #=> Integer
    #   resp.data.vault_list[0].size_in_bytes #=> Integer
    #   resp.data.marker #=> String
    #
    def list_vaults(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVaultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVaultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVaults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListVaults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVaults,
        stubs: @stubs,
        params_class: Params::ListVaultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vaults
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation purchases a provisioned capacity unit for an AWS account. </p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseProvisionedCapacityInput}.
    #
    # @option params [String] :account_id
    #   <p>The AWS account ID of the account that owns the vault. You can either specify an AWS
    #            account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS
    #            account ID associated with the credentials used to sign the request. If you use an account
    #            ID, don't include any hyphens ('-') in the ID. </p>
    #
    # @return [Types::PurchaseProvisionedCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_provisioned_capacity(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseProvisionedCapacityOutput
    #   resp.data.capacity_id #=> String
    #
    def purchase_provisioned_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseProvisionedCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseProvisionedCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseProvisionedCapacity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PurchaseProvisionedCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseProvisionedCapacity,
        stubs: @stubs,
        params_class: Params::PurchaseProvisionedCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_provisioned_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation removes one or more tags from the set of tags attached to a vault. For
    #          more information about tags, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon S3 Glacier Resources</a>.
    #          This operation is idempotent. The operation will be successful, even if there are no tags
    #          attached to the vault. </p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromVaultInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
    #
    # @return [Types::RemoveTagsFromVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_vault(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     tag_keys: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromVaultOutput
    #
    def remove_tags_from_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::RemoveTagsFromVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromVault,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation sets and then enacts a data retrieval policy in the region specified
    #          in the PUT request. You can set one policy per region for an AWS account. The policy is
    #          enacted within a few minutes of a successful PUT operation.</p>
    #          <p>The set policy operation does not affect retrieval jobs that were in progress before
    #          the policy was enacted. For more information about data retrieval policies, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon
    #             Glacier Data Retrieval Policies</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetDataRetrievalPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS
    #            account ID associated with the credentials used to sign the request. You can either specify
    #            an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon
    #            Glacier uses the AWS account ID associated with the credentials used to sign the request.
    #            If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
    #
    # @option params [DataRetrievalPolicy] :policy
    #   <p>The data retrieval policy in JSON format.</p>
    #
    # @return [Types::SetDataRetrievalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_data_retrieval_policy(
    #     account_id: 'accountId', # required
    #     policy: {
    #       rules: [
    #         {
    #           strategy: 'Strategy',
    #           bytes_per_hour: 1
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDataRetrievalPolicyOutput
    #
    def set_data_retrieval_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDataRetrievalPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDataRetrievalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDataRetrievalPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::SetDataRetrievalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDataRetrievalPolicy,
        stubs: @stubs,
        params_class: Params::SetDataRetrievalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_data_retrieval_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation configures an access policy for a vault and will overwrite an existing
    #          policy. To configure a vault access policy, send a PUT request to the
    #             <code>access-policy</code> subresource of the vault. An access policy is specific to a
    #          vault and is also called a vault subresource. You can set one access policy per vault and
    #          the policy can be up to 20 KB in size. For more information about vault access policies,
    #          see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetVaultAccessPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [VaultAccessPolicy] :policy
    #   <p>The vault access policy as a JSON string.</p>
    #
    # @return [Types::SetVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_vault_access_policy(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     policy: {
    #       policy: 'Policy'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetVaultAccessPolicyOutput
    #
    def set_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetVaultAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::SetVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::SetVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation configures notifications that will be sent when specific events happen
    #          to a vault. By default, you don't get any notifications.</p>
    #
    #          <p>To configure vault notifications, send a PUT request to the
    #             <code>notification-configuration</code> subresource of the vault. The request should
    #          include a JSON document that provides an Amazon SNS topic and specific events for which you
    #          want Amazon S3 Glacier to send notifications to the topic.</p>
    #
    #          <p>Amazon SNS topics must grant permission to the vault to be allowed to publish
    #          notifications to the topic. You can configure a vault to publish a notification for the
    #          following vault events:</p>
    #
    #          <ul>
    #             <li>
    #                 <p>
    #                   <b>ArchiveRetrievalCompleted</b> This event occurs when a
    #                job that was initiated for an archive retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or
    #                "Failed". The notification sent to the SNS topic is the same output as returned from
    #                   <a>DescribeJob</a>. </p>
    #             </li>
    #             <li>
    #
    #                <p>
    #                   <b>InventoryRetrievalCompleted</b> This event occurs when a
    #                job that was initiated for an inventory retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or
    #                "Failed". The notification sent to the SNS topic is the same output as returned from
    #                   <a>DescribeJob</a>. </p>
    #             </li>
    #          </ul>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p>For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault
    #             Notifications in Amazon S3 Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html">Set Vault Notification
    #             Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetVaultNotificationsInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID.</p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [VaultNotificationConfig] :vault_notification_config
    #   <p>Provides options for specifying notification configuration.</p>
    #
    # @return [Types::SetVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_vault_notifications(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     vault_notification_config: {
    #       sns_topic: 'SNSTopic',
    #       events: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetVaultNotificationsOutput
    #
    def set_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetVaultNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::SetVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetVaultNotifications,
        stubs: @stubs,
        params_class: Params::SetVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation adds an archive to a vault. This is a synchronous operation, and for a
    #          successful upload, your data is durably persisted. Amazon S3 Glacier returns the archive ID in
    #          the <code>x-amz-archive-id</code> header of the response. </p>
    #
    #          <p>You must use the archive ID to access your data in Amazon S3 Glacier. After you upload
    #          an archive, you should save the archive ID returned so that you can retrieve or delete the
    #          archive later. Besides saving the archive ID, you can also index it and give it a friendly
    #          name to allow for better searching. You can also use the optional archive description field
    #          to specify how the archive is referred to in an external index of archives, such as you
    #          might create in Amazon DynamoDB. You can also get the vault inventory to obtain a list of
    #          archive IDs in a vault. For more information, see <a>InitiateJob</a>. </p>
    #
    #          <p>You must provide a SHA256 tree hash of the data you are uploading. For information
    #          about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing Checksums</a>. </p>
    #
    #          <p>You can optionally specify an archive description of up to 1,024 printable ASCII
    #          characters. You can get the archive description when you either retrieve the archive or get
    #          the vault inventory. For more information, see <a>InitiateJob</a>. Amazon
    #          Glacier does not interpret the description in any way. An archive description does not need
    #          to be unique. You cannot use the description to retrieve or sort the archive list. </p>
    #
    #          <p>Archives are immutable. After you upload an archive, you cannot edit the archive or
    #          its description.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html">Uploading an Archive in Amazon
    #             Glacier</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a> in the
    #             <i>Amazon Glacier Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::UploadArchiveInput}.
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :archive_description
    #   <p>The optional description of the archive you are uploading.</p>
    #
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    #
    # @option params [String] :body
    #   <p>The data to upload.</p>
    #
    # @return [Types::UploadArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_archive(
    #     vault_name: 'vaultName', # required
    #     account_id: 'accountId', # required
    #     archive_description: 'archiveDescription',
    #     checksum: 'checksum',
    #     body: 'body'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadArchiveOutput
    #   resp.data.location #=> String
    #   resp.data.checksum #=> String
    #   resp.data.archive_id #=> String
    #
    def upload_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadArchive
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::RequestTimeoutException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UploadArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadArchive,
        stubs: @stubs,
        params_class: Params::UploadArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation uploads a part of an archive. You can upload archive parts in any
    #          order. You can also upload them in parallel. You can upload up to 10,000 parts for a
    #          multipart upload.</p>
    #
    #          <p>Amazon Glacier rejects your upload part request if any of the following conditions is
    #          true:</p>
    #
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>SHA256 tree hash does not match</b>To ensure that part
    #                data is not corrupted in transmission, you compute a SHA256 tree hash of the part and
    #                include it in your request. Upon receiving the part data, Amazon S3 Glacier also
    #                computes a SHA256 tree hash. If these hash values don't match, the operation fails.
    #                For information about computing a SHA256 tree hash, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing
    #                   Checksums</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Part size does not match</b>The size of each part except
    #                the last must match the size specified in the corresponding <a>InitiateMultipartUpload</a> request. The size of the last part must be the
    #                same size as, or smaller than, the specified size.</p>
    #                <note>
    #                   <p>If you upload a part whose size is smaller than the part size you specified
    #                   in your initiate multipart upload request and that part is not the last part, then
    #                   the upload part request will succeed. However, the subsequent Complete Multipart
    #                   Upload request will fail.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Range does not align</b>The byte range value in the
    #                request does not align with the part size specified in the corresponding initiate
    #                request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0 to
    #                4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part
    #                ranges. However, if you set a range value of 2 MB to 6 MB, the range does not align
    #                with the part size and the upload will fail. </p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation is idempotent. If you upload the same part multiple times, the data
    #          included in the most recent request overwrites the previously uploaded data.</p>
    #
    #          <p>An AWS account has full permission to perform all operations (actions). However, AWS
    #          Identity and Access Management (IAM) users don't have any permissions by default. You must
    #          grant them explicit permission to perform specific actions. For more information, see
    #             <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using
    #             AWS Identity and Access Management (IAM)</a>.</p>
    #          <p> For conceptual information and underlying REST API, see <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in
    #             Parts (Multipart Upload)</a> and <a href="https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html">Upload Part </a> in the
    #             <i>Amazon Glacier Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UploadMultipartPartInput}.
    #
    # @option params [String] :account_id
    #   <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    #            vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    #            (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    #            credentials used to sign the request. If you use an account ID, do not include any hyphens
    #            ('-') in the ID. </p>
    #
    # @option params [String] :vault_name
    #   <p>The name of the vault.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID of the multipart upload.</p>
    #
    # @option params [String] :checksum
    #   <p>The SHA256 tree hash of the data being uploaded.</p>
    #
    # @option params [String] :range
    #   <p>Identifies the range of bytes in the assembled archive that will be uploaded in this
    #            part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.
    #            The format of this header follows RFC 2616. An example header is Content-Range:bytes
    #            0-4194303/*.</p>
    #
    # @option params [String] :body
    #   <p>The data to upload.</p>
    #
    # @return [Types::UploadMultipartPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_multipart_part(
    #     account_id: 'accountId', # required
    #     vault_name: 'vaultName', # required
    #     upload_id: 'uploadId', # required
    #     checksum: 'checksum',
    #     range: 'range',
    #     body: 'body'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadMultipartPartOutput
    #   resp.data.checksum #=> String
    #
    def upload_multipart_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadMultipartPartInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadMultipartPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadMultipartPart
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::RequestTimeoutException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UploadMultipartPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadMultipartPart,
        stubs: @stubs,
        params_class: Params::UploadMultipartPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_multipart_part
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

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      ::StringIO.new
    end
  end
end
