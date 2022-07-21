# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::QLDB
  # An API client for AmazonQLDB
  # See {#initialize} for a full list of supported configuration options
  # <p>The control plane for Amazon QLDB</p>
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
    def initialize(config = AWS::SDK::QLDB::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current
    #          status must be <code>ACTIVE</code>.</p>
    #          <p>You can't restart a stream after you cancel it. Canceled QLDB stream resources are
    #          subject to a 7-day retention period, so they are automatically deleted after this limit
    #          expires.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJournalKinesisStreamInput}.
    #
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    #
    # @option params [String] :stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to be
    #            canceled.</p>
    #
    # @return [Types::CancelJournalKinesisStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_journal_kinesis_stream(
    #     ledger_name: 'LedgerName', # required
    #     stream_id: 'StreamId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJournalKinesisStreamOutput
    #   resp.data.stream_id #=> String
    #
    def cancel_journal_kinesis_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJournalKinesisStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJournalKinesisStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJournalKinesisStream
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::CancelJournalKinesisStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJournalKinesisStream,
        stubs: @stubs,
        params_class: Params::CancelJournalKinesisStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_journal_kinesis_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new ledger in your Amazon Web Services account in the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLedgerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger that you want to create. The name must be unique among all of the
    #            ledgers in your Amazon Web Services account in the current Region.</p>
    #            <p>Naming constraints for ledger names are defined in <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a>
    #            in the <i>Amazon QLDB Developer Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    #
    # @option params [String] :permissions_mode
    #   <p>The permissions mode to assign to the ledger that you want to create. This parameter can
    #            have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>The flag that prevents a ledger from being deleted by any user. If not provided on
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>.</p>
    #
    # @option params [String] :kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: By default, use an Amazon Web Services owned KMS
    #                  key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified KMS key in your account that you create, own, and manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    #
    # @return [Types::CreateLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ledger(
    #     name: 'Name', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     permissions_mode: 'ALLOW_ALL', # required - accepts ["ALLOW_ALL", "STANDARD"]
    #     deletion_protection: false,
    #     kms_key: 'KmsKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLedgerOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.permissions_mode #=> String, one of ["ALLOW_ALL", "STANDARD"]
    #   resp.data.deletion_protection #=> Boolean
    #   resp.data.kms_key_arn #=> String
    #
    def create_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLedger
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLedger,
        stubs: @stubs,
        params_class: Params::CreateLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a ledger and all of its contents. This action is irreversible.</p>
    #          <p>If deletion protection is enabled, you must first disable it before you can delete the
    #       ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLedgerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger that you want to delete.</p>
    #
    # @return [Types::DeleteLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ledger(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLedgerOutput
    #
    def delete_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLedger
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::DeleteLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLedger,
        stubs: @stubs,
        params_class: Params::DeleteLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about a given Amazon QLDB journal stream. The output
    #          includes the Amazon Resource Name (ARN), stream name, current status, creation time, and
    #          the parameters of the original stream creation request.</p>
    #          <p>This action does not return any expired journal streams. For more information, see
    #             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJournalKinesisStreamInput}.
    #
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    #
    # @option params [String] :stream_id
    #   <p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to
    #            describe.</p>
    #
    # @return [Types::DescribeJournalKinesisStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_journal_kinesis_stream(
    #     ledger_name: 'LedgerName', # required
    #     stream_id: 'StreamId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJournalKinesisStreamOutput
    #   resp.data.stream #=> Types::JournalKinesisStreamDescription
    #   resp.data.stream.ledger_name #=> String
    #   resp.data.stream.creation_time #=> Time
    #   resp.data.stream.inclusive_start_time #=> Time
    #   resp.data.stream.exclusive_end_time #=> Time
    #   resp.data.stream.role_arn #=> String
    #   resp.data.stream.stream_id #=> String
    #   resp.data.stream.arn #=> String
    #   resp.data.stream.status #=> String, one of ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"]
    #   resp.data.stream.kinesis_configuration #=> Types::KinesisConfiguration
    #   resp.data.stream.kinesis_configuration.stream_arn #=> String
    #   resp.data.stream.kinesis_configuration.aggregation_enabled #=> Boolean
    #   resp.data.stream.error_cause #=> String, one of ["KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"]
    #   resp.data.stream.stream_name #=> String
    #
    def describe_journal_kinesis_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJournalKinesisStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJournalKinesisStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJournalKinesisStream
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::DescribeJournalKinesisStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJournalKinesisStream,
        stubs: @stubs,
        params_class: Params::DescribeJournalKinesisStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_journal_kinesis_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a journal export job, including the ledger name, export ID,
    #          creation time, current status, and the parameters of the original export creation
    #          request.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    #          <p>If the export job with the given <code>ExportId</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJournalS3ExportInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [String] :export_id
    #   <p>The UUID (represented in Base62-encoded text) of the journal export job to
    #            describe.</p>
    #
    # @return [Types::DescribeJournalS3ExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_journal_s3_export(
    #     name: 'Name', # required
    #     export_id: 'ExportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJournalS3ExportOutput
    #   resp.data.export_description #=> Types::JournalS3ExportDescription
    #   resp.data.export_description.ledger_name #=> String
    #   resp.data.export_description.export_id #=> String
    #   resp.data.export_description.export_creation_time #=> Time
    #   resp.data.export_description.status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLED"]
    #   resp.data.export_description.inclusive_start_time #=> Time
    #   resp.data.export_description.exclusive_end_time #=> Time
    #   resp.data.export_description.s3_export_configuration #=> Types::S3ExportConfiguration
    #   resp.data.export_description.s3_export_configuration.bucket #=> String
    #   resp.data.export_description.s3_export_configuration.prefix #=> String
    #   resp.data.export_description.s3_export_configuration.encryption_configuration #=> Types::S3EncryptionConfiguration
    #   resp.data.export_description.s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"]
    #   resp.data.export_description.s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.data.export_description.role_arn #=> String
    #   resp.data.export_description.output_format #=> String, one of ["ION_BINARY", "ION_TEXT", "JSON"]
    #
    def describe_journal_s3_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJournalS3ExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJournalS3ExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJournalS3Export
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeJournalS3Export
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJournalS3Export,
        stubs: @stubs,
        params_class: Params::DescribeJournalS3ExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_journal_s3_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a ledger, including its state, permissions mode, encryption at
    #          rest settings, and when it was created.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLedgerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger that you want to describe.</p>
    #
    # @return [Types::DescribeLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ledger(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLedgerOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.permissions_mode #=> String, one of ["ALLOW_ALL", "STANDARD"]
    #   resp.data.deletion_protection #=> Boolean
    #   resp.data.encryption_description #=> Types::LedgerEncryptionDescription
    #   resp.data.encryption_description.kms_key_arn #=> String
    #   resp.data.encryption_description.encryption_status #=> String, one of ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"]
    #   resp.data.encryption_description.inaccessible_kms_key_date_time #=> Time
    #
    def describe_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLedger
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLedger,
        stubs: @stubs,
        params_class: Params::DescribeLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports journal contents within a date and time range from a ledger into a specified
    #          Amazon Simple Storage Service (Amazon S3) bucket. A journal export job can write the data objects in either the text
    #          or binary representation of Amazon Ion format, or in <i>JSON Lines</i> text
    #          format.</p>
    #          <p>In JSON Lines format, each journal block in the exported data object is a valid JSON
    #          object that is delimited by a newline. You can use this format to easily integrate JSON
    #          exports with analytics tools such as Glue and Amazon Athena
    #          because these services can parse newline-delimited JSON automatically. For more information
    #          about the format, see <a href="https://jsonlines.org/">JSON Lines</a>.</p>
    #          <p>If the ledger with the given <code>Name</code> doesn't exist, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the ledger with the given <code>Name</code> is in <code>CREATING</code> status, then
    #          throws <code>ResourcePreconditionNotMetException</code>.</p>
    #          <p>You can initiate up to two concurrent journal export requests for each ledger. Beyond
    #          this limit, journal export requests throw <code>LimitExceededException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportJournalToS3Input}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [Time] :inclusive_start_time
    #   <p>The inclusive start date and time for the range of journal contents to export.</p>
    #            <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time
    #            format and in Universal Coordinated Time (UTC). For example:
    #               <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    #
    # @option params [Time] :exclusive_end_time
    #   <p>The exclusive end date and time for the range of journal contents to export.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and
    #            time.</p>
    #
    # @option params [S3ExportConfiguration] :s3_export_configuration
    #   <p>The configuration settings of the Amazon S3 bucket destination for your export
    #            request.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal export job to do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #               </li>
    #               <li>
    #                  <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side
    #                  encryption of your exported data.</p>
    #               </li>
    #            </ul>
    #            <p>To pass a role to QLDB when requesting a journal export, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal export requests.</p>
    #
    # @option params [String] :output_format
    #   <p>The output format of your exported journal data. If this parameter is not specified, the
    #            exported data defaults to <code>ION_TEXT</code> format.</p>
    #
    # @return [Types::ExportJournalToS3Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_journal_to_s3(
    #     name: 'Name', # required
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now, # required
    #     s3_export_configuration: {
    #       bucket: 'Bucket', # required
    #       prefix: 'Prefix', # required
    #       encryption_configuration: {
    #         object_encryption_type: 'SSE_KMS', # required - accepts ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"]
    #         kms_key_arn: 'KmsKeyArn'
    #       } # required
    #     }, # required
    #     role_arn: 'RoleArn', # required
    #     output_format: 'ION_BINARY' # accepts ["ION_BINARY", "ION_TEXT", "JSON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportJournalToS3Output
    #   resp.data.export_id #=> String
    #
    def export_journal_to_s3(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportJournalToS3Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportJournalToS3Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportJournalToS3
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::ExportJournalToS3
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportJournalToS3,
        stubs: @stubs,
        params_class: Params::ExportJournalToS3Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_journal_to_s3
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a block object at a specified address in a journal. Also returns a proof of the
    #          specified block for verification if <code>DigestTipAddress</code> is provided.</p>
    #          <p>For information about the data contents in a block, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html">Journal contents</a> in the
    #             <i>Amazon QLDB Developer Guide</i>.</p>
    #          <p>If the specified ledger doesn't exist or is in <code>DELETING</code> status, then throws
    #             <code>ResourceNotFoundException</code>.</p>
    #          <p>If the specified ledger is in <code>CREATING</code> status, then throws
    #             <code>ResourcePreconditionNotMetException</code>.</p>
    #          <p>If no block exists with the specified address, then throws
    #             <code>InvalidParameterException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBlockInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [ValueHolder] :block_address
    #   <p>The location of the block that you want to request. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    #
    # @option params [ValueHolder] :digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    #
    # @return [Types::GetBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_block(
    #     name: 'Name', # required
    #     block_address: {
    #       ion_text: 'IonText'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBlockOutput
    #   resp.data.block #=> Types::ValueHolder
    #   resp.data.block.ion_text #=> String
    #   resp.data.proof #=> Types::ValueHolder
    #
    def get_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::GetBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBlock,
        stubs: @stubs,
        params_class: Params::GetBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the digest of a ledger at the latest committed block in the journal. The
    #          response includes a 256-bit hash value and a block address.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDigestInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @return [Types::GetDigestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_digest(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDigestOutput
    #   resp.data.digest #=> String
    #   resp.data.digest_tip_address #=> Types::ValueHolder
    #   resp.data.digest_tip_address.ion_text #=> String
    #
    def get_digest(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDigestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDigestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDigest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::GetDigest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDigest,
        stubs: @stubs,
        params_class: Params::GetDigestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_digest
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a revision data object for a specified document ID and block address. Also
    #          returns a proof of the specified revision for verification if <code>DigestTipAddress</code>
    #          is provided.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRevisionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [ValueHolder] :block_address
    #   <p>The block location of the document revision to be verified. An address is an Amazon Ion
    #            structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}</code>.</p>
    #
    # @option params [String] :document_id
    #   <p>The UUID (represented in Base62-encoded text) of the document to be verified.</p>
    #
    # @option params [ValueHolder] :digest_tip_address
    #   <p>The latest block location covered by the digest for which to request a proof. An address
    #            is an Amazon Ion structure that has two fields: <code>strandId</code> and
    #               <code>sequenceNo</code>.</p>
    #            <p>For example: <code>{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}</code>.</p>
    #
    # @return [Types::GetRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revision(
    #     name: 'Name', # required
    #     block_address: {
    #       ion_text: 'IonText'
    #     }, # required
    #     document_id: 'DocumentId', # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRevisionOutput
    #   resp.data.proof #=> Types::ValueHolder
    #   resp.data.proof.ion_text #=> String
    #   resp.data.revision #=> Types::ValueHolder
    #
    def get_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::GetRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRevision,
        stubs: @stubs,
        params_class: Params::GetRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The
    #          output of each stream descriptor includes the same details that are returned by
    #             <code>DescribeJournalKinesisStream</code>.</p>
    #          <p>This action does not return any expired journal streams. For more information, see
    #             <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration">Expiration for terminal streams</a> in the <i>Amazon QLDB Developer
    #             Guide</i>.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items. It is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalKinesisStreamsForLedger</code>
    #          multiple times.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJournalKinesisStreamsForLedgerInput}.
    #
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input
    #            here.</p>
    #
    # @return [Types::ListJournalKinesisStreamsForLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_kinesis_streams_for_ledger(
    #     ledger_name: 'LedgerName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJournalKinesisStreamsForLedgerOutput
    #   resp.data.streams #=> Array<JournalKinesisStreamDescription>
    #   resp.data.streams[0] #=> Types::JournalKinesisStreamDescription
    #   resp.data.streams[0].ledger_name #=> String
    #   resp.data.streams[0].creation_time #=> Time
    #   resp.data.streams[0].inclusive_start_time #=> Time
    #   resp.data.streams[0].exclusive_end_time #=> Time
    #   resp.data.streams[0].role_arn #=> String
    #   resp.data.streams[0].stream_id #=> String
    #   resp.data.streams[0].arn #=> String
    #   resp.data.streams[0].status #=> String, one of ["ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"]
    #   resp.data.streams[0].kinesis_configuration #=> Types::KinesisConfiguration
    #   resp.data.streams[0].kinesis_configuration.stream_arn #=> String
    #   resp.data.streams[0].kinesis_configuration.aggregation_enabled #=> Boolean
    #   resp.data.streams[0].error_cause #=> String, one of ["KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"]
    #   resp.data.streams[0].stream_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_journal_kinesis_streams_for_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJournalKinesisStreamsForLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJournalKinesisStreamsForLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJournalKinesisStreamsForLedger
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::ListJournalKinesisStreamsForLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJournalKinesisStreamsForLedger,
        stubs: @stubs,
        params_class: Params::ListJournalKinesisStreamsForLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_journal_kinesis_streams_for_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of journal export job descriptions for all ledgers that are associated
    #          with the current Amazon Web Services account and Region.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalS3Exports</code> multiple
    #          times.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJournalS3ExportsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single <code>ListJournalS3Exports</code>
    #            request. (The actual number of results returned might be fewer.)</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3Exports</code> call, then you should use that value as input
    #            here.</p>
    #
    # @return [Types::ListJournalS3ExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJournalS3ExportsOutput
    #   resp.data.journal_s3_exports #=> Array<JournalS3ExportDescription>
    #   resp.data.journal_s3_exports[0] #=> Types::JournalS3ExportDescription
    #   resp.data.journal_s3_exports[0].ledger_name #=> String
    #   resp.data.journal_s3_exports[0].export_id #=> String
    #   resp.data.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.data.journal_s3_exports[0].status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLED"]
    #   resp.data.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.data.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.data.journal_s3_exports[0].s3_export_configuration #=> Types::S3ExportConfiguration
    #   resp.data.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.data.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration #=> Types::S3EncryptionConfiguration
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"]
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.data.journal_s3_exports[0].role_arn #=> String
    #   resp.data.journal_s3_exports[0].output_format #=> String, one of ["ION_BINARY", "ION_TEXT", "JSON"]
    #   resp.data.next_token #=> String
    #
    def list_journal_s3_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJournalS3ExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJournalS3ExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJournalS3Exports
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListJournalS3Exports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJournalS3Exports,
        stubs: @stubs,
        params_class: Params::ListJournalS3ExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_journal_s3_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of journal export job descriptions for a specified ledger.</p>
    #          <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that
    #          you can retrieve all the items by calling <code>ListJournalS3ExportsForLedger</code>
    #          multiple times.</p>
    #          <p>This action does not return any expired export jobs. For more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export job expiration</a> in the <i>Amazon QLDB Developer
    #          Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJournalS3ExportsForLedgerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single
    #               <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results
    #            returned might be fewer.)</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input
    #            here.</p>
    #
    # @return [Types::ListJournalS3ExportsForLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports_for_ledger(
    #     name: 'Name', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJournalS3ExportsForLedgerOutput
    #   resp.data.journal_s3_exports #=> Array<JournalS3ExportDescription>
    #   resp.data.journal_s3_exports[0] #=> Types::JournalS3ExportDescription
    #   resp.data.journal_s3_exports[0].ledger_name #=> String
    #   resp.data.journal_s3_exports[0].export_id #=> String
    #   resp.data.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.data.journal_s3_exports[0].status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLED"]
    #   resp.data.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.data.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.data.journal_s3_exports[0].s3_export_configuration #=> Types::S3ExportConfiguration
    #   resp.data.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.data.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration #=> Types::S3EncryptionConfiguration
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of ["SSE_KMS", "SSE_S3", "NO_ENCRYPTION"]
    #   resp.data.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.data.journal_s3_exports[0].role_arn #=> String
    #   resp.data.journal_s3_exports[0].output_format #=> String, one of ["ION_BINARY", "ION_TEXT", "JSON"]
    #   resp.data.next_token #=> String
    #
    def list_journal_s3_exports_for_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJournalS3ExportsForLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJournalS3ExportsForLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJournalS3ExportsForLedger
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListJournalS3ExportsForLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJournalS3ExportsForLedger,
        stubs: @stubs,
        params_class: Params::ListJournalS3ExportsForLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_journal_s3_exports_for_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of ledger summaries that are associated with the current Amazon Web Services account
    #          and Region.</p>
    #          <p>This action returns a maximum of 100 items and is paginated so that you can
    #          retrieve all the items by calling <code>ListLedgers</code> multiple times.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLedgersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single <code>ListLedgers</code> request.
    #            (The actual number of results returned might be fewer.)</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token, indicating that you want to retrieve the next page of results. If
    #            you received a value for <code>NextToken</code> in the response from a previous
    #               <code>ListLedgers</code> call, then you should use that value as input here.</p>
    #
    # @return [Types::ListLedgersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ledgers(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLedgersOutput
    #   resp.data.ledgers #=> Array<LedgerSummary>
    #   resp.data.ledgers[0] #=> Types::LedgerSummary
    #   resp.data.ledgers[0].name #=> String
    #   resp.data.ledgers[0].state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.ledgers[0].creation_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_ledgers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLedgersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLedgersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLedgers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListLedgers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLedgers,
        stubs: @stubs,
        params_class: Params::ListLedgersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ledgers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all tags for a specified Amazon QLDB resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for which to list the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
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

    # <p>Creates a journal stream for a given Amazon QLDB ledger. The stream captures every
    #          document revision that is committed to the ledger's journal and delivers the data to a
    #          specified Amazon Kinesis Data Streams resource.</p>
    #
    # @param [Hash] params
    #   See {Types::StreamJournalToKinesisInput}.
    #
    # @option params [String] :ledger_name
    #   <p>The name of the ledger.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a
    #            journal stream to write data records to a Kinesis Data Streams resource.</p>
    #            <p>To pass a role to QLDB when requesting a journal stream, you must have permissions to
    #            perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for
    #            all journal stream requests.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are
    #            case sensitive. Tag values are case sensitive and can be null.</p>
    #
    # @option params [Time] :inclusive_start_time
    #   <p>The inclusive start date and time from which to start streaming journal data. This
    #            parameter must be in <code>ISO 8601</code> date and time format and in Universal
    #            Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code>.</p>
    #            <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before
    #               <code>ExclusiveEndTime</code>.</p>
    #            <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's
    #               <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's
    #               <code>CreationDateTime</code>.</p>
    #
    # @option params [Time] :exclusive_end_time
    #   <p>The exclusive date and time that specifies when the stream ends. If you don't define
    #            this parameter, the stream runs indefinitely until you cancel it.</p>
    #            <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format
    #            and in Universal Coordinated Time (UTC). For example:
    #            <code>2019-06-13T21:36:34Z</code>.</p>
    #
    # @option params [KinesisConfiguration] :kinesis_configuration
    #   <p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>
    #
    # @option params [String] :stream_name
    #   <p>The name that you want to assign to the QLDB journal stream. User-defined names can
    #            help identify and indicate the purpose of a stream.</p>
    #            <p>Your stream name must be unique among other <i>active</i> streams for a
    #            given ledger. Stream names have the same naming constraints as ledger names, as defined in
    #               <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer
    #            Guide</i>.</p>
    #
    # @return [Types::StreamJournalToKinesisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stream_journal_to_kinesis(
    #     ledger_name: 'LedgerName', # required
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now,
    #     kinesis_configuration: {
    #       stream_arn: 'StreamArn', # required
    #       aggregation_enabled: false
    #     }, # required
    #     stream_name: 'StreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StreamJournalToKinesisOutput
    #   resp.data.stream_id #=> String
    #
    def stream_journal_to_kinesis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StreamJournalToKinesisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StreamJournalToKinesisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StreamJournalToKinesis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ResourcePreconditionNotMetException]),
        data_parser: Parsers::StreamJournalToKinesis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StreamJournalToKinesis,
        stubs: @stubs,
        params_class: Params::StreamJournalToKinesisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stream_journal_to_kinesis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to a specified Amazon QLDB resource.</p>
    #          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a
    #          resource, your request fails and returns an error.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case
    #            sensitive. If you specify a key that already exists for the resource, your request fails
    #            and returns an error. Tag values are case sensitive and can be null.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
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

    # <p>Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50
    #          tag keys to remove.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) from which to remove the tags. For example:</p>
    #            <p>
    #               <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    #            </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
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

    # <p>Updates properties on a ledger.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLedgerInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [Boolean] :deletion_protection
    #   <p>The flag that prevents a ledger from being deleted by any user. If not provided on
    #         ledger creation, this feature is enabled (<code>true</code>) by default.</p>
    #            <p>If deletion protection is enabled, you must first disable it before you can delete the
    #         ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>.</p>
    #
    # @option params [String] :kms_key
    #   <p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For
    #            more information, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption at rest</a> in
    #            the <i>Amazon QLDB Developer Guide</i>.</p>
    #            <p>Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services
    #                  on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Undefined</b>: Make no changes to the KMS key of the
    #                  ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>A valid symmetric customer managed KMS key</b>: Use
    #                  the specified KMS key in your account that you create, own, and manage.</p>
    #                  <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer
    #                     Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name
    #            (ARN), alias name, or alias ARN. When using an alias name, prefix it with
    #               <code>"alias/"</code>. To specify a key in a different Amazon Web Services account, you must use the key
    #            ARN or alias ARN.</p>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a> in
    #            the <i>Key Management Service Developer Guide</i>.</p>
    #
    # @return [Types::UpdateLedgerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ledger(
    #     name: 'Name', # required
    #     deletion_protection: false,
    #     kms_key: 'KmsKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLedgerOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.state #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.deletion_protection #=> Boolean
    #   resp.data.encryption_description #=> Types::LedgerEncryptionDescription
    #   resp.data.encryption_description.kms_key_arn #=> String
    #   resp.data.encryption_description.encryption_status #=> String, one of ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"]
    #   resp.data.encryption_description.inaccessible_kms_key_date_time #=> Time
    #
    def update_ledger(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLedgerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLedgerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLedger
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::UpdateLedger
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLedger,
        stubs: @stubs,
        params_class: Params::UpdateLedgerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ledger
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the permissions mode of a ledger.</p>
    #          <important>
    #             <p>Before you switch to the <code>STANDARD</code> permissions mode, you must first
    #             create all required IAM policies and table tags to avoid disruption to your users. To
    #             learn more, see <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating">Migrating to the standard permissions mode</a> in the <i>Amazon QLDB
    #                Developer Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateLedgerPermissionsModeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ledger.</p>
    #
    # @option params [String] :permissions_mode
    #   <p>The permissions mode to assign to the ledger. This parameter can have one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with
    #                  API-level granularity for ledgers.</p>
    #                  <p>This mode allows users who have the <code>SendCommand</code> API permission for
    #                  this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables
    #                  in the specified ledger. This mode disregards any table-level or command-level IAM
    #                  permissions policies that you create for the ledger.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that
    #                  enables access control with finer granularity for ledgers, tables, and PartiQL
    #                  commands.</p>
    #                  <p>By default, this mode denies all user requests to run any PartiQL commands on any
    #                  tables in this ledger. To allow PartiQL commands to run, you must create IAM
    #                  permissions policies for specific table resources and PartiQL actions, in addition to
    #                  the <code>SendCommand</code> API permission for the ledger. For information, see
    #                     <a href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
    #                     started with the standard permissions mode</a> in the <i>Amazon QLDB
    #                     Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize
    #               the security of your ledger data.</p>
    #            </note>
    #
    # @return [Types::UpdateLedgerPermissionsModeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ledger_permissions_mode(
    #     name: 'Name', # required
    #     permissions_mode: 'ALLOW_ALL' # required - accepts ["ALLOW_ALL", "STANDARD"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLedgerPermissionsModeOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.permissions_mode #=> String, one of ["ALLOW_ALL", "STANDARD"]
    #
    def update_ledger_permissions_mode(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLedgerPermissionsModeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLedgerPermissionsModeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLedgerPermissionsMode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::UpdateLedgerPermissionsMode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLedgerPermissionsMode,
        stubs: @stubs,
        params_class: Params::UpdateLedgerPermissionsModeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ledger_permissions_mode
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
