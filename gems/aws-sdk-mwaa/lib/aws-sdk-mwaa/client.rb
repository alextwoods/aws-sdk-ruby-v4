# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MWAA
  # An API client for AmazonMWAA
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Managed Workflows for Apache Airflow</fullname>
  #         <p>This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API reference documentation. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html">What Is Amazon MWAA?</a>.</p>
  #
  #         <p>
  #             <b>Endpoints</b>
  #          </p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <code>api.airflow.{region}.amazonaws.com</code> - This endpoint is used for environment management.</p>
  #                 <ul>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateEnvironment.html">CreateEnvironment</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_DeleteEnvironment.html">DeleteEnvironment</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_GetEnvironment.html">GetEnvironment</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_ListEnvironments.html">ListEnvironments</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_ListTagsForResource.html">ListTagsForResource</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_TagResource.html">TagResource</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_UntagResource.html">UntagResource</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_UpdateEnvironment.html">UpdateEnvironment</a>
  #                      </p>
  #                     </li>
  #                </ul>
  #             </li>
  #             <li>
  #                 <p>
  #                   <code>env.airflow.{region}.amazonaws.com</code> - This endpoint is used to operate the Airflow environment.</p>
  #                 <ul>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateCliToken.html ">CreateCliToken</a>
  #                      </p>
  #                     </li>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_CreateWebLoginToken.html">CreateWebLoginToken</a>
  #                      </p>
  #                     </li>
  #                </ul>
  #             </li>
  #             <li>
  #                 <p>
  #                   <code>ops.airflow.{region}.amazonaws.com</code> - This endpoint is used to push environment metrics that track environment health.</p>
  #                 <ul>
  #                   <li>
  #                         <p>
  #                         <a href="https://docs.aws.amazon.com/mwaa/latest/API/API_PublishMetrics.html ">PublishMetrics</a>
  #                      </p>
  #                     </li>
  #                </ul>
  #             </li>
  #          </ul>
  #
  #         <p>
  #             <b>Regions</b>
  #          </p>
  #         <p>For a list of regions that Amazon MWAA supports, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html#regions-mwaa">Region availability</a> in the <i>Amazon MWAA User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::MWAA::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a CLI token for the Airflow CLI. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html">Creating an Apache Airflow CLI token</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCliTokenInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @return [Types::CreateCliTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cli_token(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCliTokenOutput
    #   resp.data.cli_token #=> String
    #   resp.data.web_server_hostname #=> String
    #
    def create_cli_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCliTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCliTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "env.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCliToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateCliToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCliToken,
        stubs: @stubs,
        params_class: Params::CreateCliTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cli_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for your environment. An execution role is an Amazon Web Services Identity and Access Management (IAM) role that grants MWAA permission to access Amazon Web Services services and resources used by your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #
    # @option params [String] :source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #
    # @option params [String] :dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    # @option params [String] :plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    # @option params [String] :plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. A version must be specified each time a plugins.zip file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    # @option params [String] :requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    # @option params [String] :requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. A version must be specified each time a requirements.txt file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    # @option params [Hash<String, String>] :airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #
    # @option params [String] :environment_class
    #   <p>The environment class type. Valid values: <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #
    # @option params [Integer] :max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Web Services Key Management Service (KMS) key to encrypt the data in your environment. You can use an Amazon Web Services owned CMK, or a Customer managed CMK (advanced). To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html">Create an Amazon MWAA environment</a>.</p>
    #
    # @option params [String] :airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, defaults to the latest version. Valid values: <code>1.10.12</code>, <code>2.0.2</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html">Apache Airflow versions on Amazon Managed Workflows for Apache Airflow (MWAA)</a>.</p>
    #
    # @option params [LoggingConfigurationInput] :logging_configuration
    #   <p>Defines the Apache Airflow logs to send to CloudWatch Logs.</p>
    #
    # @option params [String] :weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @option params [String] :webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #
    # @option params [Integer] :min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #
    # @option params [Integer] :schedulers
    #   <p>The number of Apache Airflow schedulers to run in your environment. Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>v2.0.2 - Accepts between 2 to 5. Defaults to 2.</p>
    #               </li>
    #               <li>
    #                   <p>v1.10.12 - Accepts 1.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     name: 'Name', # required
    #     execution_role_arn: 'ExecutionRoleArn', # required
    #     source_bucket_arn: 'SourceBucketArn', # required
    #     dag_s3_path: 'DagS3Path', # required
    #     network_configuration: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     }, # required
    #     plugins_s3_path: 'PluginsS3Path',
    #     plugins_s3_object_version: 'PluginsS3ObjectVersion',
    #     requirements_s3_path: 'RequirementsS3Path',
    #     requirements_s3_object_version: 'RequirementsS3ObjectVersion',
    #     airflow_configuration_options: {
    #       'key' => 'value'
    #     },
    #     environment_class: 'EnvironmentClass',
    #     max_workers: 1,
    #     kms_key: 'KmsKey',
    #     airflow_version: 'AirflowVersion',
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: 'CRITICAL' # required - accepts ["CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"]
    #       },
    #     },
    #     weekly_maintenance_window_start: 'WeeklyMaintenanceWindowStart',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     webserver_access_mode: 'PRIVATE_ONLY', # accepts ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #     min_workers: 1,
    #     schedulers: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.arn #=> String
    #
    def create_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironment,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a web login token for the Airflow Web UI. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html">Creating an Apache Airflow web login token</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWebLoginTokenInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @return [Types::CreateWebLoginTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_login_token(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWebLoginTokenOutput
    #   resp.data.web_token #=> String
    #   resp.data.web_server_hostname #=> String
    #
    def create_web_login_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWebLoginTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWebLoginTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "env.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWebLoginToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateWebLoginToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWebLoginToken,
        stubs: @stubs,
        params_class: Params::CreateWebLoginTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_web_login_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @return [Types::GetEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentOutput
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.name #=> String
    #   resp.data.environment.status #=> String, one of ["CREATING", "CREATE_FAILED", "AVAILABLE", "UPDATING", "DELETING", "DELETED", "UNAVAILABLE", "UPDATE_FAILED"]
    #   resp.data.environment.arn #=> String
    #   resp.data.environment.created_at #=> Time
    #   resp.data.environment.webserver_url #=> String
    #   resp.data.environment.execution_role_arn #=> String
    #   resp.data.environment.service_role_arn #=> String
    #   resp.data.environment.kms_key #=> String
    #   resp.data.environment.airflow_version #=> String
    #   resp.data.environment.source_bucket_arn #=> String
    #   resp.data.environment.dag_s3_path #=> String
    #   resp.data.environment.plugins_s3_path #=> String
    #   resp.data.environment.plugins_s3_object_version #=> String
    #   resp.data.environment.requirements_s3_path #=> String
    #   resp.data.environment.requirements_s3_object_version #=> String
    #   resp.data.environment.airflow_configuration_options #=> Hash<String, String>
    #   resp.data.environment.airflow_configuration_options['key'] #=> String
    #   resp.data.environment.environment_class #=> String
    #   resp.data.environment.max_workers #=> Integer
    #   resp.data.environment.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.environment.network_configuration.subnet_ids #=> Array<String>
    #   resp.data.environment.network_configuration.subnet_ids[0] #=> String
    #   resp.data.environment.network_configuration.security_group_ids #=> Array<String>
    #   resp.data.environment.network_configuration.security_group_ids[0] #=> String
    #   resp.data.environment.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.environment.logging_configuration.dag_processing_logs #=> Types::ModuleLoggingConfiguration
    #   resp.data.environment.logging_configuration.dag_processing_logs.enabled #=> Boolean
    #   resp.data.environment.logging_configuration.dag_processing_logs.log_level #=> String, one of ["CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"]
    #   resp.data.environment.logging_configuration.dag_processing_logs.cloud_watch_log_group_arn #=> String
    #   resp.data.environment.logging_configuration.scheduler_logs #=> Types::ModuleLoggingConfiguration
    #   resp.data.environment.logging_configuration.webserver_logs #=> Types::ModuleLoggingConfiguration
    #   resp.data.environment.logging_configuration.worker_logs #=> Types::ModuleLoggingConfiguration
    #   resp.data.environment.logging_configuration.task_logs #=> Types::ModuleLoggingConfiguration
    #   resp.data.environment.last_update #=> Types::LastUpdate
    #   resp.data.environment.last_update.status #=> String, one of ["SUCCESS", "PENDING", "FAILED"]
    #   resp.data.environment.last_update.created_at #=> Time
    #   resp.data.environment.last_update.error #=> Types::UpdateError
    #   resp.data.environment.last_update.error.error_code #=> String
    #   resp.data.environment.last_update.error.error_message #=> String
    #   resp.data.environment.last_update.source #=> String
    #   resp.data.environment.weekly_maintenance_window_start #=> String
    #   resp.data.environment.tags #=> Hash<String, String>
    #   resp.data.environment.tags['key'] #=> String
    #   resp.data.environment.webserver_access_mode #=> String, one of ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #   resp.data.environment.min_workers #=> Integer
    #   resp.data.environment.schedulers #=> Integer
    #
    def get_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironment,
        stubs: @stubs,
        params_class: Params::GetEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :next_token
    #   <p>Retrieves the next page of the results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve per page. For example, <code>5</code> environments per page.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.environments #=> Array<String>
    #   resp.data.environments[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, <code>"Environment": "Staging"</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
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
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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
    #             <b>Internal only</b>. Publishes environment health metrics to Amazon CloudWatch.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishMetricsInput}.
    #
    # @option params [String] :environment_name
    #   <p>
    #               <b>Internal only</b>. The name of the environment.</p>
    #
    # @option params [Array<MetricDatum>] :metric_data
    #   <p>
    #               <b>Internal only</b>. Publishes metrics to Amazon CloudWatch. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #
    # @return [Types::PublishMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_metrics(
    #     environment_name: 'EnvironmentName', # required
    #     metric_data: [
    #       {
    #         metric_name: 'MetricName', # required
    #         timestamp: Time.now, # required
    #         dimensions: [
    #           {
    #             name: 'Name', # required
    #             value: 'Value' # required
    #           }
    #         ],
    #         value: 1.0,
    #         unit: 'Seconds', # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         statistic_values: {
    #           sample_count: 1,
    #           sum: 1.0,
    #           minimum: 1.0,
    #           maximum: 1.0
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishMetricsOutput
    #
    def publish_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "ops.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::PublishMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishMetrics,
        stubs: @stubs,
        params_class: Params::PublishMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. To learn more, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
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
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, <code>"Environment": "Staging"</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key-value tag pair you want to remove. For example, <code>"Environment": "Staging"</code>. </p>
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
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The name of your Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #
    # @option params [String] :airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, defaults to the latest version. Valid values: <code>1.10.12</code>, <code>2.0.2</code>.</p>
    #
    # @option params [String] :source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #
    # @option params [String] :dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #
    # @option params [String] :plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #
    # @option params [String] :plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. A version must be specified each time a plugins.zip file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    # @option params [String] :requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #
    # @option params [String] :requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. A version must be specified each time a requirements.txt file is updated. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #
    # @option params [Hash<String, String>] :airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #
    # @option params [String] :environment_class
    #   <p>The environment class type. Valid values: <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #
    # @option params [Integer] :max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #
    # @option params [UpdateNetworkConfigurationInput] :network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #
    # @option params [LoggingConfigurationInput] :logging_configuration
    #   <p>The Apache Airflow log types to send to CloudWatch Logs.</p>
    #
    # @option params [String] :weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #
    # @option params [String] :webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #
    # @option params [Integer] :min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #
    # @option params [Integer] :schedulers
    #   <p>The number of Apache Airflow schedulers to run in your Amazon MWAA environment.</p>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     name: 'Name', # required
    #     execution_role_arn: 'ExecutionRoleArn',
    #     airflow_version: 'AirflowVersion',
    #     source_bucket_arn: 'SourceBucketArn',
    #     dag_s3_path: 'DagS3Path',
    #     plugins_s3_path: 'PluginsS3Path',
    #     plugins_s3_object_version: 'PluginsS3ObjectVersion',
    #     requirements_s3_path: 'RequirementsS3Path',
    #     requirements_s3_object_version: 'RequirementsS3ObjectVersion',
    #     airflow_configuration_options: {
    #       'key' => 'value'
    #     },
    #     environment_class: 'EnvironmentClass',
    #     max_workers: 1,
    #     network_configuration: {
    #       security_group_ids: [
    #         'member'
    #       ] # required
    #     },
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: 'CRITICAL' # required - accepts ["CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"]
    #       },
    #     },
    #     weekly_maintenance_window_start: 'WeeklyMaintenanceWindowStart',
    #     webserver_access_mode: 'PRIVATE_ONLY', # accepts ["PRIVATE_ONLY", "PUBLIC_ONLY"]
    #     min_workers: 1,
    #     schedulers: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #   resp.data.arn #=> String
    #
    def update_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment
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
