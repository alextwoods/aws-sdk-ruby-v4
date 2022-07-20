# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Backup
  # An API client for CryoControllerUserManager
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Backup</fullname>
  #          <p>Backup is a unified backup service designed to protect Amazon Web Services
  #          services and their associated data. Backup simplifies the creation, migration,
  #          restoration, and deletion of backups, while also providing reporting and
  #          auditing.</p>
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
    def initialize(config = AWS::SDK::Backup::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a backup plan using a backup plan name and backup rules. A backup plan is a
    #          document that contains information that Backup uses to schedule tasks that
    #          create recovery points for resources.</p>
    #          <p>If you call <code>CreateBackupPlan</code> with a plan that already exists, you receive
    #          an <code>AlreadyExistsException</code> exception.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupPlanInput}.
    #
    # @option params [BackupPlanInput] :backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    # @option params [Hash<String, String>] :backup_plan_tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources that
    #            you create. Each tag is a key-value pair. The specified tags are assigned to all backups
    #            created with this plan.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>Identifies the request and allows failed requests to be retried without the risk of
    #            running the operation twice. If the request includes a <code>CreatorRequestId</code> that
    #            matches an existing backup plan, that plan is returned. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    # @return [Types::CreateBackupPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_plan(
    #     backup_plan: {
    #       backup_plan_name: 'BackupPlanName', # required
    #       rules: [
    #         {
    #           rule_name: 'RuleName', # required
    #           target_backup_vault_name: 'TargetBackupVaultName', # required
    #           schedule_expression: 'ScheduleExpression',
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1
    #           },
    #           recovery_point_tags: {
    #             'key' => 'value'
    #           },
    #           copy_actions: [
    #             {
    #               destination_backup_vault_arn: 'DestinationBackupVaultArn' # required
    #             }
    #           ],
    #           enable_continuous_backup: false
    #         }
    #       ], # required
    #       advanced_backup_settings: [
    #         {
    #           resource_type: 'ResourceType',
    #           backup_options: {
    #             'key' => 'value'
    #           }
    #         }
    #       ]
    #     }, # required
    #     creator_request_id: 'CreatorRequestId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackupPlanOutput
    #   resp.data.backup_plan_id #=> String
    #   resp.data.backup_plan_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.version_id #=> String
    #   resp.data.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.advanced_backup_settings[0].resource_type #=> String
    #   resp.data.advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def create_backup_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackupPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateBackupPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackupPlan,
        stubs: @stubs,
        params_class: Params::CreateBackupPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a JSON document that specifies a set of resources to assign to a backup plan.
    #          For examples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json">Assigning resources programmatically</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupSelectionInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies the backup plan to be associated with the selection of
    #            resources.</p>
    #
    # @option params [BackupSelection] :backup_selection
    #   <p>Specifies the body of a request to assign a set of resources to a backup plan.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    # @return [Types::CreateBackupSelectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_selection(
    #     backup_plan_id: 'BackupPlanId', # required
    #     backup_selection: {
    #       selection_name: 'SelectionName', # required
    #       iam_role_arn: 'IamRoleArn', # required
    #       resources: [
    #         'member'
    #       ],
    #       list_of_tags: [
    #         {
    #           condition_type: 'STRINGEQUALS', # required - accepts ["STRINGEQUALS"]
    #           condition_key: 'ConditionKey', # required
    #           condition_value: 'ConditionValue' # required
    #         }
    #       ],
    #       conditions: {
    #         string_equals: [
    #           {
    #             condition_key: 'ConditionKey',
    #             condition_value: 'ConditionValue'
    #           }
    #         ],
    #       }
    #     }, # required
    #     creator_request_id: 'CreatorRequestId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackupSelectionOutput
    #   resp.data.selection_id #=> String
    #   resp.data.backup_plan_id #=> String
    #   resp.data.creation_date #=> Time
    #
    def create_backup_selection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupSelectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupSelectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackupSelection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateBackupSelection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackupSelection,
        stubs: @stubs,
        params_class: Params::CreateBackupSelectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup_selection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a logical container where backups are stored. A <code>CreateBackupVault</code>
    #          request includes a name, optionally one or more resource tags, an encryption key, and a
    #          request ID.</p>
    #          <note>
    #             <p>Do not include sensitive data, such as passport numbers, in the name of a backup
    #             vault.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupVaultInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of letters, numbers, and hyphens.</p>
    #
    # @option params [Hash<String, String>] :backup_vault_tags
    #   <p>Metadata that you can assign to help organize the resources that you create. Each tag is
    #            a key-value pair.</p>
    #
    # @option params [String] :encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    # @return [Types::CreateBackupVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup_vault(
    #     backup_vault_name: 'BackupVaultName', # required
    #     backup_vault_tags: {
    #       'key' => 'value'
    #     },
    #     encryption_key_arn: 'EncryptionKeyArn',
    #     creator_request_id: 'CreatorRequestId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackupVaultOutput
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.creation_date #=> Time
    #
    def create_backup_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackupVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateBackupVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackupVault,
        stubs: @stubs,
        params_class: Params::CreateBackupVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a framework with one or more controls. A framework is a collection of controls
    #          that you can use to evaluate your backup practices. By using pre-built customizable
    #          controls to define your policies, you can evaluate whether your backup practices comply
    #          with your policies and which resources are not yet in compliance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFrameworkInput}.
    #
    # @option params [String] :framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #
    # @option params [String] :framework_description
    #   <p>An optional description of the framework with a maximum of 1,024 characters.</p>
    #
    # @option params [Array<FrameworkControl>] :framework_controls
    #   <p>A list of the controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @option params [Hash<String, String>] :framework_tags
    #   <p>Metadata that you can assign to help organize the frameworks that you create. Each tag
    #            is a key-value pair.</p>
    #
    # @return [Types::CreateFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_framework(
    #     framework_name: 'FrameworkName', # required
    #     framework_description: 'FrameworkDescription',
    #     framework_controls: [
    #       {
    #         control_name: 'ControlName', # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: 'ParameterName',
    #             parameter_value: 'ParameterValue'
    #           }
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: [
    #             'member'
    #           ],
    #           compliance_resource_types: [
    #             'member'
    #           ],
    #           tags: {
    #             'key' => 'value'
    #           }
    #         }
    #       }
    #     ], # required
    #     idempotency_token: 'IdempotencyToken',
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFrameworkOutput
    #   resp.data.framework_name #=> String
    #   resp.data.framework_arn #=> String
    #
    def create_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFrameworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFramework,
        stubs: @stubs,
        params_class: Params::CreateFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a report plan. A report plan is a document that contains information about the
    #          contents of the report and where Backup will deliver it.</p>
    #          <p>If you call <code>CreateReportPlan</code> with a plan that already exists, you receive
    #          an <code>AlreadyExistsException</code> exception.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReportPlanInput}.
    #
    # @option params [String] :report_plan_name
    #   <p>The unique name of the report plan. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #
    # @option params [String] :report_plan_description
    #   <p>An optional description of the report plan with a maximum of 1,024 characters.</p>
    #
    # @option params [ReportDeliveryChannel] :report_delivery_channel
    #   <p>A structure that contains information about where and how to deliver your reports,
    #            specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #            reports.</p>
    #
    # @option params [ReportSetting] :report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #
    # @option params [Hash<String, String>] :report_plan_tags
    #   <p>Metadata that you can assign to help organize the report plans that you create. Each tag
    #            is a key-value pair.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @return [Types::CreateReportPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report_plan(
    #     report_plan_name: 'ReportPlanName', # required
    #     report_plan_description: 'ReportPlanDescription',
    #     report_delivery_channel: {
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_key_prefix: 'S3KeyPrefix',
    #       formats: [
    #         'member'
    #       ]
    #     }, # required
    #     report_setting: {
    #       report_template: 'ReportTemplate', # required
    #       framework_arns: [
    #         'member'
    #       ],
    #       number_of_frameworks: 1
    #     }, # required
    #     report_plan_tags: {
    #       'key' => 'value'
    #     },
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReportPlanOutput
    #   resp.data.report_plan_name #=> String
    #   resp.data.report_plan_arn #=> String
    #   resp.data.creation_time #=> Time
    #
    def create_report_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReportPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReportPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReportPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateReportPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReportPlan,
        stubs: @stubs,
        params_class: Params::CreateReportPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_report_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a backup plan. A backup plan can only be deleted after all associated selections
    #          of resources have been deleted. Deleting a backup plan deletes the current version of a
    #          backup plan. Previous versions, if any, will still exist.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupPlanInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @return [Types::DeleteBackupPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_plan(
    #     backup_plan_id: 'BackupPlanId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupPlanOutput
    #   resp.data.backup_plan_id #=> String
    #   resp.data.backup_plan_arn #=> String
    #   resp.data.deletion_date #=> Time
    #   resp.data.version_id #=> String
    #
    def delete_backup_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteBackupPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupPlan,
        stubs: @stubs,
        params_class: Params::DeleteBackupPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the resource selection associated with a backup plan that is specified by the
    #             <code>SelectionId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupSelectionInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [String] :selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    # @return [Types::DeleteBackupSelectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_selection(
    #     backup_plan_id: 'BackupPlanId', # required
    #     selection_id: 'SelectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupSelectionOutput
    #
    def delete_backup_selection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupSelectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupSelectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupSelection
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
        data_parser: Parsers::DeleteBackupSelection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupSelection,
        stubs: @stubs,
        params_class: Params::DeleteBackupSelectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_selection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the backup vault identified by its name. A vault can be deleted only if it is
    #          empty.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupVaultInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @return [Types::DeleteBackupVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupVaultOutput
    #
    def delete_backup_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupVault
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteBackupVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupVault,
        stubs: @stubs,
        params_class: Params::DeleteBackupVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the policy document that manages permissions on a backup vault.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupVaultAccessPolicyInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @return [Types::DeleteBackupVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_access_policy(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupVaultAccessPolicyOutput
    #
    def delete_backup_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupVaultAccessPolicy
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
        data_parser: Parsers::DeleteBackupVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::DeleteBackupVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes Backup Vault Lock from a backup vault specified by a backup vault
    #          name.</p>
    #          <p>If the Vault Lock configuration is immutable, then you cannot delete Vault Lock using
    #          API operations, and you will receive an <code>InvalidRequestException</code> if you attempt
    #          to do so. For more information, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html">Vault Lock</a> in the
    #                <i>Backup Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupVaultLockConfigurationInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of the backup vault from which to delete Backup Vault Lock.</p>
    #
    # @return [Types::DeleteBackupVaultLockConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_lock_configuration(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupVaultLockConfigurationOutput
    #
    def delete_backup_vault_lock_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupVaultLockConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupVaultLockConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupVaultLockConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteBackupVaultLockConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupVaultLockConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteBackupVaultLockConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_vault_lock_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes event notifications for the specified backup vault.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupVaultNotificationsInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    # @return [Types::DeleteBackupVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup_vault_notifications(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupVaultNotificationsOutput
    #
    def delete_backup_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackupVaultNotifications
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
        data_parser: Parsers::DeleteBackupVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackupVaultNotifications,
        stubs: @stubs,
        params_class: Params::DeleteBackupVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the framework specified by a framework name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFrameworkInput}.
    #
    # @option params [String] :framework_name
    #   <p>The unique name of a framework.</p>
    #
    # @return [Types::DeleteFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_framework(
    #     framework_name: 'FrameworkName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFrameworkOutput
    #
    def delete_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFrameworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFramework,
        stubs: @stubs,
        params_class: Params::DeleteFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the recovery point specified by a recovery point ID.</p>
    #          <p>If the recovery point ID belongs to a continuous backup, calling this endpoint deletes
    #          the existing continuous backup and stops future continuous backup.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecoveryPointInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    # @return [Types::DeleteRecoveryPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_point(
    #     backup_vault_name: 'BackupVaultName', # required
    #     recovery_point_arn: 'RecoveryPointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecoveryPointOutput
    #
    def delete_recovery_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecoveryPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecoveryPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecoveryPoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::InvalidResourceStateException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteRecoveryPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecoveryPoint,
        stubs: @stubs,
        params_class: Params::DeleteRecoveryPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recovery_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the report plan specified by a report plan name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReportPlanInput}.
    #
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    # @return [Types::DeleteReportPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_plan(
    #     report_plan_name: 'ReportPlanName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReportPlanOutput
    #
    def delete_report_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReportPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReportPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReportPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteReportPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReportPlan,
        stubs: @stubs,
        params_class: Params::DeleteReportPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_report_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns backup job details for the specified <code>BackupJobId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupJobInput}.
    #
    # @option params [String] :backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    # @return [Types::DescribeBackupJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_job(
    #     backup_job_id: 'BackupJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupJobOutput
    #   resp.data.account_id #=> String
    #   resp.data.backup_job_id #=> String
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.completion_date #=> Time
    #   resp.data.state #=> String, one of ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #   resp.data.status_message #=> String
    #   resp.data.percent_done #=> String
    #   resp.data.backup_size_in_bytes #=> Integer
    #   resp.data.iam_role_arn #=> String
    #   resp.data.created_by #=> Types::RecoveryPointCreator
    #   resp.data.created_by.backup_plan_id #=> String
    #   resp.data.created_by.backup_plan_arn #=> String
    #   resp.data.created_by.backup_plan_version #=> String
    #   resp.data.created_by.backup_rule_id #=> String
    #   resp.data.resource_type #=> String
    #   resp.data.bytes_transferred #=> Integer
    #   resp.data.expected_completion_date #=> Time
    #   resp.data.start_by #=> Time
    #   resp.data.backup_options #=> Hash<String, String>
    #   resp.data.backup_options['key'] #=> String
    #   resp.data.backup_type #=> String
    #
    def describe_backup_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackupJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DependencyFailureException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeBackupJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackupJob,
        stubs: @stubs,
        params_class: Params::DescribeBackupJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backup_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about a backup vault specified by its name.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupVaultInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @return [Types::DescribeBackupVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_vault(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupVaultOutput
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.encryption_key_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.creator_request_id #=> String
    #   resp.data.number_of_recovery_points #=> Integer
    #   resp.data.locked #=> Boolean
    #   resp.data.min_retention_days #=> Integer
    #   resp.data.max_retention_days #=> Integer
    #   resp.data.lock_date #=> Time
    #
    def describe_backup_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackupVault
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
        data_parser: Parsers::DescribeBackupVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackupVault,
        stubs: @stubs,
        params_class: Params::DescribeBackupVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backup_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata associated with creating a copy of a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCopyJobInput}.
    #
    # @option params [String] :copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #
    # @return [Types::DescribeCopyJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_copy_job(
    #     copy_job_id: 'CopyJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCopyJobOutput
    #   resp.data.copy_job #=> Types::CopyJob
    #   resp.data.copy_job.account_id #=> String
    #   resp.data.copy_job.copy_job_id #=> String
    #   resp.data.copy_job.source_backup_vault_arn #=> String
    #   resp.data.copy_job.source_recovery_point_arn #=> String
    #   resp.data.copy_job.destination_backup_vault_arn #=> String
    #   resp.data.copy_job.destination_recovery_point_arn #=> String
    #   resp.data.copy_job.resource_arn #=> String
    #   resp.data.copy_job.creation_date #=> Time
    #   resp.data.copy_job.completion_date #=> Time
    #   resp.data.copy_job.state #=> String, one of ["CREATED", "RUNNING", "COMPLETED", "FAILED"]
    #   resp.data.copy_job.status_message #=> String
    #   resp.data.copy_job.backup_size_in_bytes #=> Integer
    #   resp.data.copy_job.iam_role_arn #=> String
    #   resp.data.copy_job.created_by #=> Types::RecoveryPointCreator
    #   resp.data.copy_job.created_by.backup_plan_id #=> String
    #   resp.data.copy_job.created_by.backup_plan_arn #=> String
    #   resp.data.copy_job.created_by.backup_plan_version #=> String
    #   resp.data.copy_job.created_by.backup_rule_id #=> String
    #   resp.data.copy_job.resource_type #=> String
    #
    def describe_copy_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCopyJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCopyJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCopyJob
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
        data_parser: Parsers::DescribeCopyJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCopyJob,
        stubs: @stubs,
        params_class: Params::DescribeCopyJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_copy_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the framework details for the specified <code>FrameworkName</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFrameworkInput}.
    #
    # @option params [String] :framework_name
    #   <p>The unique name of a framework.</p>
    #
    # @return [Types::DescribeFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_framework(
    #     framework_name: 'FrameworkName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFrameworkOutput
    #   resp.data.framework_name #=> String
    #   resp.data.framework_arn #=> String
    #   resp.data.framework_description #=> String
    #   resp.data.framework_controls #=> Array<FrameworkControl>
    #   resp.data.framework_controls[0] #=> Types::FrameworkControl
    #   resp.data.framework_controls[0].control_name #=> String
    #   resp.data.framework_controls[0].control_input_parameters #=> Array<ControlInputParameter>
    #   resp.data.framework_controls[0].control_input_parameters[0] #=> Types::ControlInputParameter
    #   resp.data.framework_controls[0].control_input_parameters[0].parameter_name #=> String
    #   resp.data.framework_controls[0].control_input_parameters[0].parameter_value #=> String
    #   resp.data.framework_controls[0].control_scope #=> Types::ControlScope
    #   resp.data.framework_controls[0].control_scope.compliance_resource_ids #=> Array<String>
    #   resp.data.framework_controls[0].control_scope.compliance_resource_ids[0] #=> String
    #   resp.data.framework_controls[0].control_scope.compliance_resource_types #=> Array<String>
    #   resp.data.framework_controls[0].control_scope.compliance_resource_types[0] #=> String
    #   resp.data.framework_controls[0].control_scope.tags #=> Hash<String, String>
    #   resp.data.framework_controls[0].control_scope.tags['key'] #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.deployment_status #=> String
    #   resp.data.framework_status #=> String
    #   resp.data.idempotency_token #=> String
    #
    def describe_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFrameworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFramework
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
        data_parser: Parsers::DescribeFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFramework,
        stubs: @stubs,
        params_class: Params::DescribeFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes whether the Amazon Web Services account is opted in to cross-account backup.
    #          Returns an error if the account is not a member of an Organizations organization.
    #          Example: <code>describe-global-settings --region us-west-2</code>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalSettingsInput}.
    #
    # @return [Types::DescribeGlobalSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalSettingsOutput
    #   resp.data.global_settings #=> Hash<String, String>
    #   resp.data.global_settings['key'] #=> String
    #   resp.data.last_update_time #=> Time
    #
    def describe_global_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeGlobalSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalSettings,
        stubs: @stubs,
        params_class: Params::DescribeGlobalSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a saved resource, including the last time it was backed up,
    #          its Amazon Resource Name (ARN), and the Amazon Web Services service type of the saved
    #          resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProtectedResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    # @return [Types::DescribeProtectedResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protected_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProtectedResourceOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.resource_type #=> String
    #   resp.data.last_backup_time #=> Time
    #
    def describe_protected_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProtectedResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProtectedResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProtectedResource
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
        data_parser: Parsers::DescribeProtectedResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProtectedResource,
        stubs: @stubs,
        params_class: Params::DescribeProtectedResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_protected_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata associated with a recovery point, including ID, status, encryption, and
    #          lifecycle.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecoveryPointInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    # @return [Types::DescribeRecoveryPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_point(
    #     backup_vault_name: 'BackupVaultName', # required
    #     recovery_point_arn: 'RecoveryPointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecoveryPointOutput
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.source_backup_vault_arn #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.resource_type #=> String
    #   resp.data.created_by #=> Types::RecoveryPointCreator
    #   resp.data.created_by.backup_plan_id #=> String
    #   resp.data.created_by.backup_plan_arn #=> String
    #   resp.data.created_by.backup_plan_version #=> String
    #   resp.data.created_by.backup_rule_id #=> String
    #   resp.data.iam_role_arn #=> String
    #   resp.data.status #=> String, one of ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #   resp.data.status_message #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.completion_date #=> Time
    #   resp.data.backup_size_in_bytes #=> Integer
    #   resp.data.calculated_lifecycle #=> Types::CalculatedLifecycle
    #   resp.data.calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.data.calculated_lifecycle.delete_at #=> Time
    #   resp.data.lifecycle #=> Types::Lifecycle
    #   resp.data.lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.lifecycle.delete_after_days #=> Integer
    #   resp.data.encryption_key_arn #=> String
    #   resp.data.is_encrypted #=> Boolean
    #   resp.data.storage_class #=> String, one of ["WARM", "COLD", "DELETED"]
    #   resp.data.last_restore_time #=> Time
    #
    def describe_recovery_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecoveryPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecoveryPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecoveryPoint
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
        data_parser: Parsers::DescribeRecoveryPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecoveryPoint,
        stubs: @stubs,
        params_class: Params::DescribeRecoveryPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recovery_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current service opt-in settings for the Region. If service opt-in is enabled
    #          for a service, Backup tries to protect that service's resources in this Region,
    #          when the resource is included in an on-demand backup or scheduled backup plan. Otherwise,
    #             Backup does not try to protect that service's resources in this
    #          Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRegionSettingsInput}.
    #
    # @return [Types::DescribeRegionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_region_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRegionSettingsOutput
    #   resp.data.resource_type_opt_in_preference #=> Hash<String, Boolean>
    #   resp.data.resource_type_opt_in_preference['key'] #=> Boolean
    #   resp.data.resource_type_management_preference #=> Hash<String, Boolean>
    #   resp.data.resource_type_management_preference['key'] #=> Boolean
    #
    def describe_region_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRegionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRegionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRegionSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeRegionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRegionSettings,
        stubs: @stubs,
        params_class: Params::DescribeRegionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_region_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details associated with creating a report as specified by its
    #             <code>ReportJobId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReportJobInput}.
    #
    # @option params [String] :report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    #
    # @return [Types::DescribeReportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_job(
    #     report_job_id: 'ReportJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReportJobOutput
    #   resp.data.report_job #=> Types::ReportJob
    #   resp.data.report_job.report_job_id #=> String
    #   resp.data.report_job.report_plan_arn #=> String
    #   resp.data.report_job.report_template #=> String
    #   resp.data.report_job.creation_time #=> Time
    #   resp.data.report_job.completion_time #=> Time
    #   resp.data.report_job.status #=> String
    #   resp.data.report_job.status_message #=> String
    #   resp.data.report_job.report_destination #=> Types::ReportDestination
    #   resp.data.report_job.report_destination.s3_bucket_name #=> String
    #   resp.data.report_job.report_destination.s3_keys #=> Array<String>
    #   resp.data.report_job.report_destination.s3_keys[0] #=> String
    #
    def describe_report_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeReportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReportJob,
        stubs: @stubs,
        params_class: Params::DescribeReportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_report_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all report plans for an Amazon Web Services account and Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReportPlanInput}.
    #
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    # @return [Types::DescribeReportPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_plan(
    #     report_plan_name: 'ReportPlanName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReportPlanOutput
    #   resp.data.report_plan #=> Types::ReportPlan
    #   resp.data.report_plan.report_plan_arn #=> String
    #   resp.data.report_plan.report_plan_name #=> String
    #   resp.data.report_plan.report_plan_description #=> String
    #   resp.data.report_plan.report_setting #=> Types::ReportSetting
    #   resp.data.report_plan.report_setting.report_template #=> String
    #   resp.data.report_plan.report_setting.framework_arns #=> Array<String>
    #   resp.data.report_plan.report_setting.framework_arns[0] #=> String
    #   resp.data.report_plan.report_setting.number_of_frameworks #=> Integer
    #   resp.data.report_plan.report_delivery_channel #=> Types::ReportDeliveryChannel
    #   resp.data.report_plan.report_delivery_channel.s3_bucket_name #=> String
    #   resp.data.report_plan.report_delivery_channel.s3_key_prefix #=> String
    #   resp.data.report_plan.report_delivery_channel.formats #=> Array<String>
    #   resp.data.report_plan.report_delivery_channel.formats[0] #=> String
    #   resp.data.report_plan.deployment_status #=> String
    #   resp.data.report_plan.creation_time #=> Time
    #   resp.data.report_plan.last_attempted_execution_time #=> Time
    #   resp.data.report_plan.last_successful_execution_time #=> Time
    #
    def describe_report_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReportPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReportPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReportPlan
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
        data_parser: Parsers::DescribeReportPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReportPlan,
        stubs: @stubs,
        params_class: Params::DescribeReportPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_report_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata associated with a restore job that is specified by a job ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRestoreJobInput}.
    #
    # @option params [String] :restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #
    # @return [Types::DescribeRestoreJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_restore_job(
    #     restore_job_id: 'RestoreJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRestoreJobOutput
    #   resp.data.account_id #=> String
    #   resp.data.restore_job_id #=> String
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.completion_date #=> Time
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.percent_done #=> String
    #   resp.data.backup_size_in_bytes #=> Integer
    #   resp.data.iam_role_arn #=> String
    #   resp.data.expected_completion_time_minutes #=> Integer
    #   resp.data.created_resource_arn #=> String
    #   resp.data.resource_type #=> String
    #
    def describe_restore_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRestoreJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRestoreJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRestoreJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DependencyFailureException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeRestoreJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRestoreJob,
        stubs: @stubs,
        params_class: Params::DescribeRestoreJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_restore_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified continuous backup recovery point from Backup and
    #          releases control of that continuous backup to the source service, such as Amazon RDS. The source service will continue to create and retain continuous backups using the
    #          lifecycle that you specified in your original backup plan.</p>
    #          <p>Does not support snapshot backup recovery points.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateRecoveryPointInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The unique name of an Backup vault.</p>
    #
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an Backup recovery
    #            point.</p>
    #
    # @return [Types::DisassociateRecoveryPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_recovery_point(
    #     backup_vault_name: 'BackupVaultName', # required
    #     recovery_point_arn: 'RecoveryPointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateRecoveryPointOutput
    #
    def disassociate_recovery_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateRecoveryPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateRecoveryPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateRecoveryPoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::InvalidResourceStateException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateRecoveryPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateRecoveryPoint,
        stubs: @stubs,
        params_class: Params::DisassociateRecoveryPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_recovery_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the backup plan that is specified by the plan ID as a backup template.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportBackupPlanTemplateInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @return [Types::ExportBackupPlanTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_backup_plan_template(
    #     backup_plan_id: 'BackupPlanId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportBackupPlanTemplateOutput
    #   resp.data.backup_plan_template_json #=> String
    #
    def export_backup_plan_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportBackupPlanTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportBackupPlanTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportBackupPlanTemplate
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
        data_parser: Parsers::ExportBackupPlanTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportBackupPlanTemplate,
        stubs: @stubs,
        params_class: Params::ExportBackupPlanTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_backup_plan_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns <code>BackupPlan</code> details for the specified <code>BackupPlanId</code>. The
    #          details are the body of a backup plan in JSON format, in addition to plan metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupPlanInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [String] :version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #
    # @return [Types::GetBackupPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan(
    #     backup_plan_id: 'BackupPlanId', # required
    #     version_id: 'VersionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupPlanOutput
    #   resp.data.backup_plan #=> Types::BackupPlan
    #   resp.data.backup_plan.backup_plan_name #=> String
    #   resp.data.backup_plan.rules #=> Array<BackupRule>
    #   resp.data.backup_plan.rules[0] #=> Types::BackupRule
    #   resp.data.backup_plan.rules[0].rule_name #=> String
    #   resp.data.backup_plan.rules[0].target_backup_vault_name #=> String
    #   resp.data.backup_plan.rules[0].schedule_expression #=> String
    #   resp.data.backup_plan.rules[0].start_window_minutes #=> Integer
    #   resp.data.backup_plan.rules[0].completion_window_minutes #=> Integer
    #   resp.data.backup_plan.rules[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.backup_plan.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.data.backup_plan.rules[0].recovery_point_tags #=> Hash<String, String>
    #   resp.data.backup_plan.rules[0].recovery_point_tags['key'] #=> String
    #   resp.data.backup_plan.rules[0].rule_id #=> String
    #   resp.data.backup_plan.rules[0].copy_actions #=> Array<CopyAction>
    #   resp.data.backup_plan.rules[0].copy_actions[0] #=> Types::CopyAction
    #   resp.data.backup_plan.rules[0].copy_actions[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.data.backup_plan.rules[0].enable_continuous_backup #=> Boolean
    #   resp.data.backup_plan.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.backup_plan.advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.backup_plan.advanced_backup_settings[0].resource_type #=> String
    #   resp.data.backup_plan.advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_plan.advanced_backup_settings[0].backup_options['key'] #=> String
    #   resp.data.backup_plan_id #=> String
    #   resp.data.backup_plan_arn #=> String
    #   resp.data.version_id #=> String
    #   resp.data.creator_request_id #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.deletion_date #=> Time
    #   resp.data.last_execution_date #=> Time
    #   resp.data.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #
    def get_backup_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupPlan
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
        data_parser: Parsers::GetBackupPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupPlan,
        stubs: @stubs,
        params_class: Params::GetBackupPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a valid JSON document specifying a backup plan or an error.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupPlanFromJSONInput}.
    #
    # @option params [String] :backup_plan_template_json
    #   <p>A customer-supplied backup plan document in JSON format.</p>
    #
    # @return [Types::GetBackupPlanFromJSONOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan_from_json(
    #     backup_plan_template_json: 'BackupPlanTemplateJson' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupPlanFromJSONOutput
    #   resp.data.backup_plan #=> Types::BackupPlan
    #   resp.data.backup_plan.backup_plan_name #=> String
    #   resp.data.backup_plan.rules #=> Array<BackupRule>
    #   resp.data.backup_plan.rules[0] #=> Types::BackupRule
    #   resp.data.backup_plan.rules[0].rule_name #=> String
    #   resp.data.backup_plan.rules[0].target_backup_vault_name #=> String
    #   resp.data.backup_plan.rules[0].schedule_expression #=> String
    #   resp.data.backup_plan.rules[0].start_window_minutes #=> Integer
    #   resp.data.backup_plan.rules[0].completion_window_minutes #=> Integer
    #   resp.data.backup_plan.rules[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.backup_plan.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.data.backup_plan.rules[0].recovery_point_tags #=> Hash<String, String>
    #   resp.data.backup_plan.rules[0].recovery_point_tags['key'] #=> String
    #   resp.data.backup_plan.rules[0].rule_id #=> String
    #   resp.data.backup_plan.rules[0].copy_actions #=> Array<CopyAction>
    #   resp.data.backup_plan.rules[0].copy_actions[0] #=> Types::CopyAction
    #   resp.data.backup_plan.rules[0].copy_actions[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.data.backup_plan.rules[0].enable_continuous_backup #=> Boolean
    #   resp.data.backup_plan.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.backup_plan.advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.backup_plan.advanced_backup_settings[0].resource_type #=> String
    #   resp.data.backup_plan.advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_plan.advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def get_backup_plan_from_json(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupPlanFromJSONInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupPlanFromJSONInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupPlanFromJSON
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetBackupPlanFromJSON
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupPlanFromJSON,
        stubs: @stubs,
        params_class: Params::GetBackupPlanFromJSONOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_plan_from_json
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the template specified by its <code>templateId</code> as a backup plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupPlanFromTemplateInput}.
    #
    # @option params [String] :backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    #
    # @return [Types::GetBackupPlanFromTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_plan_from_template(
    #     backup_plan_template_id: 'BackupPlanTemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupPlanFromTemplateOutput
    #   resp.data.backup_plan_document #=> Types::BackupPlan
    #   resp.data.backup_plan_document.backup_plan_name #=> String
    #   resp.data.backup_plan_document.rules #=> Array<BackupRule>
    #   resp.data.backup_plan_document.rules[0] #=> Types::BackupRule
    #   resp.data.backup_plan_document.rules[0].rule_name #=> String
    #   resp.data.backup_plan_document.rules[0].target_backup_vault_name #=> String
    #   resp.data.backup_plan_document.rules[0].schedule_expression #=> String
    #   resp.data.backup_plan_document.rules[0].start_window_minutes #=> Integer
    #   resp.data.backup_plan_document.rules[0].completion_window_minutes #=> Integer
    #   resp.data.backup_plan_document.rules[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan_document.rules[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.backup_plan_document.rules[0].lifecycle.delete_after_days #=> Integer
    #   resp.data.backup_plan_document.rules[0].recovery_point_tags #=> Hash<String, String>
    #   resp.data.backup_plan_document.rules[0].recovery_point_tags['key'] #=> String
    #   resp.data.backup_plan_document.rules[0].rule_id #=> String
    #   resp.data.backup_plan_document.rules[0].copy_actions #=> Array<CopyAction>
    #   resp.data.backup_plan_document.rules[0].copy_actions[0] #=> Types::CopyAction
    #   resp.data.backup_plan_document.rules[0].copy_actions[0].lifecycle #=> Types::Lifecycle
    #   resp.data.backup_plan_document.rules[0].copy_actions[0].destination_backup_vault_arn #=> String
    #   resp.data.backup_plan_document.rules[0].enable_continuous_backup #=> Boolean
    #   resp.data.backup_plan_document.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.backup_plan_document.advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.backup_plan_document.advanced_backup_settings[0].resource_type #=> String
    #   resp.data.backup_plan_document.advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_plan_document.advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def get_backup_plan_from_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupPlanFromTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupPlanFromTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupPlanFromTemplate
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
        data_parser: Parsers::GetBackupPlanFromTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupPlanFromTemplate,
        stubs: @stubs,
        params_class: Params::GetBackupPlanFromTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_plan_from_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns selection metadata and a document in JSON format that specifies a list of
    #          resources that are associated with a backup plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupSelectionInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [String] :selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    # @return [Types::GetBackupSelectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_selection(
    #     backup_plan_id: 'BackupPlanId', # required
    #     selection_id: 'SelectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupSelectionOutput
    #   resp.data.backup_selection #=> Types::BackupSelection
    #   resp.data.backup_selection.selection_name #=> String
    #   resp.data.backup_selection.iam_role_arn #=> String
    #   resp.data.backup_selection.resources #=> Array<String>
    #   resp.data.backup_selection.resources[0] #=> String
    #   resp.data.backup_selection.list_of_tags #=> Array<Condition>
    #   resp.data.backup_selection.list_of_tags[0] #=> Types::Condition
    #   resp.data.backup_selection.list_of_tags[0].condition_type #=> String, one of ["STRINGEQUALS"]
    #   resp.data.backup_selection.list_of_tags[0].condition_key #=> String
    #   resp.data.backup_selection.list_of_tags[0].condition_value #=> String
    #   resp.data.backup_selection.not_resources #=> Array<String>
    #   resp.data.backup_selection.conditions #=> Types::Conditions
    #   resp.data.backup_selection.conditions.string_equals #=> Array<ConditionParameter>
    #   resp.data.backup_selection.conditions.string_equals[0] #=> Types::ConditionParameter
    #   resp.data.backup_selection.conditions.string_equals[0].condition_key #=> String
    #   resp.data.backup_selection.conditions.string_equals[0].condition_value #=> String
    #   resp.data.backup_selection.conditions.string_not_equals #=> Array<ConditionParameter>
    #   resp.data.backup_selection.conditions.string_like #=> Array<ConditionParameter>
    #   resp.data.backup_selection.conditions.string_not_like #=> Array<ConditionParameter>
    #   resp.data.selection_id #=> String
    #   resp.data.backup_plan_id #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.creator_request_id #=> String
    #
    def get_backup_selection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupSelectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupSelectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupSelection
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
        data_parser: Parsers::GetBackupSelection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupSelection,
        stubs: @stubs,
        params_class: Params::GetBackupSelectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_selection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the access policy document that is associated with the named backup
    #          vault.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupVaultAccessPolicyInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @return [Types::GetBackupVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_vault_access_policy(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupVaultAccessPolicyOutput
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.policy #=> String
    #
    def get_backup_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupVaultAccessPolicy
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
        data_parser: Parsers::GetBackupVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::GetBackupVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns event notifications for the specified backup vault.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBackupVaultNotificationsInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @return [Types::GetBackupVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backup_vault_notifications(
    #     backup_vault_name: 'BackupVaultName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackupVaultNotificationsOutput
    #   resp.data.backup_vault_name #=> String
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.backup_vault_events #=> Array<String>
    #   resp.data.backup_vault_events[0] #=> String, one of ["BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED", "S3_BACKUP_OBJECT_FAILED", "S3_RESTORE_OBJECT_FAILED"]
    #
    def get_backup_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackupVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackupVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackupVaultNotifications
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
        data_parser: Parsers::GetBackupVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackupVaultNotifications,
        stubs: @stubs,
        params_class: Params::GetBackupVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backup_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a set of metadata key-value pairs that were used to create the backup.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecoveryPointRestoreMetadataInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    # @return [Types::GetRecoveryPointRestoreMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_point_restore_metadata(
    #     backup_vault_name: 'BackupVaultName', # required
    #     recovery_point_arn: 'RecoveryPointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecoveryPointRestoreMetadataOutput
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.restore_metadata #=> Hash<String, String>
    #   resp.data.restore_metadata['key'] #=> String
    #
    def get_recovery_point_restore_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecoveryPointRestoreMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecoveryPointRestoreMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecoveryPointRestoreMetadata
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
        data_parser: Parsers::GetRecoveryPointRestoreMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecoveryPointRestoreMetadata,
        stubs: @stubs,
        params_class: Params::GetRecoveryPointRestoreMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recovery_point_restore_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Amazon Web Services resource types supported by Backup.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSupportedResourceTypesInput}.
    #
    # @return [Types::GetSupportedResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_supported_resource_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSupportedResourceTypesOutput
    #   resp.data.resource_types #=> Array<String>
    #   resp.data.resource_types[0] #=> String
    #
    def get_supported_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSupportedResourceTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSupportedResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSupportedResourceTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetSupportedResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSupportedResourceTypes,
        stubs: @stubs,
        params_class: Params::GetSupportedResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_supported_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing backup jobs for an authenticated account for the last 30
    #          days. For a longer period of time, consider using these <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">monitoring tools</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @option params [String] :by_resource_arn
    #   <p>Returns only backup jobs that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #
    # @option params [String] :by_state
    #   <p>Returns only backup jobs that are in the specified state.</p>
    #
    # @option params [String] :by_backup_vault_name
    #   <p>Returns only backup jobs that will be stored in the specified backup vault. Backup
    #            vaults are identified by names that are unique to the account used to create them and the
    #               Amazon Web Services Region where they are created. They consist of lowercase letters,
    #            numbers, and hyphens.</p>
    #
    # @option params [Time] :by_created_before
    #   <p>Returns only backup jobs that were created before the specified date.</p>
    #
    # @option params [Time] :by_created_after
    #   <p>Returns only backup jobs that were created after the specified date.</p>
    #
    # @option params [String] :by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only backup jobs associated with the
    #            specified account ID.</p>
    #            <p>If used from an Organizations management account, passing <code>*</code> returns
    #            all jobs across the organization.</p>
    #
    # @option params [Time] :by_complete_after
    #   <p>Returns only backup jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    # @option params [Time] :by_complete_before
    #   <p>Returns only backup jobs completed before a date expressed in Unix format and
    #            Coordinated Universal Time (UTC).</p>
    #
    # @return [Types::ListBackupJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     by_resource_arn: 'ByResourceArn',
    #     by_state: 'CREATED', # accepts ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #     by_backup_vault_name: 'ByBackupVaultName',
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: 'ByResourceType',
    #     by_account_id: 'ByAccountId',
    #     by_complete_after: Time.now,
    #     by_complete_before: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupJobsOutput
    #   resp.data.backup_jobs #=> Array<BackupJob>
    #   resp.data.backup_jobs[0] #=> Types::BackupJob
    #   resp.data.backup_jobs[0].account_id #=> String
    #   resp.data.backup_jobs[0].backup_job_id #=> String
    #   resp.data.backup_jobs[0].backup_vault_name #=> String
    #   resp.data.backup_jobs[0].backup_vault_arn #=> String
    #   resp.data.backup_jobs[0].recovery_point_arn #=> String
    #   resp.data.backup_jobs[0].resource_arn #=> String
    #   resp.data.backup_jobs[0].creation_date #=> Time
    #   resp.data.backup_jobs[0].completion_date #=> Time
    #   resp.data.backup_jobs[0].state #=> String, one of ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #   resp.data.backup_jobs[0].status_message #=> String
    #   resp.data.backup_jobs[0].percent_done #=> String
    #   resp.data.backup_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.data.backup_jobs[0].iam_role_arn #=> String
    #   resp.data.backup_jobs[0].created_by #=> Types::RecoveryPointCreator
    #   resp.data.backup_jobs[0].created_by.backup_plan_id #=> String
    #   resp.data.backup_jobs[0].created_by.backup_plan_arn #=> String
    #   resp.data.backup_jobs[0].created_by.backup_plan_version #=> String
    #   resp.data.backup_jobs[0].created_by.backup_rule_id #=> String
    #   resp.data.backup_jobs[0].expected_completion_date #=> Time
    #   resp.data.backup_jobs[0].start_by #=> Time
    #   resp.data.backup_jobs[0].resource_type #=> String
    #   resp.data.backup_jobs[0].bytes_transferred #=> Integer
    #   resp.data.backup_jobs[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_jobs[0].backup_options['key'] #=> String
    #   resp.data.backup_jobs[0].backup_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_backup_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListBackupJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupJobs,
        stubs: @stubs,
        params_class: Params::ListBackupJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata of your saved backup plan templates, including the template ID, name,
    #          and the creation and deletion dates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupPlanTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListBackupPlanTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plan_templates(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupPlanTemplatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.backup_plan_templates_list #=> Array<BackupPlanTemplatesListMember>
    #   resp.data.backup_plan_templates_list[0] #=> Types::BackupPlanTemplatesListMember
    #   resp.data.backup_plan_templates_list[0].backup_plan_template_id #=> String
    #   resp.data.backup_plan_templates_list[0].backup_plan_template_name #=> String
    #
    def list_backup_plan_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupPlanTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupPlanTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupPlanTemplates
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
        data_parser: Parsers::ListBackupPlanTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupPlanTemplates,
        stubs: @stubs,
        params_class: Params::ListBackupPlanTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_plan_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns version metadata of your backup plans, including Amazon Resource Names (ARNs),
    #          backup plan IDs, creation and deletion dates, plan names, and version IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupPlanVersionsInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListBackupPlanVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plan_versions(
    #     backup_plan_id: 'BackupPlanId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupPlanVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.backup_plan_versions_list #=> Array<BackupPlansListMember>
    #   resp.data.backup_plan_versions_list[0] #=> Types::BackupPlansListMember
    #   resp.data.backup_plan_versions_list[0].backup_plan_arn #=> String
    #   resp.data.backup_plan_versions_list[0].backup_plan_id #=> String
    #   resp.data.backup_plan_versions_list[0].creation_date #=> Time
    #   resp.data.backup_plan_versions_list[0].deletion_date #=> Time
    #   resp.data.backup_plan_versions_list[0].version_id #=> String
    #   resp.data.backup_plan_versions_list[0].backup_plan_name #=> String
    #   resp.data.backup_plan_versions_list[0].creator_request_id #=> String
    #   resp.data.backup_plan_versions_list[0].last_execution_date #=> Time
    #   resp.data.backup_plan_versions_list[0].advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.backup_plan_versions_list[0].advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.backup_plan_versions_list[0].advanced_backup_settings[0].resource_type #=> String
    #   resp.data.backup_plan_versions_list[0].advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_plan_versions_list[0].advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def list_backup_plan_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupPlanVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupPlanVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupPlanVersions
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
        data_parser: Parsers::ListBackupPlanVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupPlanVersions,
        stubs: @stubs,
        params_class: Params::ListBackupPlanVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_plan_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all active backup plans for an authenticated account. The list
    #          contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion
    #          dates, version IDs, plan names, and creator request IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupPlansInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @option params [Boolean] :include_deleted
    #   <p>A Boolean value with a default value of <code>FALSE</code> that returns deleted backup
    #            plans when set to <code>TRUE</code>.</p>
    #
    # @return [Types::ListBackupPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_plans(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     include_deleted: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupPlansOutput
    #   resp.data.next_token #=> String
    #   resp.data.backup_plans_list #=> Array<BackupPlansListMember>
    #   resp.data.backup_plans_list[0] #=> Types::BackupPlansListMember
    #   resp.data.backup_plans_list[0].backup_plan_arn #=> String
    #   resp.data.backup_plans_list[0].backup_plan_id #=> String
    #   resp.data.backup_plans_list[0].creation_date #=> Time
    #   resp.data.backup_plans_list[0].deletion_date #=> Time
    #   resp.data.backup_plans_list[0].version_id #=> String
    #   resp.data.backup_plans_list[0].backup_plan_name #=> String
    #   resp.data.backup_plans_list[0].creator_request_id #=> String
    #   resp.data.backup_plans_list[0].last_execution_date #=> Time
    #   resp.data.backup_plans_list[0].advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.backup_plans_list[0].advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.backup_plans_list[0].advanced_backup_settings[0].resource_type #=> String
    #   resp.data.backup_plans_list[0].advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.backup_plans_list[0].advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def list_backup_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupPlans
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
        data_parser: Parsers::ListBackupPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupPlans,
        stubs: @stubs,
        params_class: Params::ListBackupPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array containing metadata of the resources associated with the target backup
    #          plan.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupSelectionsInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListBackupSelectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_selections(
    #     backup_plan_id: 'BackupPlanId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupSelectionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.backup_selections_list #=> Array<BackupSelectionsListMember>
    #   resp.data.backup_selections_list[0] #=> Types::BackupSelectionsListMember
    #   resp.data.backup_selections_list[0].selection_id #=> String
    #   resp.data.backup_selections_list[0].selection_name #=> String
    #   resp.data.backup_selections_list[0].backup_plan_id #=> String
    #   resp.data.backup_selections_list[0].creation_date #=> Time
    #   resp.data.backup_selections_list[0].creator_request_id #=> String
    #   resp.data.backup_selections_list[0].iam_role_arn #=> String
    #
    def list_backup_selections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupSelectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupSelectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupSelections
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
        data_parser: Parsers::ListBackupSelections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupSelections,
        stubs: @stubs,
        params_class: Params::ListBackupSelectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_selections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of recovery point storage containers along with information about
    #          them.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupVaultsInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListBackupVaultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backup_vaults(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupVaultsOutput
    #   resp.data.backup_vault_list #=> Array<BackupVaultListMember>
    #   resp.data.backup_vault_list[0] #=> Types::BackupVaultListMember
    #   resp.data.backup_vault_list[0].backup_vault_name #=> String
    #   resp.data.backup_vault_list[0].backup_vault_arn #=> String
    #   resp.data.backup_vault_list[0].creation_date #=> Time
    #   resp.data.backup_vault_list[0].encryption_key_arn #=> String
    #   resp.data.backup_vault_list[0].creator_request_id #=> String
    #   resp.data.backup_vault_list[0].number_of_recovery_points #=> Integer
    #   resp.data.backup_vault_list[0].locked #=> Boolean
    #   resp.data.backup_vault_list[0].min_retention_days #=> Integer
    #   resp.data.backup_vault_list[0].max_retention_days #=> Integer
    #   resp.data.backup_vault_list[0].lock_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_backup_vaults(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupVaultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupVaultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackupVaults
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
        data_parser: Parsers::ListBackupVaults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackupVaults,
        stubs: @stubs,
        params_class: Params::ListBackupVaultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backup_vaults
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about your copy jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCopyJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return maxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @option params [String] :by_resource_arn
    #   <p>Returns only copy jobs that match the specified resource Amazon Resource Name (ARN).
    #         </p>
    #
    # @option params [String] :by_state
    #   <p>Returns only copy jobs that are in the specified state.</p>
    #
    # @option params [Time] :by_created_before
    #   <p>Returns only copy jobs that were created before the specified date.</p>
    #
    # @option params [Time] :by_created_after
    #   <p>Returns only copy jobs that were created after the specified date.</p>
    #
    # @option params [String] :by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :by_destination_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy
    #            from; for example, <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.
    #         </p>
    #
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only copy jobs associated with the
    #            specified account ID.</p>
    #
    # @option params [Time] :by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    # @option params [Time] :by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    # @return [Types::ListCopyJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_copy_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     by_resource_arn: 'ByResourceArn',
    #     by_state: 'CREATED', # accepts ["CREATED", "RUNNING", "COMPLETED", "FAILED"]
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_resource_type: 'ByResourceType',
    #     by_destination_vault_arn: 'ByDestinationVaultArn',
    #     by_account_id: 'ByAccountId',
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCopyJobsOutput
    #   resp.data.copy_jobs #=> Array<CopyJob>
    #   resp.data.copy_jobs[0] #=> Types::CopyJob
    #   resp.data.copy_jobs[0].account_id #=> String
    #   resp.data.copy_jobs[0].copy_job_id #=> String
    #   resp.data.copy_jobs[0].source_backup_vault_arn #=> String
    #   resp.data.copy_jobs[0].source_recovery_point_arn #=> String
    #   resp.data.copy_jobs[0].destination_backup_vault_arn #=> String
    #   resp.data.copy_jobs[0].destination_recovery_point_arn #=> String
    #   resp.data.copy_jobs[0].resource_arn #=> String
    #   resp.data.copy_jobs[0].creation_date #=> Time
    #   resp.data.copy_jobs[0].completion_date #=> Time
    #   resp.data.copy_jobs[0].state #=> String, one of ["CREATED", "RUNNING", "COMPLETED", "FAILED"]
    #   resp.data.copy_jobs[0].status_message #=> String
    #   resp.data.copy_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.data.copy_jobs[0].iam_role_arn #=> String
    #   resp.data.copy_jobs[0].created_by #=> Types::RecoveryPointCreator
    #   resp.data.copy_jobs[0].created_by.backup_plan_id #=> String
    #   resp.data.copy_jobs[0].created_by.backup_plan_arn #=> String
    #   resp.data.copy_jobs[0].created_by.backup_plan_version #=> String
    #   resp.data.copy_jobs[0].created_by.backup_rule_id #=> String
    #   resp.data.copy_jobs[0].resource_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_copy_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCopyJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCopyJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCopyJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListCopyJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCopyJobs,
        stubs: @stubs,
        params_class: Params::ListCopyJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_copy_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFrameworksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    # @return [Types::ListFrameworksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_frameworks(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFrameworksOutput
    #   resp.data.frameworks #=> Array<Framework>
    #   resp.data.frameworks[0] #=> Types::Framework
    #   resp.data.frameworks[0].framework_name #=> String
    #   resp.data.frameworks[0].framework_arn #=> String
    #   resp.data.frameworks[0].framework_description #=> String
    #   resp.data.frameworks[0].number_of_controls #=> Integer
    #   resp.data.frameworks[0].creation_time #=> Time
    #   resp.data.frameworks[0].deployment_status #=> String
    #   resp.data.next_token #=> String
    #
    def list_frameworks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFrameworksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFrameworksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFrameworks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListFrameworks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFrameworks,
        stubs: @stubs,
        params_class: Params::ListFrameworksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_frameworks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of resources successfully backed up by Backup, including
    #          the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a
    #          resource type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProtectedResourcesInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListProtectedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protected_resources(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProtectedResourcesOutput
    #   resp.data.results #=> Array<ProtectedResource>
    #   resp.data.results[0] #=> Types::ProtectedResource
    #   resp.data.results[0].resource_arn #=> String
    #   resp.data.results[0].resource_type #=> String
    #   resp.data.results[0].last_backup_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_protected_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProtectedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProtectedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProtectedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListProtectedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProtectedResources,
        stubs: @stubs,
        params_class: Params::ListProtectedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_protected_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about the recovery points stored in a backup vault.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecoveryPointsByBackupVaultInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #            <note>
    #               <p>Backup vault name might not be available when a supported service creates the
    #               backup.</p>
    #            </note>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @option params [String] :by_resource_arn
    #   <p>Returns only recovery points that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #
    # @option params [String] :by_resource_type
    #   <p>Returns only recovery points that match the specified resource type.</p>
    #
    # @option params [String] :by_backup_plan_id
    #   <p>Returns only recovery points that match the specified backup plan ID.</p>
    #
    # @option params [Time] :by_created_before
    #   <p>Returns only recovery points that were created before the specified timestamp.</p>
    #
    # @option params [Time] :by_created_after
    #   <p>Returns only recovery points that were created after the specified timestamp.</p>
    #
    # @return [Types::ListRecoveryPointsByBackupVaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points_by_backup_vault(
    #     backup_vault_name: 'BackupVaultName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     by_resource_arn: 'ByResourceArn',
    #     by_resource_type: 'ByResourceType',
    #     by_backup_plan_id: 'ByBackupPlanId',
    #     by_created_before: Time.now,
    #     by_created_after: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecoveryPointsByBackupVaultOutput
    #   resp.data.next_token #=> String
    #   resp.data.recovery_points #=> Array<RecoveryPointByBackupVault>
    #   resp.data.recovery_points[0] #=> Types::RecoveryPointByBackupVault
    #   resp.data.recovery_points[0].recovery_point_arn #=> String
    #   resp.data.recovery_points[0].backup_vault_name #=> String
    #   resp.data.recovery_points[0].backup_vault_arn #=> String
    #   resp.data.recovery_points[0].source_backup_vault_arn #=> String
    #   resp.data.recovery_points[0].resource_arn #=> String
    #   resp.data.recovery_points[0].resource_type #=> String
    #   resp.data.recovery_points[0].created_by #=> Types::RecoveryPointCreator
    #   resp.data.recovery_points[0].created_by.backup_plan_id #=> String
    #   resp.data.recovery_points[0].created_by.backup_plan_arn #=> String
    #   resp.data.recovery_points[0].created_by.backup_plan_version #=> String
    #   resp.data.recovery_points[0].created_by.backup_rule_id #=> String
    #   resp.data.recovery_points[0].iam_role_arn #=> String
    #   resp.data.recovery_points[0].status #=> String, one of ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #   resp.data.recovery_points[0].status_message #=> String
    #   resp.data.recovery_points[0].creation_date #=> Time
    #   resp.data.recovery_points[0].completion_date #=> Time
    #   resp.data.recovery_points[0].backup_size_in_bytes #=> Integer
    #   resp.data.recovery_points[0].calculated_lifecycle #=> Types::CalculatedLifecycle
    #   resp.data.recovery_points[0].calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.data.recovery_points[0].calculated_lifecycle.delete_at #=> Time
    #   resp.data.recovery_points[0].lifecycle #=> Types::Lifecycle
    #   resp.data.recovery_points[0].lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.recovery_points[0].lifecycle.delete_after_days #=> Integer
    #   resp.data.recovery_points[0].encryption_key_arn #=> String
    #   resp.data.recovery_points[0].is_encrypted #=> Boolean
    #   resp.data.recovery_points[0].last_restore_time #=> Time
    #
    def list_recovery_points_by_backup_vault(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecoveryPointsByBackupVaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecoveryPointsByBackupVaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecoveryPointsByBackupVault
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
        data_parser: Parsers::ListRecoveryPointsByBackupVault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecoveryPointsByBackupVault,
        stubs: @stubs,
        params_class: Params::ListRecoveryPointsByBackupVaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recovery_points_by_backup_vault
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about all the recovery points of the type specified by a
    #          resource Amazon Resource Name (ARN).</p>
    #          <note>
    #             <p>For Amazon EFS and Amazon EC2, this action only lists recovery points
    #             created by Backup.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListRecoveryPointsByResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <note>
    #               <p>Amazon RDS requires a value of at least 20.</p>
    #            </note>
    #
    # @return [Types::ListRecoveryPointsByResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points_by_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecoveryPointsByResourceOutput
    #   resp.data.next_token #=> String
    #   resp.data.recovery_points #=> Array<RecoveryPointByResource>
    #   resp.data.recovery_points[0] #=> Types::RecoveryPointByResource
    #   resp.data.recovery_points[0].recovery_point_arn #=> String
    #   resp.data.recovery_points[0].creation_date #=> Time
    #   resp.data.recovery_points[0].status #=> String, one of ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #   resp.data.recovery_points[0].status_message #=> String
    #   resp.data.recovery_points[0].encryption_key_arn #=> String
    #   resp.data.recovery_points[0].backup_size_bytes #=> Integer
    #   resp.data.recovery_points[0].backup_vault_name #=> String
    #
    def list_recovery_points_by_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecoveryPointsByResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecoveryPointsByResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecoveryPointsByResource
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
        data_parser: Parsers::ListRecoveryPointsByResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecoveryPointsByResource,
        stubs: @stubs,
        params_class: Params::ListRecoveryPointsByResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recovery_points_by_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about your report jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReportJobsInput}.
    #
    # @option params [String] :by_report_plan_name
    #   <p>Returns only report jobs with the specified report plan name.</p>
    #
    # @option params [Time] :by_creation_before
    #   <p>Returns only report jobs that were created before the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #
    # @option params [Time] :by_creation_after
    #   <p>Returns only report jobs that were created after the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #
    # @option params [String] :by_status
    #   <p>Returns only report jobs that are in the specified status. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    # @return [Types::ListReportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_jobs(
    #     by_report_plan_name: 'ByReportPlanName',
    #     by_creation_before: Time.now,
    #     by_creation_after: Time.now,
    #     by_status: 'ByStatus',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportJobsOutput
    #   resp.data.report_jobs #=> Array<ReportJob>
    #   resp.data.report_jobs[0] #=> Types::ReportJob
    #   resp.data.report_jobs[0].report_job_id #=> String
    #   resp.data.report_jobs[0].report_plan_arn #=> String
    #   resp.data.report_jobs[0].report_template #=> String
    #   resp.data.report_jobs[0].creation_time #=> Time
    #   resp.data.report_jobs[0].completion_time #=> Time
    #   resp.data.report_jobs[0].status #=> String
    #   resp.data.report_jobs[0].status_message #=> String
    #   resp.data.report_jobs[0].report_destination #=> Types::ReportDestination
    #   resp.data.report_jobs[0].report_destination.s3_bucket_name #=> String
    #   resp.data.report_jobs[0].report_destination.s3_keys #=> Array<String>
    #   resp.data.report_jobs[0].report_destination.s3_keys[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_report_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListReportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReportJobs,
        stubs: @stubs,
        params_class: Params::ListReportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_report_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of your report plans. For detailed information about a single report
    #          plan, use <code>DescribeReportPlan</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReportPlansInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    # @return [Types::ListReportPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_plans(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportPlansOutput
    #   resp.data.report_plans #=> Array<ReportPlan>
    #   resp.data.report_plans[0] #=> Types::ReportPlan
    #   resp.data.report_plans[0].report_plan_arn #=> String
    #   resp.data.report_plans[0].report_plan_name #=> String
    #   resp.data.report_plans[0].report_plan_description #=> String
    #   resp.data.report_plans[0].report_setting #=> Types::ReportSetting
    #   resp.data.report_plans[0].report_setting.report_template #=> String
    #   resp.data.report_plans[0].report_setting.framework_arns #=> Array<String>
    #   resp.data.report_plans[0].report_setting.framework_arns[0] #=> String
    #   resp.data.report_plans[0].report_setting.number_of_frameworks #=> Integer
    #   resp.data.report_plans[0].report_delivery_channel #=> Types::ReportDeliveryChannel
    #   resp.data.report_plans[0].report_delivery_channel.s3_bucket_name #=> String
    #   resp.data.report_plans[0].report_delivery_channel.s3_key_prefix #=> String
    #   resp.data.report_plans[0].report_delivery_channel.formats #=> Array<String>
    #   resp.data.report_plans[0].report_delivery_channel.formats[0] #=> String
    #   resp.data.report_plans[0].deployment_status #=> String
    #   resp.data.report_plans[0].creation_time #=> Time
    #   resp.data.report_plans[0].last_attempted_execution_time #=> Time
    #   resp.data.report_plans[0].last_successful_execution_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_report_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReportPlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListReportPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReportPlans,
        stubs: @stubs,
        params_class: Params::ListReportPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_report_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of jobs that Backup initiated to restore a saved resource,
    #          including details about the recovery process.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRestoreJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @option params [String] :by_account_id
    #   <p>The account ID to list the jobs from. Returns only restore jobs associated with the
    #            specified account ID.</p>
    #
    # @option params [Time] :by_created_before
    #   <p>Returns only restore jobs that were created before the specified date.</p>
    #
    # @option params [Time] :by_created_after
    #   <p>Returns only restore jobs that were created after the specified date.</p>
    #
    # @option params [String] :by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    #
    # @option params [Time] :by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    # @option params [Time] :by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    # @return [Types::ListRestoreJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_restore_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     by_account_id: 'ByAccountId',
    #     by_created_before: Time.now,
    #     by_created_after: Time.now,
    #     by_status: 'PENDING', # accepts ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #     by_complete_before: Time.now,
    #     by_complete_after: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRestoreJobsOutput
    #   resp.data.restore_jobs #=> Array<RestoreJobsListMember>
    #   resp.data.restore_jobs[0] #=> Types::RestoreJobsListMember
    #   resp.data.restore_jobs[0].account_id #=> String
    #   resp.data.restore_jobs[0].restore_job_id #=> String
    #   resp.data.restore_jobs[0].recovery_point_arn #=> String
    #   resp.data.restore_jobs[0].creation_date #=> Time
    #   resp.data.restore_jobs[0].completion_date #=> Time
    #   resp.data.restore_jobs[0].status #=> String, one of ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #   resp.data.restore_jobs[0].status_message #=> String
    #   resp.data.restore_jobs[0].percent_done #=> String
    #   resp.data.restore_jobs[0].backup_size_in_bytes #=> Integer
    #   resp.data.restore_jobs[0].iam_role_arn #=> String
    #   resp.data.restore_jobs[0].expected_completion_time_minutes #=> Integer
    #   resp.data.restore_jobs[0].created_resource_arn #=> String
    #   resp.data.restore_jobs[0].resource_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_restore_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRestoreJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRestoreJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRestoreJobs
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
        data_parser: Parsers::ListRestoreJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRestoreJobs,
        stubs: @stubs,
        params_class: Params::ListRestoreJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_restore_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of key-value pairs assigned to a target recovery point, backup plan, or
    #          backup vault.</p>
    #          <p>
    #             <code>ListTags</code> only works for resource types that support full Backup
    #          management of their backups. Those resource types are listed in the "Full Backup management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #             availability by resource</a> table.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the type of resource. Valid targets for <code>ListTags</code> are recovery
    #            points, backup plans, and backup vaults.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
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
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets a resource-based policy that is used to manage access permissions on the target
    #          backup vault. Requires a backup vault name and an access policy document in JSON
    #          format.</p>
    #
    # @param [Hash] params
    #   See {Types::PutBackupVaultAccessPolicyInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :policy
    #   <p>The backup vault access policy document in JSON format.</p>
    #
    # @return [Types::PutBackupVaultAccessPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_access_policy(
    #     backup_vault_name: 'BackupVaultName', # required
    #     policy: 'Policy'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBackupVaultAccessPolicyOutput
    #
    def put_backup_vault_access_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBackupVaultAccessPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBackupVaultAccessPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBackupVaultAccessPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutBackupVaultAccessPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBackupVaultAccessPolicy,
        stubs: @stubs,
        params_class: Params::PutBackupVaultAccessPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_backup_vault_access_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies Backup Vault Lock to a backup vault, preventing attempts to delete
    #          any recovery point stored in or created in a backup vault. Vault Lock also prevents
    #          attempts to update the lifecycle policy that controls the retention period of any recovery
    #          point currently stored in a backup vault. If specified, Vault Lock enforces a minimum and
    #          maximum retention period for future backup and copy jobs that target a backup vault.</p>
    #          <note>
    #             <p>Backup Vault Lock has yet to receive a third-party assessment for SEC
    #             17a-4(f) and CFTC.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutBackupVaultLockConfigurationInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The Backup Vault Lock configuration that specifies the name of the backup
    #            vault it protects.</p>
    #
    # @option params [Integer] :min_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the minimum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to retain certain data for at least seven
    #            years (2555 days).</p>
    #            <p>If this parameter is not specified, Vault Lock will not enforce a minimum retention
    #            period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or longer than the minimum retention
    #            period. If the job's retention period is shorter than that minimum retention period, then
    #            the vault fails that backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The shortest minimum retention period
    #            you can specify is 1 day. Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #
    # @option params [Integer] :max_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the maximum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to destroy certain data after retaining
    #            it for four years (1460 days).</p>
    #            <p>If this parameter is not included, Vault Lock does not enforce a maximum retention
    #            period on the recovery points in the vault. If this parameter is included without a value,
    #            Vault Lock will not enforce a maximum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or shorter than the maximum retention
    #            period. If the job's retention period is longer than that maximum retention period, then
    #            the vault fails the backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The longest maximum retention period
    #            you can specify is 36500 days (approximately 100 years).
    #            Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #
    # @option params [Integer] :changeable_for_days
    #   <p>The Backup Vault Lock configuration that specifies the number of days before
    #            the lock date. For example, setting <code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at
    #            8pm UTC will set the lock date to Jan. 31, 2022 at 8pm UTC.</p>
    #            <p>Backup enforces a 72-hour cooling-off period before Vault Lock takes effect
    #            and becomes immutable. Therefore, you must set <code>ChangeableForDays</code> to 3 or
    #            greater.</p>
    #            <p>Before the lock date, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code>. On and after the lock date, the Vault
    #            Lock becomes immutable and cannot be changed or deleted.</p>
    #            <p>If this parameter is not specified, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code> at any time.</p>
    #
    # @return [Types::PutBackupVaultLockConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_lock_configuration(
    #     backup_vault_name: 'BackupVaultName', # required
    #     min_retention_days: 1,
    #     max_retention_days: 1,
    #     changeable_for_days: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBackupVaultLockConfigurationOutput
    #
    def put_backup_vault_lock_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBackupVaultLockConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBackupVaultLockConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBackupVaultLockConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutBackupVaultLockConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBackupVaultLockConfiguration,
        stubs: @stubs,
        params_class: Params::PutBackupVaultLockConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_backup_vault_lock_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Turns on notifications on a backup vault for the specified topic and events.</p>
    #
    # @param [Hash] params
    #   See {Types::PutBackupVaultNotificationsInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
    #            example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>
    #
    # @option params [Array<String>] :backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault.</p>
    #            <p>For common use cases and code samples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/sns-notifications.html">Using Amazon SNS to
    #               track Backup events</a>.</p>
    #            <p>The following events are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BACKUP_JOB_STARTED</code> | <code>BACKUP_JOB_COMPLETED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COPY_JOB_STARTED</code> | <code>COPY_JOB_SUCCESSFUL</code> |
    #                     <code>COPY_JOB_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESTORE_JOB_STARTED</code> | <code>RESTORE_JOB_COMPLETED</code> |
    #                     <code>RECOVERY_POINT_MODIFIED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3_BACKUP_OBJECT_FAILED</code> | <code>S3_RESTORE_OBJECT_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Ignore the list below because it includes deprecated events. Refer to the list
    #               above.</p>
    #            </note>
    #
    # @return [Types::PutBackupVaultNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_vault_notifications(
    #     backup_vault_name: 'BackupVaultName', # required
    #     sns_topic_arn: 'SNSTopicArn', # required
    #     backup_vault_events: [
    #       'BACKUP_JOB_STARTED' # accepts ["BACKUP_JOB_STARTED", "BACKUP_JOB_COMPLETED", "BACKUP_JOB_SUCCESSFUL", "BACKUP_JOB_FAILED", "BACKUP_JOB_EXPIRED", "RESTORE_JOB_STARTED", "RESTORE_JOB_COMPLETED", "RESTORE_JOB_SUCCESSFUL", "RESTORE_JOB_FAILED", "COPY_JOB_STARTED", "COPY_JOB_SUCCESSFUL", "COPY_JOB_FAILED", "RECOVERY_POINT_MODIFIED", "BACKUP_PLAN_CREATED", "BACKUP_PLAN_MODIFIED", "S3_BACKUP_OBJECT_FAILED", "S3_RESTORE_OBJECT_FAILED"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBackupVaultNotificationsOutput
    #
    def put_backup_vault_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBackupVaultNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBackupVaultNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBackupVaultNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutBackupVaultNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBackupVaultNotifications,
        stubs: @stubs,
        params_class: Params::PutBackupVaultNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_backup_vault_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an on-demand backup job for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBackupJobInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartBackupJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @option params [Integer] :start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional, and the default is 8 hours.</p>
    #
    # @option params [Integer] :complete_window_minutes
    #   <p>A value in minutes during which a successfully started backup must complete, or else
    #               Backup will cancel the job. This value is optional. This value begins
    #            counting down from when the backup was scheduled. It does not add additional time for
    #               <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>
    #
    # @option params [Lifecycle] :lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    # @option params [Hash<String, String>] :recovery_point_tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources that
    #            you create. Each tag is a key-value pair.</p>
    #
    # @option params [Hash<String, String>] :backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #               <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #               <code>"WindowsVSS""disabled"</code> to create a regular backup. The
    #               <code>WindowsVSS</code> option is not enabled by default.</p>
    #
    # @return [Types::StartBackupJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_backup_job(
    #     backup_vault_name: 'BackupVaultName', # required
    #     resource_arn: 'ResourceArn', # required
    #     iam_role_arn: 'IamRoleArn', # required
    #     idempotency_token: 'IdempotencyToken',
    #     start_window_minutes: 1,
    #     complete_window_minutes: 1,
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1
    #     },
    #     recovery_point_tags: {
    #       'key' => 'value'
    #     },
    #     backup_options: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBackupJobOutput
    #   resp.data.backup_job_id #=> String
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.creation_date #=> Time
    #
    def start_backup_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBackupJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBackupJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBackupJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartBackupJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBackupJob,
        stubs: @stubs,
        params_class: Params::StartBackupJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_backup_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a job to create a one-time copy of the specified resource.</p>
    #          <p>Does not support continuous backups.</p>
    #
    # @param [Hash] params
    #   See {Types::StartCopyJobInput}.
    #
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point to use for the copy job; for example,
    #            arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #         </p>
    #
    # @option params [String] :source_backup_vault_name
    #   <p>The name of a logical source container where backups are stored. Backup vaults are
    #            identified by names that are unique to the account used to create them and the Amazon Web Services Region where they are created. They consist of lowercase letters, numbers,
    #            and hyphens.</p>
    #
    # @option params [String] :destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to
    #            copy to; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartCopyJob</code>. Retrying a successful request with the same idempotency
    #            token results in a success message with no action taken.</p>
    #
    # @option params [Lifecycle] :lifecycle
    #   <p>Contains an array of <code>Transition</code> objects specifying how long in days before
    #            a recovery point transitions to cold storage or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the “retention” setting must be 90 days greater than the
    #            “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    # @return [Types::StartCopyJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_copy_job(
    #     recovery_point_arn: 'RecoveryPointArn', # required
    #     source_backup_vault_name: 'SourceBackupVaultName', # required
    #     destination_backup_vault_arn: 'DestinationBackupVaultArn', # required
    #     iam_role_arn: 'IamRoleArn', # required
    #     idempotency_token: 'IdempotencyToken',
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCopyJobOutput
    #   resp.data.copy_job_id #=> String
    #   resp.data.creation_date #=> Time
    #
    def start_copy_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCopyJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCopyJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCopyJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartCopyJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCopyJob,
        stubs: @stubs,
        params_class: Params::StartCopyJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_copy_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an on-demand report job for the specified report plan.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReportJobInput}.
    #
    # @option params [String] :report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartReportJobInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @return [Types::StartReportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_report_job(
    #     report_plan_name: 'ReportPlanName', # required
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReportJobOutput
    #   resp.data.report_job_id #=> String
    #
    def start_report_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartReportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReportJob,
        stubs: @stubs,
        params_class: Params::StartReportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_report_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Recovers the saved resource identified by an Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::StartRestoreJobInput}.
    #
    # @option params [String] :recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A set of metadata key-value pairs. Contains information, such as a resource name,
    #            required to restore a recovery point.</p>
    #            <p> You can get configuration metadata about a resource at the time it was backed up by
    #            calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
    #            provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
    #            resource. For example, you might need to provide a new resource name if the original
    #            already exists.</p>
    #            <p>You need to specify specific metadata to restore an Amazon Elastic File System (Amazon EFS) instance:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>file-system-id</code>: The ID of the Amazon EFS file system that is
    #                  backed up by Backup. Returned in
    #                     <code>GetRecoveryPointRestoreMetadata</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Encrypted</code>: A Boolean value that, if true, specifies that the file
    #                  system is encrypted. If <code>KmsKeyId</code> is specified, <code>Encrypted</code>
    #                  must be set to <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KmsKeyId</code>: Specifies the Amazon Web Services KMS key that is used to
    #                  encrypt the restored file system. You can specify a key from another Amazon Web Services account provided that key it is properly shared with your account via Amazon Web Services KMS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PerformanceMode</code>: Specifies the throughput mode of the file
    #                  system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationToken</code>: A user-supplied value that ensures the uniqueness
    #                  (idempotency) of the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>newFileSystem</code>: A Boolean value that, if true, specifies that the
    #                  recovery point is restored to a new Amazon EFS file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemsToRestore</code>: An array of one to five strings where each string is
    #                  a file path. Use <code>ItemsToRestore</code> to restore specific files or directories
    #                  rather than the entire file system. This parameter is optional. For example,
    #                     <code>"itemsToRestore":"[\"/my.test\"]"</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Backup uses to create
    #            the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartRestoreJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @option params [String] :resource_type
    #   <p>Starts a job to restore a recovery point for one of the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StartRestoreJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_restore_job(
    #     recovery_point_arn: 'RecoveryPointArn', # required
    #     metadata: {
    #       'key' => 'value'
    #     }, # required
    #     iam_role_arn: 'IamRoleArn', # required
    #     idempotency_token: 'IdempotencyToken',
    #     resource_type: 'ResourceType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRestoreJobOutput
    #   resp.data.restore_job_id #=> String
    #
    def start_restore_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRestoreJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRestoreJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRestoreJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartRestoreJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRestoreJob,
        stubs: @stubs,
        params_class: Params::StartRestoreJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_restore_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel a job to create a one-time backup of a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::StopBackupJobInput}.
    #
    # @option params [String] :backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    # @return [Types::StopBackupJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_backup_job(
    #     backup_job_id: 'BackupJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopBackupJobOutput
    #
    def stop_backup_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopBackupJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopBackupJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopBackupJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StopBackupJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopBackupJob,
        stubs: @stubs,
        params_class: Params::StopBackupJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_backup_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault
    #          identified by an Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Key-value pairs that are used to help organize your resources. You can assign your own
    #            metadata to the resources you create. For clarity, this is the structure to assign tags:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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

    # <p>Removes a set of key-value pairs from a recovery point, backup plan, or backup vault
    #          identified by an Amazon Resource Name (ARN)</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of keys to identify which key-value tags to remove from a resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_key_list: [
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
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

    # <p>Updates an existing backup plan identified by its <code>backupPlanId</code> with the
    #          input document in JSON format. The new version is uniquely identified by a
    #             <code>VersionId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBackupPlanInput}.
    #
    # @option params [String] :backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    # @option params [BackupPlanInput] :backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    # @return [Types::UpdateBackupPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_backup_plan(
    #     backup_plan_id: 'BackupPlanId', # required
    #     backup_plan: {
    #       backup_plan_name: 'BackupPlanName', # required
    #       rules: [
    #         {
    #           rule_name: 'RuleName', # required
    #           target_backup_vault_name: 'TargetBackupVaultName', # required
    #           schedule_expression: 'ScheduleExpression',
    #           start_window_minutes: 1,
    #           completion_window_minutes: 1,
    #           lifecycle: {
    #             move_to_cold_storage_after_days: 1,
    #             delete_after_days: 1
    #           },
    #           recovery_point_tags: {
    #             'key' => 'value'
    #           },
    #           copy_actions: [
    #             {
    #               destination_backup_vault_arn: 'DestinationBackupVaultArn' # required
    #             }
    #           ],
    #           enable_continuous_backup: false
    #         }
    #       ], # required
    #       advanced_backup_settings: [
    #         {
    #           resource_type: 'ResourceType',
    #           backup_options: {
    #             'key' => 'value'
    #           }
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBackupPlanOutput
    #   resp.data.backup_plan_id #=> String
    #   resp.data.backup_plan_arn #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.version_id #=> String
    #   resp.data.advanced_backup_settings #=> Array<AdvancedBackupSetting>
    #   resp.data.advanced_backup_settings[0] #=> Types::AdvancedBackupSetting
    #   resp.data.advanced_backup_settings[0].resource_type #=> String
    #   resp.data.advanced_backup_settings[0].backup_options #=> Hash<String, String>
    #   resp.data.advanced_backup_settings[0].backup_options['key'] #=> String
    #
    def update_backup_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBackupPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBackupPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBackupPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateBackupPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBackupPlan,
        stubs: @stubs,
        params_class: Params::UpdateBackupPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_backup_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing framework identified by its <code>FrameworkName</code> with the
    #          input document in JSON format.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFrameworkInput}.
    #
    # @option params [String] :framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #
    # @option params [String] :framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    #
    # @option params [Array<FrameworkControl>] :framework_controls
    #   <p>A list of the controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @return [Types::UpdateFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_framework(
    #     framework_name: 'FrameworkName', # required
    #     framework_description: 'FrameworkDescription',
    #     framework_controls: [
    #       {
    #         control_name: 'ControlName', # required
    #         control_input_parameters: [
    #           {
    #             parameter_name: 'ParameterName',
    #             parameter_value: 'ParameterValue'
    #           }
    #         ],
    #         control_scope: {
    #           compliance_resource_ids: [
    #             'member'
    #           ],
    #           compliance_resource_types: [
    #             'member'
    #           ],
    #           tags: {
    #             'key' => 'value'
    #           }
    #         }
    #       }
    #     ],
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFrameworkOutput
    #   resp.data.framework_name #=> String
    #   resp.data.framework_arn #=> String
    #   resp.data.creation_time #=> Time
    #
    def update_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFrameworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::ConflictException, Errors::InvalidParameterValueException, Errors::LimitExceededException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFramework,
        stubs: @stubs,
        params_class: Params::UpdateFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates whether the Amazon Web Services account is opted in to cross-account backup.
    #          Returns an error if the account is not an Organizations management account. Use the
    #             <code>DescribeGlobalSettings</code> API to determine the current settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGlobalSettingsInput}.
    #
    # @option params [Hash<String, String>] :global_settings
    #   <p>A value for <code>isCrossAccountBackupEnabled</code> and a Region. Example:
    #               <code>update-global-settings --global-settings isCrossAccountBackupEnabled=false
    #               --region us-west-2</code>.</p>
    #
    # @return [Types::UpdateGlobalSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings(
    #     global_settings: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGlobalSettingsOutput
    #
    def update_global_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateGlobalSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGlobalSettings,
        stubs: @stubs,
        params_class: Params::UpdateGlobalSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_global_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the transition lifecycle of a recovery point.</p>
    #          <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #          it expires. Backup transitions and expires backups automatically according to
    #          the lifecycle that you define.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #          cold after days” setting. The “transition to cold after days” setting cannot be changed
    #          after a backup has been transitioned to cold.</p>
    #          <p>Only resource types that support full Backup management can transition their
    #          backups to cold storage. Those resource types are listed in the "Full Backup
    #          management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #             availability by resource</a> table. Backup ignores this expression for
    #          other resource types.</p>
    #          <p>This operation does not support continuous backups.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecoveryPointLifecycleInput}.
    #
    # @option params [String] :backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    # @option params [String] :recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    # @option params [Lifecycle] :lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #
    # @return [Types::UpdateRecoveryPointLifecycleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recovery_point_lifecycle(
    #     backup_vault_name: 'BackupVaultName', # required
    #     recovery_point_arn: 'RecoveryPointArn', # required
    #     lifecycle: {
    #       move_to_cold_storage_after_days: 1,
    #       delete_after_days: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecoveryPointLifecycleOutput
    #   resp.data.backup_vault_arn #=> String
    #   resp.data.recovery_point_arn #=> String
    #   resp.data.lifecycle #=> Types::Lifecycle
    #   resp.data.lifecycle.move_to_cold_storage_after_days #=> Integer
    #   resp.data.lifecycle.delete_after_days #=> Integer
    #   resp.data.calculated_lifecycle #=> Types::CalculatedLifecycle
    #   resp.data.calculated_lifecycle.move_to_cold_storage_at #=> Time
    #   resp.data.calculated_lifecycle.delete_at #=> Time
    #
    def update_recovery_point_lifecycle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecoveryPointLifecycleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecoveryPointLifecycleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecoveryPointLifecycle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateRecoveryPointLifecycle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecoveryPointLifecycle,
        stubs: @stubs,
        params_class: Params::UpdateRecoveryPointLifecycleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recovery_point_lifecycle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the current service opt-in settings for the Region. If service-opt-in is enabled
    #          for a service, Backup tries to protect that service's resources in this Region,
    #          when the resource is included in an on-demand backup or scheduled backup plan. Otherwise,
    #             Backup does not try to protect that service's resources in this Region. Use
    #          the <code>DescribeRegionSettings</code> API to determine the resource types that are
    #          supported.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRegionSettingsInput}.
    #
    # @option params [Hash<String, Boolean>] :resource_type_opt_in_preference
    #   <p>Updates the list of services along with the opt-in preferences for the Region.</p>
    #
    # @option params [Hash<String, Boolean>] :resource_type_management_preference
    #   <p>Enables or disables full Backup management of backups for a resource type.
    #            To enable full Backup management for DynamoDB along with <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html">
    #               Backup's advanced DynamoDB backup features</a>, follow the
    #            procedure to <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli"> enable advanced DynamoDB backup programmatically</a>.</p>
    #
    # @return [Types::UpdateRegionSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_region_settings(
    #     resource_type_opt_in_preference: {
    #       'key' => false
    #     },
    #     resource_type_management_preference: {
    #       'key' => false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRegionSettingsOutput
    #
    def update_region_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRegionSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRegionSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRegionSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateRegionSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRegionSettings,
        stubs: @stubs,
        params_class: Params::UpdateRegionSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_region_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing report plan identified by its <code>ReportPlanName</code> with the
    #          input document in JSON format.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReportPlanInput}.
    #
    # @option params [String] :report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters, starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    #
    # @option params [String] :report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    #
    # @option params [ReportDeliveryChannel] :report_delivery_channel
    #   <p>A structure that contains information about where to deliver your reports, specifically
    #            your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    #
    # @option params [ReportSetting] :report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    # @return [Types::UpdateReportPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_plan(
    #     report_plan_name: 'ReportPlanName', # required
    #     report_plan_description: 'ReportPlanDescription',
    #     report_delivery_channel: {
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_key_prefix: 'S3KeyPrefix',
    #       formats: [
    #         'member'
    #       ]
    #     },
    #     report_setting: {
    #       report_template: 'ReportTemplate', # required
    #       framework_arns: [
    #         'member'
    #       ],
    #       number_of_frameworks: 1
    #     },
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReportPlanOutput
    #   resp.data.report_plan_name #=> String
    #   resp.data.report_plan_arn #=> String
    #   resp.data.creation_time #=> Time
    #
    def update_report_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReportPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReportPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReportPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InvalidParameterValueException, Errors::MissingParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateReportPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReportPlan,
        stubs: @stubs,
        params_class: Params::UpdateReportPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_report_plan
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
