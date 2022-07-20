# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DatabaseMigrationService
  # An API client for AmazonDMSv20160101
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Database Migration Service</fullname>
  #          <p>Database Migration Service (DMS) can migrate your data to and from the most
  #          widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL
  #          Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise
  #          (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as
  #          heterogeneous migrations between different database platforms, such as Oracle to MySQL or
  #          SQL Server to PostgreSQL.</p>
  #          <p>For more information about DMS, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html">What Is Database Migration Service?</a>
  #          in the <i>Database Migration Service User Guide.</i>
  #          </p>
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
    def initialize(config = AWS::SDK::DatabaseMigrationService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds metadata tags to an DMS resource, including replication instance, endpoint,
    #          security group, and migration task. These tags can also be used with cost allocation
    #          reporting to track cost associated with DMS resources, or used in a Condition statement in
    #          an IAM policy for DMS. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a> data type description.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Identifies the DMS resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN).</p>
    #            <p>For DMS, you can tag a replication instance, an endpoint, or a replication task.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the resource.</p>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToResourceOutput
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::AddTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToResource,
        stubs: @stubs,
        params_class: Params::AddTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a pending maintenance action to a resource (for example, to a replication instance).</p>
    #
    # @param [Hash] params
    #   See {Types::ApplyPendingMaintenanceActionInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance
    #            action applies to.</p>
    #
    # @option params [String] :apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>os-upgrade</code>, <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    #
    # @option params [String] :opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. You can't undo an
    #            opt-in request of type <code>immediate</code>.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #                  maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #                  requests.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ApplyPendingMaintenanceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_pending_maintenance_action(
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     apply_action: 'ApplyAction', # required
    #     opt_in_type: 'OptInType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplyPendingMaintenanceActionOutput
    #   resp.data.resource_pending_maintenance_actions #=> Types::ResourcePendingMaintenanceActions
    #   resp.data.resource_pending_maintenance_actions.resource_identifier #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details #=> Array<PendingMaintenanceAction>
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0] #=> Types::PendingMaintenanceAction
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].action #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.data.resource_pending_maintenance_actions.pending_maintenance_action_details[0].description #=> String
    #
    def apply_pending_maintenance_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplyPendingMaintenanceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplyPendingMaintenanceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplyPendingMaintenanceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::ApplyPendingMaintenanceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplyPendingMaintenanceAction,
        stubs: @stubs,
        params_class: Params::ApplyPendingMaintenanceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_pending_maintenance_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a single premigration assessment run.</p>
    #          <p>This operation prevents any individual assessments from running if they haven't started
    #          running. It also attempts to cancel any individual assessments that are currently
    #          running.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelReplicationTaskAssessmentRunInput}.
    #
    # @option params [String] :replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>
    #
    # @return [Types::CancelReplicationTaskAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_replication_task_assessment_run(
    #     replication_task_assessment_run_arn: 'ReplicationTaskAssessmentRunArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelReplicationTaskAssessmentRunOutput
    #   resp.data.replication_task_assessment_run #=> Types::ReplicationTaskAssessmentRun
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.data.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.data.replication_task_assessment_run.status #=> String
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.data.replication_task_assessment_run.assessment_progress #=> Types::ReplicationTaskAssessmentRunProgress
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.data.replication_task_assessment_run.last_failure_message #=> String
    #   resp.data.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.data.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.data.replication_task_assessment_run.result_location_folder #=> String
    #   resp.data.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.data.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.data.replication_task_assessment_run.assessment_run_name #=> String
    #
    def cancel_replication_task_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelReplicationTaskAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelReplicationTaskAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelReplicationTaskAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault]),
        data_parser: Parsers::CancelReplicationTaskAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelReplicationTaskAssessmentRun,
        stubs: @stubs,
        params_class: Params::CancelReplicationTaskAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_replication_task_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint using the provided settings.</p>
    #          <note>
    #             <p>For a MySQL source or target endpoint, don't explicitly specify the database using
    #          the <code>DatabaseName</code> request parameter on the <code>CreateEndpoint</code> API call.
    #          Specifying <code>DatabaseName</code> when you create a MySQL endpoint replicates all the
    #          task tables to this single database. For MySQL endpoints, you specify the database only when
    #          you specify the schema in the table-mapping rules of the DMS task.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointInput}.
    #
    # @option params [String] :endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two
    #            consecutive hyphens.</p>
    #
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    # @option params [String] :engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the
    #            <code>EndpointType</code> value, include <code>"mysql"</code>, <code>"oracle"</code>,
    #             <code>"postgres"</code>, <code>"mariadb"</code>, <code>"aurora"</code>,
    #             <code>"aurora-postgresql"</code>, <code>"opensearch"</code>, <code>"redshift"</code>, <code>"s3"</code>,
    #            <code>"db2"</code>, <code>"azuredb"</code>, <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #            <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>, <code>"docdb"</code>,
    #            <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    # @option params [String] :username
    #   <p>The user name to be used to log in to the endpoint database.</p>
    #
    # @option params [String] :password
    #   <p>The password to be used to log in to the endpoint database.</p>
    #
    # @option params [String] :server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #
    # @option params [Integer] :port
    #   <p>The port used by the endpoint database.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.
    #         To migrate to a specific database, use this setting and <code>targetDbType</code>.</p>
    #
    # @option params [String] :extra_connection_attributes
    #   <p>Additional attributes associated with the connection. Each attribute is specified as a
    #            name-value pair associated by an equal sign (=). Multiple attributes are separated by a
    #            semicolon (;) with no additional white space. For information on the attributes available
    #            for connecting your source or target endpoint, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html">Working with
    #               DMS Endpoints</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    # @option params [String] :kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the endpoint.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #
    # @option params [String] :ssl_mode
    #   <p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is <code>none</code>
    #            </p>
    #
    # @option params [String] :service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the service access role that you want to use to
    #             create the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    # @option params [String] :external_table_definition
    #   <p>The external table definition. </p>
    #
    # @option params [DynamoDbSettings] :dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other
    #               available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate
    #                   Data to DynamoDB</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    # @option params [S3Settings] :s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [DmsTransferSettings] :dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Possible settings include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ServiceAccessRoleArn</code> - The Amazon Resource Name (ARN) used by the service access IAM role.
    #                    The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BucketName</code> - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows:
    #               <code>ServiceAccessRoleArn=string,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn":
    #               "string", "BucketName": "string", } </code>
    #            </p>
    #
    # @option params [MongoDbSettings] :mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings
    #               when using MongoDB as a source for Database Migration Service</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [KinesisSettings] :kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to
    #               migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [KafkaSettings] :kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using object mapping
    #               to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    # @option params [ElasticsearchSettings] :elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
    #             the <i>Database Migration Service User Guide</i>.</p>
    #
    # @option params [NeptuneSettings] :neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint.
    #            For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a>
    #               in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [RedshiftSettings] :redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #
    # @option params [PostgreSQLSettings] :postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection
    #               attributes when using PostgreSQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib">
    #                  Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #             <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [MySQLSettings] :my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes
    #               when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for DMS</a> in
    #             the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [OracleSettings] :oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes
    #               when using Oracle as a source for DMS</a> and
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a>
    #             in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [SybaseSettings] :sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra connection attributes
    #                   when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
    #                       User Guide.</i>
    #            </p>
    #
    # @option params [MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection
    #               attributes when using SQL Server as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib">
    #               Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [IBMDb2Settings] :ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra connection attributes
    #               when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    # @option params [DocDbSettings] :doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    #
    # @option params [RedisSettings] :redis_settings
    #   <p>Settings in JSON format for the target Redis endpoint.</p>
    #
    # @option params [GcpMySQLSettings] :gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    # @return [Types::CreateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint(
    #     endpoint_identifier: 'EndpointIdentifier', # required
    #     endpoint_type: 'source', # required - accepts ["source", "target"]
    #     engine_name: 'EngineName', # required
    #     username: 'Username',
    #     password: 'Password',
    #     server_name: 'ServerName',
    #     port: 1,
    #     database_name: 'DatabaseName',
    #     extra_connection_attributes: 'ExtraConnectionAttributes',
    #     kms_key_id: 'KmsKeyId',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ],
    #     certificate_arn: 'CertificateArn',
    #     ssl_mode: 'none', # accepts ["none", "require", "verify-ca", "verify-full"]
    #     service_access_role_arn: 'ServiceAccessRoleArn',
    #     external_table_definition: 'ExternalTableDefinition',
    #     dynamo_db_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn' # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       external_table_definition: 'ExternalTableDefinition',
    #       csv_row_delimiter: 'CsvRowDelimiter',
    #       csv_delimiter: 'CsvDelimiter',
    #       bucket_folder: 'BucketFolder',
    #       bucket_name: 'BucketName',
    #       compression_type: 'none', # accepts ["none", "gzip"]
    #       encryption_mode: 'sse-s3', # accepts ["sse-s3", "sse-kms"]
    #       server_side_encryption_kms_key_id: 'ServerSideEncryptionKmsKeyId',
    #       data_format: 'csv', # accepts ["csv", "parquet"]
    #       encoding_type: 'plain', # accepts ["plain", "plain-dictionary", "rle-dictionary"]
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: 'parquet-1-0', # accepts ["parquet-1-0", "parquet-2-0"]
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: 'TimestampColumnName',
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: 'YYYYMMDD', # accepts ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #       date_partition_delimiter: 'SLASH', # accepts ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #       use_csv_no_sup_value: false,
    #       csv_no_sup_value: 'CsvNoSupValue',
    #       preserve_transactions: false,
    #       cdc_path: 'CdcPath',
    #       use_task_start_time_for_full_load_timestamp: false,
    #       canned_acl_for_objects: 'none', # accepts ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #       add_column_name: false,
    #       cdc_max_batch_interval: 1,
    #       cdc_min_file_size: 1,
    #       csv_null_value: 'CsvNullValue',
    #       ignore_header_rows: 1,
    #       max_file_size: 1,
    #       rfc4180: false,
    #       date_partition_timezone: 'DatePartitionTimezone'
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       bucket_name: 'BucketName'
    #     },
    #     mongo_db_settings: {
    #       username: 'Username',
    #       password: 'Password',
    #       server_name: 'ServerName',
    #       port: 1,
    #       database_name: 'DatabaseName',
    #       auth_type: 'no', # accepts ["no", "password"]
    #       auth_mechanism: 'default', # accepts ["default", "mongodb_cr", "scram_sha_1"]
    #       nesting_level: 'none', # accepts ["none", "one"]
    #       extract_doc_id: 'ExtractDocId',
    #       docs_to_investigate: 'DocsToInvestigate',
    #       auth_source: 'AuthSource',
    #       kms_key_id: 'KmsKeyId',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     kinesis_settings: {
    #       stream_arn: 'StreamArn',
    #       message_format: 'json', # accepts ["json", "json-unformatted"]
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #       no_hex_prefix: false
    #     },
    #     kafka_settings: {
    #       broker: 'Broker',
    #       topic: 'Topic',
    #       message_format: 'json', # accepts ["json", "json-unformatted"]
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #       security_protocol: 'plaintext', # accepts ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #       ssl_client_certificate_arn: 'SslClientCertificateArn',
    #       ssl_client_key_arn: 'SslClientKeyArn',
    #       ssl_client_key_password: 'SslClientKeyPassword',
    #       ssl_ca_certificate_arn: 'SslCaCertificateArn',
    #       sasl_username: 'SaslUsername',
    #       sasl_password: 'SaslPassword',
    #       no_hex_prefix: false
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn', # required
    #       endpoint_uri: 'EndpointUri', # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_bucket_folder: 'S3BucketFolder', # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: 'AfterConnectScript',
    #       bucket_folder: 'BucketFolder',
    #       bucket_name: 'BucketName',
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: 'DatabaseName',
    #       date_format: 'DateFormat',
    #       empty_as_null: false,
    #       encryption_mode: 'sse-s3', # accepts ["sse-s3", "sse-kms"]
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: 'Password',
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: 'ReplaceInvalidChars',
    #       replace_chars: 'ReplaceChars',
    #       server_name: 'ServerName',
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       server_side_encryption_kms_key_id: 'ServerSideEncryptionKmsKeyId',
    #       time_format: 'TimeFormat',
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: 'Username',
    #       write_buffer_size: 1,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: 'DatabaseName',
    #       ddl_artifacts_schema: 'DdlArtifactsSchema',
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       heartbeat_enable: false,
    #       heartbeat_schema: 'HeartbeatSchema',
    #       heartbeat_frequency: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       slot_name: 'SlotName',
    #       plugin_name: 'no-preference', # accepts ["no-preference", "test-decoding", "pglogical"]
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     my_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: 'DatabaseName',
    #       events_poll_interval: 1,
    #       target_db_type: 'specific-database', # accepts ["specific-database", "multiple-databases"]
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       server_timezone: 'ServerTimezone',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       extra_archived_log_dest_ids: [
    #         1
    #       ],
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: 'OraclePathPrefix',
    #       use_path_prefix: 'UsePathPrefix',
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: 'AsmPassword',
    #       asm_server: 'AsmServer',
    #       asm_user: 'AsmUser',
    #       char_length_semantics: 'default', # accepts ["default", "char", "byte"]
    #       database_name: 'DatabaseName',
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: 'Password',
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: 'SecurityDbEncryption',
    #       security_db_encryption_name: 'SecurityDbEncryptionName',
    #       server_name: 'ServerName',
    #       spatial_data_option_to_geo_json_function_name: 'SpatialDataOptionToGeoJsonFunctionName',
    #       standby_delay_time: 1,
    #       username: 'Username',
    #       use_b_file: false,
    #       use_direct_path_full_load: false,
    #       use_logminer_reader: false,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId',
    #       secrets_manager_oracle_asm_access_role_arn: 'SecretsManagerOracleAsmAccessRoleArn',
    #       secrets_manager_oracle_asm_secret_id: 'SecretsManagerOracleAsmSecretId'
    #     },
    #     sybase_settings: {
    #       database_name: 'DatabaseName',
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: 'DatabaseName',
    #       control_tables_file_group: 'ControlTablesFileGroup',
    #       password: 'Password',
    #       query_single_always_on_node: false,
    #       read_backup_only: false,
    #       safeguard_policy: 'rely-on-sql-server-replication-agent', # accepts ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       use_bcp_full_load: false,
    #       use_third_party_backup_device: false,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     ibm_db2_settings: {
    #       database_name: 'DatabaseName',
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       set_data_capture_changes: false,
    #       current_lsn: 'CurrentLsn',
    #       max_k_bytes_per_read: 1,
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     resource_identifier: 'ResourceIdentifier',
    #     doc_db_settings: {
    #       username: 'Username',
    #       password: 'Password',
    #       server_name: 'ServerName',
    #       port: 1,
    #       database_name: 'DatabaseName',
    #       nesting_level: 'none', # accepts ["none", "one"]
    #       extract_doc_id: false,
    #       docs_to_investigate: 1,
    #       kms_key_id: 'KmsKeyId',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     redis_settings: {
    #       server_name: 'ServerName', # required
    #       port: 1, # required
    #       ssl_security_protocol: 'plaintext', # accepts ["plaintext", "ssl-encryption"]
    #       auth_type: 'none', # accepts ["none", "auth-role", "auth-token"]
    #       auth_user_name: 'AuthUserName',
    #       auth_password: 'AuthPassword',
    #       ssl_ca_certificate_arn: 'SslCaCertificateArn'
    #     },
    #     gcp_my_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: 'DatabaseName',
    #       events_poll_interval: 1,
    #       target_db_type: 'specific-database', # accepts ["specific-database", "multiple-databases"]
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       server_timezone: 'ServerTimezone',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointOutput
    #   resp.data.endpoint #=> Types::Endpoint
    #   resp.data.endpoint.endpoint_identifier #=> String
    #   resp.data.endpoint.endpoint_type #=> String, one of ["source", "target"]
    #   resp.data.endpoint.engine_name #=> String
    #   resp.data.endpoint.engine_display_name #=> String
    #   resp.data.endpoint.username #=> String
    #   resp.data.endpoint.server_name #=> String
    #   resp.data.endpoint.port #=> Integer
    #   resp.data.endpoint.database_name #=> String
    #   resp.data.endpoint.extra_connection_attributes #=> String
    #   resp.data.endpoint.status #=> String
    #   resp.data.endpoint.kms_key_id #=> String
    #   resp.data.endpoint.endpoint_arn #=> String
    #   resp.data.endpoint.certificate_arn #=> String
    #   resp.data.endpoint.ssl_mode #=> String, one of ["none", "require", "verify-ca", "verify-full"]
    #   resp.data.endpoint.service_access_role_arn #=> String
    #   resp.data.endpoint.external_table_definition #=> String
    #   resp.data.endpoint.external_id #=> String
    #   resp.data.endpoint.dynamo_db_settings #=> Types::DynamoDbSettings
    #   resp.data.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings #=> Types::S3Settings
    #   resp.data.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings.external_table_definition #=> String
    #   resp.data.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.data.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.data.endpoint.s3_settings.bucket_folder #=> String
    #   resp.data.endpoint.s3_settings.bucket_name #=> String
    #   resp.data.endpoint.s3_settings.compression_type #=> String, one of ["none", "gzip"]
    #   resp.data.endpoint.s3_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.s3_settings.data_format #=> String, one of ["csv", "parquet"]
    #   resp.data.endpoint.s3_settings.encoding_type #=> String, one of ["plain", "plain-dictionary", "rle-dictionary"]
    #   resp.data.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.data.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.data.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.data.endpoint.s3_settings.parquet_version #=> String, one of ["parquet-1-0", "parquet-2-0"]
    #   resp.data.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.data.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.data.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.data.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_sequence #=> String, one of ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #   resp.data.endpoint.s3_settings.date_partition_delimiter #=> String, one of ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #   resp.data.endpoint.s3_settings.use_csv_no_sup_value #=> Boolean
    #   resp.data.endpoint.s3_settings.csv_no_sup_value #=> String
    #   resp.data.endpoint.s3_settings.preserve_transactions #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_path #=> String
    #   resp.data.endpoint.s3_settings.use_task_start_time_for_full_load_timestamp #=> Boolean
    #   resp.data.endpoint.s3_settings.canned_acl_for_objects #=> String, one of ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.endpoint.s3_settings.add_column_name #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_max_batch_interval #=> Integer
    #   resp.data.endpoint.s3_settings.cdc_min_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.csv_null_value #=> String
    #   resp.data.endpoint.s3_settings.ignore_header_rows #=> Integer
    #   resp.data.endpoint.s3_settings.max_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.rfc4180 #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_timezone #=> String
    #   resp.data.endpoint.dms_transfer_settings #=> Types::DmsTransferSettings
    #   resp.data.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.data.endpoint.mongo_db_settings #=> Types::MongoDbSettings
    #   resp.data.endpoint.mongo_db_settings.username #=> String
    #   resp.data.endpoint.mongo_db_settings.password #=> String
    #   resp.data.endpoint.mongo_db_settings.server_name #=> String
    #   resp.data.endpoint.mongo_db_settings.port #=> Integer
    #   resp.data.endpoint.mongo_db_settings.database_name #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_type #=> String, one of ["no", "password"]
    #   resp.data.endpoint.mongo_db_settings.auth_mechanism #=> String, one of ["default", "mongodb_cr", "scram_sha_1"]
    #   resp.data.endpoint.mongo_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.data.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.data.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.kinesis_settings #=> Types::KinesisSettings
    #   resp.data.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.data.endpoint.kinesis_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kinesis_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.kafka_settings #=> Types::KafkaSettings
    #   resp.data.endpoint.kafka_settings.broker #=> String
    #   resp.data.endpoint.kafka_settings.topic #=> String
    #   resp.data.endpoint.kafka_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.data.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kafka_settings.security_protocol #=> String, one of ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #   resp.data.endpoint.kafka_settings.ssl_client_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_password #=> String
    #   resp.data.endpoint.kafka_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.sasl_username #=> String
    #   resp.data.endpoint.kafka_settings.sasl_password #=> String
    #   resp.data.endpoint.kafka_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.elasticsearch_settings #=> Types::ElasticsearchSettings
    #   resp.data.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.data.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.data.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings #=> Types::NeptuneSettings
    #   resp.data.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.data.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.data.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.data.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.data.endpoint.redshift_settings #=> Types::RedshiftSettings
    #   resp.data.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.data.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.data.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.data.endpoint.redshift_settings.bucket_name #=> String
    #   resp.data.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.data.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.data.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.database_name #=> String
    #   resp.data.endpoint.redshift_settings.date_format #=> String
    #   resp.data.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.data.endpoint.redshift_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.data.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.data.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.data.endpoint.redshift_settings.password #=> String
    #   resp.data.endpoint.redshift_settings.port #=> Integer
    #   resp.data.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.data.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.data.endpoint.redshift_settings.replace_chars #=> String
    #   resp.data.endpoint.redshift_settings.server_name #=> String
    #   resp.data.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.redshift_settings.time_format #=> String
    #   resp.data.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.data.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.data.endpoint.redshift_settings.username #=> String
    #   resp.data.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.data.endpoint.redshift_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.postgre_sql_settings #=> Types::PostgreSQLSettings
    #   resp.data.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_enable #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_frequency #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.password #=> String
    #   resp.data.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.username #=> String
    #   resp.data.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.plugin_name #=> String, one of ["no-preference", "test-decoding", "pglogical"]
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.my_sql_settings #=> Types::MySQLSettings
    #   resp.data.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.my_sql_settings.database_name #=> String
    #   resp.data.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.my_sql_settings.password #=> String
    #   resp.data.endpoint.my_sql_settings.port #=> Integer
    #   resp.data.endpoint.my_sql_settings.server_name #=> String
    #   resp.data.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.my_sql_settings.username #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings #=> Types::OracleSettings
    #   resp.data.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids #=> Array<Integer>
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids[0] #=> Integer
    #   resp.data.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.data.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.data.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.data.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.data.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.data.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.data.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.data.endpoint.oracle_settings.asm_password #=> String
    #   resp.data.endpoint.oracle_settings.asm_server #=> String
    #   resp.data.endpoint.oracle_settings.asm_user #=> String
    #   resp.data.endpoint.oracle_settings.char_length_semantics #=> String, one of ["default", "char", "byte"]
    #   resp.data.endpoint.oracle_settings.database_name #=> String
    #   resp.data.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.data.endpoint.oracle_settings.password #=> String
    #   resp.data.endpoint.oracle_settings.port #=> Integer
    #   resp.data.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.data.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.data.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.data.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.data.endpoint.oracle_settings.server_name #=> String
    #   resp.data.endpoint.oracle_settings.spatial_data_option_to_geo_json_function_name #=> String
    #   resp.data.endpoint.oracle_settings.standby_delay_time #=> Integer
    #   resp.data.endpoint.oracle_settings.username #=> String
    #   resp.data.endpoint.oracle_settings.use_b_file #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_direct_path_full_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_logminer_reader #=> Boolean
    #   resp.data.endpoint.oracle_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_secret_id #=> String
    #   resp.data.endpoint.sybase_settings #=> Types::SybaseSettings
    #   resp.data.endpoint.sybase_settings.database_name #=> String
    #   resp.data.endpoint.sybase_settings.password #=> String
    #   resp.data.endpoint.sybase_settings.port #=> Integer
    #   resp.data.endpoint.sybase_settings.server_name #=> String
    #   resp.data.endpoint.sybase_settings.username #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings #=> Types::MicrosoftSQLServerSettings
    #   resp.data.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.query_single_always_on_node #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #   resp.data.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.use_third_party_backup_device #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.ibm_db2_settings #=> Types::IBMDb2Settings
    #   resp.data.endpoint.ibm_db2_settings.database_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.password #=> String
    #   resp.data.endpoint.ibm_db2_settings.port #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.server_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.set_data_capture_changes #=> Boolean
    #   resp.data.endpoint.ibm_db2_settings.current_lsn #=> String
    #   resp.data.endpoint.ibm_db2_settings.max_k_bytes_per_read #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.username #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.doc_db_settings #=> Types::DocDbSettings
    #   resp.data.endpoint.doc_db_settings.username #=> String
    #   resp.data.endpoint.doc_db_settings.password #=> String
    #   resp.data.endpoint.doc_db_settings.server_name #=> String
    #   resp.data.endpoint.doc_db_settings.port #=> Integer
    #   resp.data.endpoint.doc_db_settings.database_name #=> String
    #   resp.data.endpoint.doc_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.doc_db_settings.extract_doc_id #=> Boolean
    #   resp.data.endpoint.doc_db_settings.docs_to_investigate #=> Integer
    #   resp.data.endpoint.doc_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.redis_settings #=> Types::RedisSettings
    #   resp.data.endpoint.redis_settings.server_name #=> String
    #   resp.data.endpoint.redis_settings.port #=> Integer
    #   resp.data.endpoint.redis_settings.ssl_security_protocol #=> String, one of ["plaintext", "ssl-encryption"]
    #   resp.data.endpoint.redis_settings.auth_type #=> String, one of ["none", "auth-role", "auth-token"]
    #   resp.data.endpoint.redis_settings.auth_user_name #=> String
    #   resp.data.endpoint.redis_settings.auth_password #=> String
    #   resp.data.endpoint.redis_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings #=> Types::GcpMySQLSettings
    #   resp.data.endpoint.gcp_my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.gcp_my_sql_settings.database_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.gcp_my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.password #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.port #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.server_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.username #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_secret_id #=> String
    #
    def create_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::ResourceAlreadyExistsFault, Errors::S3AccessDeniedFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::CreateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpoint,
        stubs: @stubs,
        params_class: Params::CreateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates an DMS event notification subscription. </p>
    #          <p>You can specify the type of source (<code>SourceType</code>) you want to be notified of,
    #          provide a list of DMS source IDs (<code>SourceIds</code>) that triggers the events, and
    #          provide a list of event categories (<code>EventCategories</code>) for events you want to be
    #          notified of. If you specify both the <code>SourceType</code> and <code>SourceIds</code>,
    #          such as <code>SourceType = replication-instance</code> and <code>SourceIdentifier =
    #             my-replinstance</code>, you will be notified of all the replication instance events for
    #          the specified source. If you specify a <code>SourceType</code> but don't specify a
    #             <code>SourceIdentifier</code>, you receive notice of the events for that source type for
    #          all your DMS sources. If you don't specify either <code>SourceType</code> nor
    #             <code>SourceIdentifier</code>, you will be notified of events generated from all DMS
    #          sources belonging to your customer account.</p>
    #          <p>For more information about DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #             Notifications</a> in the <i>Database Migration Service User
    #             Guide.</i>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription. This name must be less than 255 characters.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
    #
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates the events. For example, if you want to be
    #            notified of events generated by a replication instance, you set this parameter to
    #               <code>replication-instance</code>. If this value isn't specified, all events are
    #            returned. </p>
    #            <p>Valid values: <code>replication-instance</code> | <code>replication-task</code>
    #            </p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories for a source type that you want to subscribe to. For more
    #              information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #                  Notifications</a> in the <i>Database Migration Service User
    #                      Guide.</i>
    #            </p>
    #
    # @option params [Array<String>] :source_ids
    #   <p>A list of identifiers for which DMS provides notification events.</p>
    #            <p>If you don't specify a value, notifications are provided for all sources.</p>
    #           <p>If you specify multiple values, they must be of the same type. For example, if you
    #               specify a database instance ID, then all of the other values must be database instance
    #               IDs.</p>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, or set to
    #               <code>false</code> to create the subscription but not activate it. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the event subscription.</p>
    #
    # @return [Types::CreateEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn', # required
    #     source_type: 'SourceType',
    #     event_categories: [
    #       'member'
    #     ],
    #     source_ids: [
    #       'member'
    #     ],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #
    def create_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SNSInvalidTopicFault, Errors::ResourceNotFoundFault, Errors::KMSAccessDeniedFault, Errors::ResourceAlreadyExistsFault, Errors::KMSDisabledFault, Errors::KMSInvalidStateFault, Errors::KMSNotFoundFault, Errors::SNSNoAuthorizationFault, Errors::KMSThrottlingFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::CreateEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventSubscription,
        stubs: @stubs,
        params_class: Params::CreateEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Fleet Advisor collector using the specified parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFleetAdvisorCollectorInput}.
    #
    # @option params [String] :collector_name
    #   <p>The name of your Fleet Advisor collector (for example, <code>sample-collector</code>).</p>
    #
    # @option params [String] :description
    #   <p>A summary description of your Fleet Advisor collector.</p>
    #
    # @option params [String] :service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    #
    # @return [Types::CreateFleetAdvisorCollectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_advisor_collector(
    #     collector_name: 'CollectorName', # required
    #     description: 'Description',
    #     service_access_role_arn: 'ServiceAccessRoleArn', # required
    #     s3_bucket_name: 'S3BucketName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetAdvisorCollectorOutput
    #   resp.data.collector_referenced_id #=> String
    #   resp.data.collector_name #=> String
    #   resp.data.description #=> String
    #   resp.data.service_access_role_arn #=> String
    #   resp.data.s3_bucket_name #=> String
    #
    def create_fleet_advisor_collector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetAdvisorCollectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetAdvisorCollectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleetAdvisorCollector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::S3AccessDeniedFault, Errors::S3ResourceNotFoundFault, Errors::AccessDeniedFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::CreateFleetAdvisorCollector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleetAdvisorCollector,
        stubs: @stubs,
        params_class: Params::CreateFleetAdvisorCollectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet_advisor_collector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the replication instance using the specified parameters.</p>
    #          <p>DMS requires that your account have certain roles with appropriate permissions
    #          before you can create a replication instance. For information on the required roles, see
    #       <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole">Creating the IAM Roles to Use With the CLI and DMS API</a>. For
    #          information on the required permissions, see
    #       <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions">IAM Permissions Needed to Use DMS</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationInstanceInput}.
    #
    # @option params [String] :replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    #
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage (in gigabytes) to be initially allocated for the replication
    #            instance.</p>
    #
    # @option params [String] :replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where the replication instance will be created. The default
    #            value is a random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region, for
    #            example: <code>us-east-1d</code>
    #            </p>
    #
    # @option params [String] :replication_subnet_group_identifier
    #   <p>A subnet group to associate with the replication instance.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Default: A 30-minute window selected at random from an 8-hour block of time per Amazon Web Services Region,
    #             occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    # @option params [Boolean] :multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    # @option params [String] :engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication
    #            instance is created, the default is the latest engine version available.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the
    #            replication instance during the maintenance window. This parameter defaults to
    #               <code>true</code>.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the replication instance.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #              instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then
    #              DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    #
    # @option params [String] :dns_name_servers
    #   <p>A list of custom DNS name servers supported for the replication instance to access your
    #            on-premise source or target database. This list overrides the default name servers
    #            supported by the replication instance. You can specify a comma-separated list of internet
    #            addresses for up to four on-premise DNS name servers. For example:
    #               <code>"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"</code>
    #            </p>
    #
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #            <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    # @return [Types::CreateReplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_instance(
    #     replication_instance_identifier: 'ReplicationInstanceIdentifier', # required
    #     allocated_storage: 1,
    #     replication_instance_class: 'ReplicationInstanceClass', # required
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     availability_zone: 'AvailabilityZone',
    #     replication_subnet_group_identifier: 'ReplicationSubnetGroupIdentifier',
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     multi_az: false,
    #     engine_version: 'EngineVersion',
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     publicly_accessible: false,
    #     dns_name_servers: 'DnsNameServers',
    #     resource_identifier: 'ResourceIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationInstanceOutput
    #   resp.data.replication_instance #=> Types::ReplicationInstance
    #   resp.data.replication_instance.replication_instance_identifier #=> String
    #   resp.data.replication_instance.replication_instance_class #=> String
    #   resp.data.replication_instance.replication_instance_status #=> String
    #   resp.data.replication_instance.allocated_storage #=> Integer
    #   resp.data.replication_instance.instance_create_time #=> Time
    #   resp.data.replication_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.replication_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.data.replication_instance.availability_zone #=> String
    #   resp.data.replication_instance.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_instance.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.replication_instance.preferred_maintenance_window #=> String
    #   resp.data.replication_instance.pending_modified_values #=> Types::ReplicationPendingModifiedValues
    #   resp.data.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.data.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.data.replication_instance.multi_az #=> Boolean
    #   resp.data.replication_instance.engine_version #=> String
    #   resp.data.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.replication_instance.kms_key_id #=> String
    #   resp.data.replication_instance.replication_instance_arn #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.data.replication_instance.publicly_accessible #=> Boolean
    #   resp.data.replication_instance.secondary_availability_zone #=> String
    #   resp.data.replication_instance.free_until #=> Time
    #   resp.data.replication_instance.dns_name_servers #=> String
    #
    def create_replication_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ReplicationSubnetGroupDoesNotCoverEnoughAZs, Errors::ResourceNotFoundFault, Errors::InsufficientResourceCapacityFault, Errors::ResourceAlreadyExistsFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault, Errors::InvalidSubnet, Errors::ResourceQuotaExceededFault, Errors::StorageQuotaExceededFault]),
        data_parser: Parsers::CreateReplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationInstance,
        stubs: @stubs,
        params_class: Params::CreateReplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a replication subnet group given a list of the subnet IDs in a VPC.</p>
    #          <p>The VPC needs to have at least one subnet in at least two availability zones in the Amazon Web Services Region, otherwise the
    #           service will throw a <code>ReplicationSubnetGroupDoesNotCoverEnoughAZs</code> exception.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationSubnetGroupInput}.
    #
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The name for the replication subnet group. This value is stored as a lowercase
    #            string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces,
    #            underscores, or hyphens. Must not be "default".</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    # @option params [String] :replication_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>One or more subnet IDs to be assigned to the subnet group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the subnet group.</p>
    #
    # @return [Types::CreateReplicationSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_subnet_group(
    #     replication_subnet_group_identifier: 'ReplicationSubnetGroupIdentifier', # required
    #     replication_subnet_group_description: 'ReplicationSubnetGroupDescription', # required
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationSubnetGroupOutput
    #   resp.data.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    def create_replication_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReplicationSubnetGroupDoesNotCoverEnoughAZs, Errors::ResourceNotFoundFault, Errors::ResourceAlreadyExistsFault, Errors::AccessDeniedFault, Errors::InvalidSubnet, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::CreateReplicationSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationSubnetGroup,
        stubs: @stubs,
        params_class: Params::CreateReplicationSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a replication task using the specified parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationTaskInput}.
    #
    # @option params [String] :replication_task_identifier
    #   <p>An identifier for the replication task.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>
    #
    # @option params [String] :target_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a replication instance.</p>
    #
    # @option params [String] :migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
    #            </p>
    #
    # @option params [String] :table_mappings
    #   <p>The table mappings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html">Using Table
    #               Mapping to Specify Task Settings</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    # @option params [String] :replication_task_settings
    #   <p>Overall settings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Specifying Task
    #               Settings for Database Migration Service Tasks</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags to be assigned to the replication task.</p>
    #
    # @option params [String] :task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [String] :resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #            <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier
    #            value for the end of <code>EndpointArn</code>.</p>
    #
    # @return [Types::CreateReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_task(
    #     replication_task_identifier: 'ReplicationTaskIdentifier', # required
    #     source_endpoint_arn: 'SourceEndpointArn', # required
    #     target_endpoint_arn: 'TargetEndpointArn', # required
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     migration_type: 'full-load', # required - accepts ["full-load", "cdc", "full-load-and-cdc"]
    #     table_mappings: 'TableMappings', # required
    #     replication_task_settings: 'ReplicationTaskSettings',
    #     cdc_start_time: Time.now,
    #     cdc_start_position: 'CdcStartPosition',
    #     cdc_stop_position: 'CdcStopPosition',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ],
    #     task_data: 'TaskData',
    #     resource_identifier: 'ResourceIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def create_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::ResourceAlreadyExistsFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::CreateReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationTask,
        stubs: @stubs,
        params_class: Params::CreateReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified certificate. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #
    # @return [Types::DeleteCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCertificateOutput
    #   resp.data.certificate #=> Types::Certificate
    #   resp.data.certificate.certificate_identifier #=> String
    #   resp.data.certificate.certificate_creation_date #=> Time
    #   resp.data.certificate.certificate_pem #=> String
    #   resp.data.certificate.certificate_wallet #=> String
    #   resp.data.certificate.certificate_arn #=> String
    #   resp.data.certificate.certificate_owner #=> String
    #   resp.data.certificate.valid_from_date #=> Time
    #   resp.data.certificate.valid_to_date #=> Time
    #   resp.data.certificate.signing_algorithm #=> String
    #   resp.data.certificate.key_length #=> Integer
    #
    def delete_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCertificate,
        stubs: @stubs,
        params_class: Params::DeleteCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the connection between a replication instance and an endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     endpoint_arn: 'EndpointArn', # required
    #     replication_instance_arn: 'ReplicationInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.replication_instance_arn #=> String
    #   resp.data.connection.endpoint_arn #=> String
    #   resp.data.connection.status #=> String
    #   resp.data.connection.last_failure_message #=> String
    #   resp.data.connection.endpoint_identifier #=> String
    #   resp.data.connection.replication_instance_identifier #=> String
    #
    def delete_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault]),
        data_parser: Parsers::DeleteConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnection,
        stubs: @stubs,
        params_class: Params::DeleteConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified endpoint.</p>
    #          <note>
    #             <p>All tasks associated with the endpoint must be deleted before you can delete the
    #             endpoint.</p>
    #          </note>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #   resp.data.endpoint #=> Types::Endpoint
    #   resp.data.endpoint.endpoint_identifier #=> String
    #   resp.data.endpoint.endpoint_type #=> String, one of ["source", "target"]
    #   resp.data.endpoint.engine_name #=> String
    #   resp.data.endpoint.engine_display_name #=> String
    #   resp.data.endpoint.username #=> String
    #   resp.data.endpoint.server_name #=> String
    #   resp.data.endpoint.port #=> Integer
    #   resp.data.endpoint.database_name #=> String
    #   resp.data.endpoint.extra_connection_attributes #=> String
    #   resp.data.endpoint.status #=> String
    #   resp.data.endpoint.kms_key_id #=> String
    #   resp.data.endpoint.endpoint_arn #=> String
    #   resp.data.endpoint.certificate_arn #=> String
    #   resp.data.endpoint.ssl_mode #=> String, one of ["none", "require", "verify-ca", "verify-full"]
    #   resp.data.endpoint.service_access_role_arn #=> String
    #   resp.data.endpoint.external_table_definition #=> String
    #   resp.data.endpoint.external_id #=> String
    #   resp.data.endpoint.dynamo_db_settings #=> Types::DynamoDbSettings
    #   resp.data.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings #=> Types::S3Settings
    #   resp.data.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings.external_table_definition #=> String
    #   resp.data.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.data.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.data.endpoint.s3_settings.bucket_folder #=> String
    #   resp.data.endpoint.s3_settings.bucket_name #=> String
    #   resp.data.endpoint.s3_settings.compression_type #=> String, one of ["none", "gzip"]
    #   resp.data.endpoint.s3_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.s3_settings.data_format #=> String, one of ["csv", "parquet"]
    #   resp.data.endpoint.s3_settings.encoding_type #=> String, one of ["plain", "plain-dictionary", "rle-dictionary"]
    #   resp.data.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.data.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.data.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.data.endpoint.s3_settings.parquet_version #=> String, one of ["parquet-1-0", "parquet-2-0"]
    #   resp.data.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.data.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.data.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.data.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_sequence #=> String, one of ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #   resp.data.endpoint.s3_settings.date_partition_delimiter #=> String, one of ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #   resp.data.endpoint.s3_settings.use_csv_no_sup_value #=> Boolean
    #   resp.data.endpoint.s3_settings.csv_no_sup_value #=> String
    #   resp.data.endpoint.s3_settings.preserve_transactions #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_path #=> String
    #   resp.data.endpoint.s3_settings.use_task_start_time_for_full_load_timestamp #=> Boolean
    #   resp.data.endpoint.s3_settings.canned_acl_for_objects #=> String, one of ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.endpoint.s3_settings.add_column_name #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_max_batch_interval #=> Integer
    #   resp.data.endpoint.s3_settings.cdc_min_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.csv_null_value #=> String
    #   resp.data.endpoint.s3_settings.ignore_header_rows #=> Integer
    #   resp.data.endpoint.s3_settings.max_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.rfc4180 #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_timezone #=> String
    #   resp.data.endpoint.dms_transfer_settings #=> Types::DmsTransferSettings
    #   resp.data.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.data.endpoint.mongo_db_settings #=> Types::MongoDbSettings
    #   resp.data.endpoint.mongo_db_settings.username #=> String
    #   resp.data.endpoint.mongo_db_settings.password #=> String
    #   resp.data.endpoint.mongo_db_settings.server_name #=> String
    #   resp.data.endpoint.mongo_db_settings.port #=> Integer
    #   resp.data.endpoint.mongo_db_settings.database_name #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_type #=> String, one of ["no", "password"]
    #   resp.data.endpoint.mongo_db_settings.auth_mechanism #=> String, one of ["default", "mongodb_cr", "scram_sha_1"]
    #   resp.data.endpoint.mongo_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.data.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.data.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.kinesis_settings #=> Types::KinesisSettings
    #   resp.data.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.data.endpoint.kinesis_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kinesis_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.kafka_settings #=> Types::KafkaSettings
    #   resp.data.endpoint.kafka_settings.broker #=> String
    #   resp.data.endpoint.kafka_settings.topic #=> String
    #   resp.data.endpoint.kafka_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.data.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kafka_settings.security_protocol #=> String, one of ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #   resp.data.endpoint.kafka_settings.ssl_client_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_password #=> String
    #   resp.data.endpoint.kafka_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.sasl_username #=> String
    #   resp.data.endpoint.kafka_settings.sasl_password #=> String
    #   resp.data.endpoint.kafka_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.elasticsearch_settings #=> Types::ElasticsearchSettings
    #   resp.data.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.data.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.data.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings #=> Types::NeptuneSettings
    #   resp.data.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.data.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.data.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.data.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.data.endpoint.redshift_settings #=> Types::RedshiftSettings
    #   resp.data.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.data.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.data.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.data.endpoint.redshift_settings.bucket_name #=> String
    #   resp.data.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.data.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.data.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.database_name #=> String
    #   resp.data.endpoint.redshift_settings.date_format #=> String
    #   resp.data.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.data.endpoint.redshift_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.data.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.data.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.data.endpoint.redshift_settings.password #=> String
    #   resp.data.endpoint.redshift_settings.port #=> Integer
    #   resp.data.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.data.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.data.endpoint.redshift_settings.replace_chars #=> String
    #   resp.data.endpoint.redshift_settings.server_name #=> String
    #   resp.data.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.redshift_settings.time_format #=> String
    #   resp.data.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.data.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.data.endpoint.redshift_settings.username #=> String
    #   resp.data.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.data.endpoint.redshift_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.postgre_sql_settings #=> Types::PostgreSQLSettings
    #   resp.data.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_enable #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_frequency #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.password #=> String
    #   resp.data.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.username #=> String
    #   resp.data.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.plugin_name #=> String, one of ["no-preference", "test-decoding", "pglogical"]
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.my_sql_settings #=> Types::MySQLSettings
    #   resp.data.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.my_sql_settings.database_name #=> String
    #   resp.data.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.my_sql_settings.password #=> String
    #   resp.data.endpoint.my_sql_settings.port #=> Integer
    #   resp.data.endpoint.my_sql_settings.server_name #=> String
    #   resp.data.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.my_sql_settings.username #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings #=> Types::OracleSettings
    #   resp.data.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids #=> Array<Integer>
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids[0] #=> Integer
    #   resp.data.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.data.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.data.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.data.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.data.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.data.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.data.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.data.endpoint.oracle_settings.asm_password #=> String
    #   resp.data.endpoint.oracle_settings.asm_server #=> String
    #   resp.data.endpoint.oracle_settings.asm_user #=> String
    #   resp.data.endpoint.oracle_settings.char_length_semantics #=> String, one of ["default", "char", "byte"]
    #   resp.data.endpoint.oracle_settings.database_name #=> String
    #   resp.data.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.data.endpoint.oracle_settings.password #=> String
    #   resp.data.endpoint.oracle_settings.port #=> Integer
    #   resp.data.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.data.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.data.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.data.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.data.endpoint.oracle_settings.server_name #=> String
    #   resp.data.endpoint.oracle_settings.spatial_data_option_to_geo_json_function_name #=> String
    #   resp.data.endpoint.oracle_settings.standby_delay_time #=> Integer
    #   resp.data.endpoint.oracle_settings.username #=> String
    #   resp.data.endpoint.oracle_settings.use_b_file #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_direct_path_full_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_logminer_reader #=> Boolean
    #   resp.data.endpoint.oracle_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_secret_id #=> String
    #   resp.data.endpoint.sybase_settings #=> Types::SybaseSettings
    #   resp.data.endpoint.sybase_settings.database_name #=> String
    #   resp.data.endpoint.sybase_settings.password #=> String
    #   resp.data.endpoint.sybase_settings.port #=> Integer
    #   resp.data.endpoint.sybase_settings.server_name #=> String
    #   resp.data.endpoint.sybase_settings.username #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings #=> Types::MicrosoftSQLServerSettings
    #   resp.data.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.query_single_always_on_node #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #   resp.data.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.use_third_party_backup_device #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.ibm_db2_settings #=> Types::IBMDb2Settings
    #   resp.data.endpoint.ibm_db2_settings.database_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.password #=> String
    #   resp.data.endpoint.ibm_db2_settings.port #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.server_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.set_data_capture_changes #=> Boolean
    #   resp.data.endpoint.ibm_db2_settings.current_lsn #=> String
    #   resp.data.endpoint.ibm_db2_settings.max_k_bytes_per_read #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.username #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.doc_db_settings #=> Types::DocDbSettings
    #   resp.data.endpoint.doc_db_settings.username #=> String
    #   resp.data.endpoint.doc_db_settings.password #=> String
    #   resp.data.endpoint.doc_db_settings.server_name #=> String
    #   resp.data.endpoint.doc_db_settings.port #=> Integer
    #   resp.data.endpoint.doc_db_settings.database_name #=> String
    #   resp.data.endpoint.doc_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.doc_db_settings.extract_doc_id #=> Boolean
    #   resp.data.endpoint.doc_db_settings.docs_to_investigate #=> Integer
    #   resp.data.endpoint.doc_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.redis_settings #=> Types::RedisSettings
    #   resp.data.endpoint.redis_settings.server_name #=> String
    #   resp.data.endpoint.redis_settings.port #=> Integer
    #   resp.data.endpoint.redis_settings.ssl_security_protocol #=> String, one of ["plaintext", "ssl-encryption"]
    #   resp.data.endpoint.redis_settings.auth_type #=> String, one of ["none", "auth-role", "auth-token"]
    #   resp.data.endpoint.redis_settings.auth_user_name #=> String
    #   resp.data.endpoint.redis_settings.auth_password #=> String
    #   resp.data.endpoint.redis_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings #=> Types::GcpMySQLSettings
    #   resp.data.endpoint.gcp_my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.gcp_my_sql_settings.database_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.gcp_my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.password #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.port #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.server_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.username #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_secret_id #=> String
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an DMS event subscription. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription to be deleted.</p>
    #
    # @return [Types::DeleteEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription(
    #     subscription_name: 'SubscriptionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #
    def delete_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventSubscription,
        stubs: @stubs,
        params_class: Params::DeleteEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Fleet Advisor collector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetAdvisorCollectorInput}.
    #
    # @option params [String] :collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector to delete.</p>
    #
    # @return [Types::DeleteFleetAdvisorCollectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_advisor_collector(
    #     collector_referenced_id: 'CollectorReferencedId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetAdvisorCollectorOutput
    #
    def delete_fleet_advisor_collector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetAdvisorCollectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetAdvisorCollectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleetAdvisorCollector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::CollectorNotFoundFault]),
        data_parser: Parsers::DeleteFleetAdvisorCollector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleetAdvisorCollector,
        stubs: @stubs,
        params_class: Params::DeleteFleetAdvisorCollectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet_advisor_collector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Fleet Advisor collector databases.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetAdvisorDatabasesInput}.
    #
    # @option params [Array<String>] :database_ids
    #   <p>The IDs of the Fleet Advisor collector databases to delete.</p>
    #
    # @return [Types::DeleteFleetAdvisorDatabasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_advisor_databases(
    #     database_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetAdvisorDatabasesOutput
    #   resp.data.database_ids #=> Array<String>
    #   resp.data.database_ids[0] #=> String
    #
    def delete_fleet_advisor_databases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetAdvisorDatabasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetAdvisorDatabasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleetAdvisorDatabases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault, Errors::InvalidOperationFault]),
        data_parser: Parsers::DeleteFleetAdvisorDatabases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleetAdvisorDatabases,
        stubs: @stubs,
        params_class: Params::DeleteFleetAdvisorDatabasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet_advisor_databases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified replication instance.</p>
    #          <note>
    #             <p>You must delete any migration tasks that are associated with the replication instance
    #             before you can delete it.</p>
    #          </note>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationInstanceInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
    #
    # @return [Types::DeleteReplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_instance(
    #     replication_instance_arn: 'ReplicationInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationInstanceOutput
    #   resp.data.replication_instance #=> Types::ReplicationInstance
    #   resp.data.replication_instance.replication_instance_identifier #=> String
    #   resp.data.replication_instance.replication_instance_class #=> String
    #   resp.data.replication_instance.replication_instance_status #=> String
    #   resp.data.replication_instance.allocated_storage #=> Integer
    #   resp.data.replication_instance.instance_create_time #=> Time
    #   resp.data.replication_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.replication_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.data.replication_instance.availability_zone #=> String
    #   resp.data.replication_instance.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_instance.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.replication_instance.preferred_maintenance_window #=> String
    #   resp.data.replication_instance.pending_modified_values #=> Types::ReplicationPendingModifiedValues
    #   resp.data.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.data.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.data.replication_instance.multi_az #=> Boolean
    #   resp.data.replication_instance.engine_version #=> String
    #   resp.data.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.replication_instance.kms_key_id #=> String
    #   resp.data.replication_instance.replication_instance_arn #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.data.replication_instance.publicly_accessible #=> Boolean
    #   resp.data.replication_instance.secondary_availability_zone #=> String
    #   resp.data.replication_instance.free_until #=> Time
    #   resp.data.replication_instance.dns_name_servers #=> String
    #
    def delete_replication_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteReplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationInstance,
        stubs: @stubs,
        params_class: Params::DeleteReplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationSubnetGroupInput}.
    #
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The subnet group name of the replication instance.</p>
    #
    # @return [Types::DeleteReplicationSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_subnet_group(
    #     replication_subnet_group_identifier: 'ReplicationSubnetGroupIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationSubnetGroupOutput
    #
    def delete_replication_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteReplicationSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationSubnetGroup,
        stubs: @stubs,
        params_class: Params::DeleteReplicationSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified replication task.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationTaskInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
    #
    # @return [Types::DeleteReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_task(
    #     replication_task_arn: 'ReplicationTaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def delete_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DeleteReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationTask,
        stubs: @stubs,
        params_class: Params::DeleteReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the record of a single premigration assessment run.</p>
    #          <p>This operation removes all metadata that DMS maintains about this assessment run.
    #          However, the operation leaves untouched all information about this assessment run that is
    #          stored in your Amazon S3 bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationTaskAssessmentRunInput}.
    #
    # @option params [String] :replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>
    #
    # @return [Types::DeleteReplicationTaskAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_task_assessment_run(
    #     replication_task_assessment_run_arn: 'ReplicationTaskAssessmentRunArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationTaskAssessmentRunOutput
    #   resp.data.replication_task_assessment_run #=> Types::ReplicationTaskAssessmentRun
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.data.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.data.replication_task_assessment_run.status #=> String
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.data.replication_task_assessment_run.assessment_progress #=> Types::ReplicationTaskAssessmentRunProgress
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.data.replication_task_assessment_run.last_failure_message #=> String
    #   resp.data.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.data.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.data.replication_task_assessment_run.result_location_folder #=> String
    #   resp.data.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.data.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.data.replication_task_assessment_run.assessment_run_name #=> String
    #
    def delete_replication_task_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationTaskAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationTaskAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationTaskAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault]),
        data_parser: Parsers::DeleteReplicationTaskAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationTaskAssessmentRun,
        stubs: @stubs,
        params_class: Params::DeleteReplicationTaskAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_task_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the DMS attributes for a customer account. These attributes include DMS
    #          quotas for the account and a unique account identifier in a particular DMS region. DMS
    #          quotas include a list of resource quotas supported by the account, such as the number of
    #          replication instances allowed. The description for each resource quota, includes the quota
    #          name, current usage toward that quota, and the quota's maximum value. DMS uses the unique
    #          account identifier to name each artifact used by DMS in the given region.</p>
    #          <p>This command does not take any parameters.</p>
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
    #   resp.data.account_quotas #=> Array<AccountQuota>
    #   resp.data.account_quotas[0] #=> Types::AccountQuota
    #   resp.data.account_quotas[0].account_quota_name #=> String
    #   resp.data.account_quotas[0].used #=> Integer
    #   resp.data.account_quotas[0].max #=> Integer
    #   resp.data.unique_account_identifier #=> String
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

    # <p>Provides a list of individual assessments that you can specify for a new premigration
    #          assessment run, given one or more parameters.</p>
    #          <p>If you specify an existing migration task, this operation provides the default individual
    #          assessments you can specify for that task. Otherwise, the specified parameters model elements
    #          of a possible migration task on which to base a premigration assessment run.</p>
    #          <p>To use these migration task modeling parameters, you must specify an existing replication instance,
    #          a source database engine, a target database engine, and a migration type. This combination of
    #          parameters potentially limits the default individual assessments available for an assessment run
    #          created for a corresponding migration task.</p>
    #          <p>If you specify no parameters, this operation provides a list of all possible individual assessments
    #          that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must
    #          specify all of them or the operation cannot provide a list of individual assessments.
    #          The only parameter that you can specify alone is for an existing migration task. The specified task
    #          definition then determines the default list of individual assessments that you can specify in an
    #          assessment run for the task.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicableIndividualAssessmentsInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>Amazon Resource Name (ARN) of a migration task on which you want to base
    #            the default list of individual assessments.</p>
    #
    # @option params [String] :replication_instance_arn
    #   <p>ARN of a replication instance on which you want to base the default list of individual
    #            assessments.</p>
    #
    # @option params [String] :source_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a source.</p>
    #
    # @option params [String] :target_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a target.</p>
    #
    # @option params [String] :migration_type
    #   <p>Name of the migration type that each provided individual assessment must support.</p>
    #
    # @option params [Integer] :max_records
    #   <p>Maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>Optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeApplicableIndividualAssessmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applicable_individual_assessments(
    #     replication_task_arn: 'ReplicationTaskArn',
    #     replication_instance_arn: 'ReplicationInstanceArn',
    #     source_engine_name: 'SourceEngineName',
    #     target_engine_name: 'TargetEngineName',
    #     migration_type: 'full-load', # accepts ["full-load", "cdc", "full-load-and-cdc"]
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicableIndividualAssessmentsOutput
    #   resp.data.individual_assessment_names #=> Array<String>
    #   resp.data.individual_assessment_names[0] #=> String
    #   resp.data.marker #=> String
    #
    def describe_applicable_individual_assessments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicableIndividualAssessmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicableIndividualAssessmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicableIndividualAssessments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault]),
        data_parser: Parsers::DescribeApplicableIndividualAssessments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicableIndividualAssessments,
        stubs: @stubs,
        params_class: Params::DescribeApplicableIndividualAssessmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_applicable_individual_assessments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a description of the certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificatesInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the certificates described in the form of key-value pairs.
    #             Valid values are <code>certificate-arn</code> and <code>certificate-id</code>.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 10</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificatesOutput
    #   resp.data.marker #=> String
    #   resp.data.certificates #=> Array<Certificate>
    #   resp.data.certificates[0] #=> Types::Certificate
    #   resp.data.certificates[0].certificate_identifier #=> String
    #   resp.data.certificates[0].certificate_creation_date #=> Time
    #   resp.data.certificates[0].certificate_pem #=> String
    #   resp.data.certificates[0].certificate_wallet #=> String
    #   resp.data.certificates[0].certificate_arn #=> String
    #   resp.data.certificates[0].certificate_owner #=> String
    #   resp.data.certificates[0].valid_from_date #=> Time
    #   resp.data.certificates[0].valid_to_date #=> Time
    #   resp.data.certificates[0].signing_algorithm #=> String
    #   resp.data.certificates[0].key_length #=> Integer
    #
    def describe_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificates,
        stubs: @stubs,
        params_class: Params::DescribeCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status of the connections that have been made between the replication
    #          instance and an endpoint. Connections are created when you test an endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters applied to the connection.</p>
    #            <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionsOutput
    #   resp.data.marker #=> String
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].replication_instance_arn #=> String
    #   resp.data.connections[0].endpoint_arn #=> String
    #   resp.data.connections[0].status #=> String
    #   resp.data.connections[0].last_failure_message #=> String
    #   resp.data.connections[0].endpoint_identifier #=> String
    #   resp.data.connections[0].replication_instance_identifier #=> String
    #
    def describe_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnections,
        stubs: @stubs,
        params_class: Params::DescribeConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the possible endpoint settings available
    #          when you create an endpoint for a specific database engine.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointSettingsInput}.
    #
    # @option params [String] :engine_name
    #   <p>The databse engine used for your source or target endpoint.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response
    #            so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified,
    #            the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeEndpointSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_settings(
    #     engine_name: 'EngineName', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointSettingsOutput
    #   resp.data.marker #=> String
    #   resp.data.endpoint_settings #=> Array<EndpointSetting>
    #   resp.data.endpoint_settings[0] #=> Types::EndpointSetting
    #   resp.data.endpoint_settings[0].name #=> String
    #   resp.data.endpoint_settings[0].type #=> String, one of ["string", "boolean", "integer", "enum"]
    #   resp.data.endpoint_settings[0].enum_values #=> Array<String>
    #   resp.data.endpoint_settings[0].enum_values[0] #=> String
    #   resp.data.endpoint_settings[0].sensitive #=> Boolean
    #   resp.data.endpoint_settings[0].units #=> String
    #   resp.data.endpoint_settings[0].applicability #=> String
    #   resp.data.endpoint_settings[0].int_value_min #=> Integer
    #   resp.data.endpoint_settings[0].int_value_max #=> Integer
    #   resp.data.endpoint_settings[0].default_value #=> String
    #
    def describe_endpoint_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpointSettings
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
        data_parser: Parsers::DescribeEndpointSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpointSettings,
        stubs: @stubs,
        params_class: Params::DescribeEndpointSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the type of endpoints available.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointTypesInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the endpoint types.</p>
    #            <p>Valid filter names: engine-name | endpoint-type</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeEndpointTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_types(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointTypesOutput
    #   resp.data.marker #=> String
    #   resp.data.supported_endpoint_types #=> Array<SupportedEndpointType>
    #   resp.data.supported_endpoint_types[0] #=> Types::SupportedEndpointType
    #   resp.data.supported_endpoint_types[0].engine_name #=> String
    #   resp.data.supported_endpoint_types[0].supports_cdc #=> Boolean
    #   resp.data.supported_endpoint_types[0].endpoint_type #=> String, one of ["source", "target"]
    #   resp.data.supported_endpoint_types[0].replication_instance_engine_minimum_version #=> String
    #   resp.data.supported_endpoint_types[0].engine_display_name #=> String
    #
    def describe_endpoint_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpointTypes
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
        data_parser: Parsers::DescribeEndpointTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpointTypes,
        stubs: @stubs,
        params_class: Params::DescribeEndpointTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the endpoints for your account in the current region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the endpoints.</p>
    #            <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointsOutput
    #   resp.data.marker #=> String
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].endpoint_identifier #=> String
    #   resp.data.endpoints[0].endpoint_type #=> String, one of ["source", "target"]
    #   resp.data.endpoints[0].engine_name #=> String
    #   resp.data.endpoints[0].engine_display_name #=> String
    #   resp.data.endpoints[0].username #=> String
    #   resp.data.endpoints[0].server_name #=> String
    #   resp.data.endpoints[0].port #=> Integer
    #   resp.data.endpoints[0].database_name #=> String
    #   resp.data.endpoints[0].extra_connection_attributes #=> String
    #   resp.data.endpoints[0].status #=> String
    #   resp.data.endpoints[0].kms_key_id #=> String
    #   resp.data.endpoints[0].endpoint_arn #=> String
    #   resp.data.endpoints[0].certificate_arn #=> String
    #   resp.data.endpoints[0].ssl_mode #=> String, one of ["none", "require", "verify-ca", "verify-full"]
    #   resp.data.endpoints[0].service_access_role_arn #=> String
    #   resp.data.endpoints[0].external_table_definition #=> String
    #   resp.data.endpoints[0].external_id #=> String
    #   resp.data.endpoints[0].dynamo_db_settings #=> Types::DynamoDbSettings
    #   resp.data.endpoints[0].dynamo_db_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].s3_settings #=> Types::S3Settings
    #   resp.data.endpoints[0].s3_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].s3_settings.external_table_definition #=> String
    #   resp.data.endpoints[0].s3_settings.csv_row_delimiter #=> String
    #   resp.data.endpoints[0].s3_settings.csv_delimiter #=> String
    #   resp.data.endpoints[0].s3_settings.bucket_folder #=> String
    #   resp.data.endpoints[0].s3_settings.bucket_name #=> String
    #   resp.data.endpoints[0].s3_settings.compression_type #=> String, one of ["none", "gzip"]
    #   resp.data.endpoints[0].s3_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoints[0].s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoints[0].s3_settings.data_format #=> String, one of ["csv", "parquet"]
    #   resp.data.endpoints[0].s3_settings.encoding_type #=> String, one of ["plain", "plain-dictionary", "rle-dictionary"]
    #   resp.data.endpoints[0].s3_settings.dict_page_size_limit #=> Integer
    #   resp.data.endpoints[0].s3_settings.row_group_length #=> Integer
    #   resp.data.endpoints[0].s3_settings.data_page_size #=> Integer
    #   resp.data.endpoints[0].s3_settings.parquet_version #=> String, one of ["parquet-1-0", "parquet-2-0"]
    #   resp.data.endpoints[0].s3_settings.enable_statistics #=> Boolean
    #   resp.data.endpoints[0].s3_settings.include_op_for_full_load #=> Boolean
    #   resp.data.endpoints[0].s3_settings.cdc_inserts_only #=> Boolean
    #   resp.data.endpoints[0].s3_settings.timestamp_column_name #=> String
    #   resp.data.endpoints[0].s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.data.endpoints[0].s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.data.endpoints[0].s3_settings.date_partition_enabled #=> Boolean
    #   resp.data.endpoints[0].s3_settings.date_partition_sequence #=> String, one of ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #   resp.data.endpoints[0].s3_settings.date_partition_delimiter #=> String, one of ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #   resp.data.endpoints[0].s3_settings.use_csv_no_sup_value #=> Boolean
    #   resp.data.endpoints[0].s3_settings.csv_no_sup_value #=> String
    #   resp.data.endpoints[0].s3_settings.preserve_transactions #=> Boolean
    #   resp.data.endpoints[0].s3_settings.cdc_path #=> String
    #   resp.data.endpoints[0].s3_settings.use_task_start_time_for_full_load_timestamp #=> Boolean
    #   resp.data.endpoints[0].s3_settings.canned_acl_for_objects #=> String, one of ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.endpoints[0].s3_settings.add_column_name #=> Boolean
    #   resp.data.endpoints[0].s3_settings.cdc_max_batch_interval #=> Integer
    #   resp.data.endpoints[0].s3_settings.cdc_min_file_size #=> Integer
    #   resp.data.endpoints[0].s3_settings.csv_null_value #=> String
    #   resp.data.endpoints[0].s3_settings.ignore_header_rows #=> Integer
    #   resp.data.endpoints[0].s3_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].s3_settings.rfc4180 #=> Boolean
    #   resp.data.endpoints[0].s3_settings.date_partition_timezone #=> String
    #   resp.data.endpoints[0].dms_transfer_settings #=> Types::DmsTransferSettings
    #   resp.data.endpoints[0].dms_transfer_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].dms_transfer_settings.bucket_name #=> String
    #   resp.data.endpoints[0].mongo_db_settings #=> Types::MongoDbSettings
    #   resp.data.endpoints[0].mongo_db_settings.username #=> String
    #   resp.data.endpoints[0].mongo_db_settings.password #=> String
    #   resp.data.endpoints[0].mongo_db_settings.server_name #=> String
    #   resp.data.endpoints[0].mongo_db_settings.port #=> Integer
    #   resp.data.endpoints[0].mongo_db_settings.database_name #=> String
    #   resp.data.endpoints[0].mongo_db_settings.auth_type #=> String, one of ["no", "password"]
    #   resp.data.endpoints[0].mongo_db_settings.auth_mechanism #=> String, one of ["default", "mongodb_cr", "scram_sha_1"]
    #   resp.data.endpoints[0].mongo_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoints[0].mongo_db_settings.extract_doc_id #=> String
    #   resp.data.endpoints[0].mongo_db_settings.docs_to_investigate #=> String
    #   resp.data.endpoints[0].mongo_db_settings.auth_source #=> String
    #   resp.data.endpoints[0].mongo_db_settings.kms_key_id #=> String
    #   resp.data.endpoints[0].mongo_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].mongo_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].kinesis_settings #=> Types::KinesisSettings
    #   resp.data.endpoints[0].kinesis_settings.stream_arn #=> String
    #   resp.data.endpoints[0].kinesis_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoints[0].kinesis_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].kinesis_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.include_partition_value #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.include_control_details #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoints[0].kinesis_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoints[0].kafka_settings #=> Types::KafkaSettings
    #   resp.data.endpoints[0].kafka_settings.broker #=> String
    #   resp.data.endpoints[0].kafka_settings.topic #=> String
    #   resp.data.endpoints[0].kafka_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoints[0].kafka_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.include_partition_value #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.include_control_details #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.message_max_bytes #=> Integer
    #   resp.data.endpoints[0].kafka_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoints[0].kafka_settings.security_protocol #=> String, one of ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #   resp.data.endpoints[0].kafka_settings.ssl_client_certificate_arn #=> String
    #   resp.data.endpoints[0].kafka_settings.ssl_client_key_arn #=> String
    #   resp.data.endpoints[0].kafka_settings.ssl_client_key_password #=> String
    #   resp.data.endpoints[0].kafka_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoints[0].kafka_settings.sasl_username #=> String
    #   resp.data.endpoints[0].kafka_settings.sasl_password #=> String
    #   resp.data.endpoints[0].kafka_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoints[0].elasticsearch_settings #=> Types::ElasticsearchSettings
    #   resp.data.endpoints[0].elasticsearch_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].elasticsearch_settings.endpoint_uri #=> String
    #   resp.data.endpoints[0].elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.data.endpoints[0].elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.data.endpoints[0].neptune_settings #=> Types::NeptuneSettings
    #   resp.data.endpoints[0].neptune_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].neptune_settings.s3_bucket_name #=> String
    #   resp.data.endpoints[0].neptune_settings.s3_bucket_folder #=> String
    #   resp.data.endpoints[0].neptune_settings.error_retry_duration #=> Integer
    #   resp.data.endpoints[0].neptune_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].neptune_settings.max_retry_count #=> Integer
    #   resp.data.endpoints[0].neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.data.endpoints[0].redshift_settings #=> Types::RedshiftSettings
    #   resp.data.endpoints[0].redshift_settings.accept_any_date #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.after_connect_script #=> String
    #   resp.data.endpoints[0].redshift_settings.bucket_folder #=> String
    #   resp.data.endpoints[0].redshift_settings.bucket_name #=> String
    #   resp.data.endpoints[0].redshift_settings.case_sensitive_names #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.comp_update #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.connection_timeout #=> Integer
    #   resp.data.endpoints[0].redshift_settings.database_name #=> String
    #   resp.data.endpoints[0].redshift_settings.date_format #=> String
    #   resp.data.endpoints[0].redshift_settings.empty_as_null #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoints[0].redshift_settings.explicit_ids #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.data.endpoints[0].redshift_settings.load_timeout #=> Integer
    #   resp.data.endpoints[0].redshift_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].redshift_settings.password #=> String
    #   resp.data.endpoints[0].redshift_settings.port #=> Integer
    #   resp.data.endpoints[0].redshift_settings.remove_quotes #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.replace_invalid_chars #=> String
    #   resp.data.endpoints[0].redshift_settings.replace_chars #=> String
    #   resp.data.endpoints[0].redshift_settings.server_name #=> String
    #   resp.data.endpoints[0].redshift_settings.service_access_role_arn #=> String
    #   resp.data.endpoints[0].redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoints[0].redshift_settings.time_format #=> String
    #   resp.data.endpoints[0].redshift_settings.trim_blanks #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.truncate_columns #=> Boolean
    #   resp.data.endpoints[0].redshift_settings.username #=> String
    #   resp.data.endpoints[0].redshift_settings.write_buffer_size #=> Integer
    #   resp.data.endpoints[0].redshift_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].redshift_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].postgre_sql_settings #=> Types::PostgreSQLSettings
    #   resp.data.endpoints[0].postgre_sql_settings.after_connect_script #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.data.endpoints[0].postgre_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].postgre_sql_settings.database_name #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.execute_timeout #=> Integer
    #   resp.data.endpoints[0].postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoints[0].postgre_sql_settings.heartbeat_enable #=> Boolean
    #   resp.data.endpoints[0].postgre_sql_settings.heartbeat_schema #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.heartbeat_frequency #=> Integer
    #   resp.data.endpoints[0].postgre_sql_settings.password #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.port #=> Integer
    #   resp.data.endpoints[0].postgre_sql_settings.server_name #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.username #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.slot_name #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.plugin_name #=> String, one of ["no-preference", "test-decoding", "pglogical"]
    #   resp.data.endpoints[0].postgre_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].postgre_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].my_sql_settings #=> Types::MySQLSettings
    #   resp.data.endpoints[0].my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoints[0].my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoints[0].my_sql_settings.database_name #=> String
    #   resp.data.endpoints[0].my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoints[0].my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoints[0].my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoints[0].my_sql_settings.password #=> String
    #   resp.data.endpoints[0].my_sql_settings.port #=> Integer
    #   resp.data.endpoints[0].my_sql_settings.server_name #=> String
    #   resp.data.endpoints[0].my_sql_settings.server_timezone #=> String
    #   resp.data.endpoints[0].my_sql_settings.username #=> String
    #   resp.data.endpoints[0].my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].my_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].oracle_settings #=> Types::OracleSettings
    #   resp.data.endpoints[0].oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.archived_log_dest_id #=> Integer
    #   resp.data.endpoints[0].oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.data.endpoints[0].oracle_settings.extra_archived_log_dest_ids #=> Array<Integer>
    #   resp.data.endpoints[0].oracle_settings.extra_archived_log_dest_ids[0] #=> Integer
    #   resp.data.endpoints[0].oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.data.endpoints[0].oracle_settings.read_ahead_blocks #=> Integer
    #   resp.data.endpoints[0].oracle_settings.access_alternate_directly #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.oracle_path_prefix #=> String
    #   resp.data.endpoints[0].oracle_settings.use_path_prefix #=> String
    #   resp.data.endpoints[0].oracle_settings.replace_path_prefix #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.direct_path_no_log #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.archived_logs_only #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.asm_password #=> String
    #   resp.data.endpoints[0].oracle_settings.asm_server #=> String
    #   resp.data.endpoints[0].oracle_settings.asm_user #=> String
    #   resp.data.endpoints[0].oracle_settings.char_length_semantics #=> String, one of ["default", "char", "byte"]
    #   resp.data.endpoints[0].oracle_settings.database_name #=> String
    #   resp.data.endpoints[0].oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.number_datatype_scale #=> Integer
    #   resp.data.endpoints[0].oracle_settings.password #=> String
    #   resp.data.endpoints[0].oracle_settings.port #=> Integer
    #   resp.data.endpoints[0].oracle_settings.read_table_space_name #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.retry_interval #=> Integer
    #   resp.data.endpoints[0].oracle_settings.security_db_encryption #=> String
    #   resp.data.endpoints[0].oracle_settings.security_db_encryption_name #=> String
    #   resp.data.endpoints[0].oracle_settings.server_name #=> String
    #   resp.data.endpoints[0].oracle_settings.spatial_data_option_to_geo_json_function_name #=> String
    #   resp.data.endpoints[0].oracle_settings.standby_delay_time #=> Integer
    #   resp.data.endpoints[0].oracle_settings.username #=> String
    #   resp.data.endpoints[0].oracle_settings.use_b_file #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.use_direct_path_full_load #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.use_logminer_reader #=> Boolean
    #   resp.data.endpoints[0].oracle_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].oracle_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].oracle_settings.secrets_manager_oracle_asm_access_role_arn #=> String
    #   resp.data.endpoints[0].oracle_settings.secrets_manager_oracle_asm_secret_id #=> String
    #   resp.data.endpoints[0].sybase_settings #=> Types::SybaseSettings
    #   resp.data.endpoints[0].sybase_settings.database_name #=> String
    #   resp.data.endpoints[0].sybase_settings.password #=> String
    #   resp.data.endpoints[0].sybase_settings.port #=> Integer
    #   resp.data.endpoints[0].sybase_settings.server_name #=> String
    #   resp.data.endpoints[0].sybase_settings.username #=> String
    #   resp.data.endpoints[0].sybase_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].sybase_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings #=> Types::MicrosoftSQLServerSettings
    #   resp.data.endpoints[0].microsoft_sql_server_settings.port #=> Integer
    #   resp.data.endpoints[0].microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.data.endpoints[0].microsoft_sql_server_settings.database_name #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.password #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.query_single_always_on_node #=> Boolean
    #   resp.data.endpoints[0].microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.data.endpoints[0].microsoft_sql_server_settings.safeguard_policy #=> String, one of ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #   resp.data.endpoints[0].microsoft_sql_server_settings.server_name #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.username #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.data.endpoints[0].microsoft_sql_server_settings.use_third_party_backup_device #=> Boolean
    #   resp.data.endpoints[0].microsoft_sql_server_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].microsoft_sql_server_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].ibm_db2_settings #=> Types::IBMDb2Settings
    #   resp.data.endpoints[0].ibm_db2_settings.database_name #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.password #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.port #=> Integer
    #   resp.data.endpoints[0].ibm_db2_settings.server_name #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.set_data_capture_changes #=> Boolean
    #   resp.data.endpoints[0].ibm_db2_settings.current_lsn #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.max_k_bytes_per_read #=> Integer
    #   resp.data.endpoints[0].ibm_db2_settings.username #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].ibm_db2_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].doc_db_settings #=> Types::DocDbSettings
    #   resp.data.endpoints[0].doc_db_settings.username #=> String
    #   resp.data.endpoints[0].doc_db_settings.password #=> String
    #   resp.data.endpoints[0].doc_db_settings.server_name #=> String
    #   resp.data.endpoints[0].doc_db_settings.port #=> Integer
    #   resp.data.endpoints[0].doc_db_settings.database_name #=> String
    #   resp.data.endpoints[0].doc_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoints[0].doc_db_settings.extract_doc_id #=> Boolean
    #   resp.data.endpoints[0].doc_db_settings.docs_to_investigate #=> Integer
    #   resp.data.endpoints[0].doc_db_settings.kms_key_id #=> String
    #   resp.data.endpoints[0].doc_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].doc_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoints[0].redis_settings #=> Types::RedisSettings
    #   resp.data.endpoints[0].redis_settings.server_name #=> String
    #   resp.data.endpoints[0].redis_settings.port #=> Integer
    #   resp.data.endpoints[0].redis_settings.ssl_security_protocol #=> String, one of ["plaintext", "ssl-encryption"]
    #   resp.data.endpoints[0].redis_settings.auth_type #=> String, one of ["none", "auth-role", "auth-token"]
    #   resp.data.endpoints[0].redis_settings.auth_user_name #=> String
    #   resp.data.endpoints[0].redis_settings.auth_password #=> String
    #   resp.data.endpoints[0].redis_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings #=> Types::GcpMySQLSettings
    #   resp.data.endpoints[0].gcp_my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoints[0].gcp_my_sql_settings.database_name #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoints[0].gcp_my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoints[0].gcp_my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoints[0].gcp_my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoints[0].gcp_my_sql_settings.password #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.port #=> Integer
    #   resp.data.endpoints[0].gcp_my_sql_settings.server_name #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.server_timezone #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.username #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoints[0].gcp_my_sql_settings.secrets_manager_secret_id #=> String
    #
    def describe_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoints,
        stubs: @stubs,
        params_class: Params::DescribeEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists categories for all event source types, or, if specified, for a specified source
    #          type. You can see a list of the event categories and source types in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events
    #             and Notifications</a> in the <i>Database Migration Service User
    #             Guide.</i>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventCategoriesInput}.
    #
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the event categories.</p>
    #
    # @return [Types::DescribeEventCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories(
    #     source_type: 'SourceType',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventCategoriesOutput
    #   resp.data.event_category_group_list #=> Array<EventCategoryGroup>
    #   resp.data.event_category_group_list[0] #=> Types::EventCategoryGroup
    #   resp.data.event_category_group_list[0].source_type #=> String
    #   resp.data.event_category_group_list[0].event_categories #=> Array<String>
    #   resp.data.event_category_group_list[0].event_categories[0] #=> String
    #
    def describe_event_categories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventCategoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventCategoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventCategories
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
        data_parser: Parsers::DescribeEventCategories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventCategories,
        stubs: @stubs,
        params_class: Params::DescribeEventCategoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_categories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the event subscriptions for a customer account. The description of a
    #          subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>,
    #             <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>,
    #             <code>CreationTime</code>, and <code>Status</code>. </p>
    #          <p>If you specify <code>SubscriptionName</code>, this action lists the description for that
    #          subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSubscriptionsInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event subscription to be described.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to event subscriptions.</p>
    #            <p>Valid filter names: event-subscription-arn |  event-subscription-id </p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeEventSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions(
    #     subscription_name: 'SubscriptionName',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventSubscriptionsOutput
    #   resp.data.marker #=> String
    #   resp.data.event_subscriptions_list #=> Array<EventSubscription>
    #   resp.data.event_subscriptions_list[0] #=> Types::EventSubscription
    #   resp.data.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.data.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.data.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.data.event_subscriptions_list[0].status #=> String
    #   resp.data.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.data.event_subscriptions_list[0].source_type #=> String
    #   resp.data.event_subscriptions_list[0].source_ids_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].event_categories_list #=> Array<String>
    #   resp.data.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.data.event_subscriptions_list[0].enabled #=> Boolean
    #
    def describe_event_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventSubscriptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventSubscriptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeEventSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventSubscriptions,
        stubs: @stubs,
        params_class: Params::DescribeEventSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists events for a given source identifier and source type. You can also specify a
    #          start and end time. For more information on DMS events, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and
    #             Notifications</a> in the <i>Database Migration Service User
    #          Guide.</i>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :source_identifier
    #   <p> The identifier of an event source.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of DMS resource that generates events.</p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    # @option params [Time] :start_time
    #   <p>The start time for the events to be listed.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time for the events to be listed.</p>
    #
    # @option params [Integer] :duration
    #   <p>The duration of the events to be listed.</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p>A list of event categories for the source type that you've chosen.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to events. The only valid filter is <code>replication-instance-id</code>.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     source_identifier: 'SourceIdentifier',
    #     source_type: 'replication-instance', # accepts ["replication-instance"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.marker #=> String
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].source_identifier #=> String
    #   resp.data.events[0].source_type #=> String, one of ["replication-instance"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].event_categories #=> Array<String>
    #   resp.data.events[0].event_categories[0] #=> String
    #   resp.data.events[0].date #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Returns a list of the Fleet Advisor collectors in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAdvisorCollectorsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those collectors that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>collector-referenced-id</code> – The ID of the collector agent, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the collector agent.</p>
    #               </li>
    #            </ul>
    #
    #           <p>An example is: <code>describe-fleet-advisor-collectors --filter
    #                   Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeFleetAdvisorCollectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_advisor_collectors(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAdvisorCollectorsOutput
    #   resp.data.collectors #=> Array<CollectorResponse>
    #   resp.data.collectors[0] #=> Types::CollectorResponse
    #   resp.data.collectors[0].collector_referenced_id #=> String
    #   resp.data.collectors[0].collector_name #=> String
    #   resp.data.collectors[0].collector_version #=> String
    #   resp.data.collectors[0].version_status #=> String, one of ["UP_TO_DATE", "OUTDATED", "UNSUPPORTED"]
    #   resp.data.collectors[0].description #=> String
    #   resp.data.collectors[0].s3_bucket_name #=> String
    #   resp.data.collectors[0].service_access_role_arn #=> String
    #   resp.data.collectors[0].collector_health_check #=> Types::CollectorHealthCheck
    #   resp.data.collectors[0].collector_health_check.collector_status #=> String, one of ["UNREGISTERED", "ACTIVE"]
    #   resp.data.collectors[0].collector_health_check.local_collector_s3_access #=> Boolean
    #   resp.data.collectors[0].collector_health_check.web_collector_s3_access #=> Boolean
    #   resp.data.collectors[0].collector_health_check.web_collector_granted_role_based_access #=> Boolean
    #   resp.data.collectors[0].last_data_received #=> String
    #   resp.data.collectors[0].registered_date #=> String
    #   resp.data.collectors[0].created_date #=> String
    #   resp.data.collectors[0].modified_date #=> String
    #   resp.data.collectors[0].inventory_data #=> Types::InventoryData
    #   resp.data.collectors[0].inventory_data.number_of_databases #=> Integer
    #   resp.data.collectors[0].inventory_data.number_of_schemas #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_fleet_advisor_collectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAdvisorCollectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAdvisorCollectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAdvisorCollectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault]),
        data_parser: Parsers::DescribeFleetAdvisorCollectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAdvisorCollectors,
        stubs: @stubs,
        params_class: Params::DescribeFleetAdvisorCollectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_advisor_collectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Fleet Advisor databases in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAdvisorDatabasesInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those databases that meet the filter criteria: </p>
    #
    #               <ul>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the database, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the database engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the database server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the associated Fleet Advisor collector.</p>
    #               </li>
    #            </ul>
    #
    #               <p>An example is: <code>describe-fleet-advisor-databases --filter
    #                   Name="database-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeFleetAdvisorDatabasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_advisor_databases(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAdvisorDatabasesOutput
    #   resp.data.databases #=> Array<DatabaseResponse>
    #   resp.data.databases[0] #=> Types::DatabaseResponse
    #   resp.data.databases[0].database_id #=> String
    #   resp.data.databases[0].database_name #=> String
    #   resp.data.databases[0].ip_address #=> String
    #   resp.data.databases[0].number_of_schemas #=> Integer
    #   resp.data.databases[0].server #=> Types::ServerShortInfoResponse
    #   resp.data.databases[0].server.server_id #=> String
    #   resp.data.databases[0].server.ip_address #=> String
    #   resp.data.databases[0].server.server_name #=> String
    #   resp.data.databases[0].software_details #=> Types::DatabaseInstanceSoftwareDetailsResponse
    #   resp.data.databases[0].software_details.engine #=> String
    #   resp.data.databases[0].software_details.engine_version #=> String
    #   resp.data.databases[0].software_details.engine_edition #=> String
    #   resp.data.databases[0].software_details.service_pack #=> String
    #   resp.data.databases[0].software_details.support_level #=> String
    #   resp.data.databases[0].software_details.os_architecture #=> Integer
    #   resp.data.databases[0].software_details.tooltip #=> String
    #   resp.data.databases[0].collectors #=> Array<CollectorShortInfoResponse>
    #   resp.data.databases[0].collectors[0] #=> Types::CollectorShortInfoResponse
    #   resp.data.databases[0].collectors[0].collector_referenced_id #=> String
    #   resp.data.databases[0].collectors[0].collector_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleet_advisor_databases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAdvisorDatabasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAdvisorDatabasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAdvisorDatabases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault]),
        data_parser: Parsers::DescribeFleetAdvisorDatabases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAdvisorDatabases,
        stubs: @stubs,
        params_class: Params::DescribeFleetAdvisorDatabasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_advisor_databases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides descriptions of large-scale assessment (LSA) analyses produced by your
    #             Fleet Advisor collectors.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAdvisorLsaAnalysisInput}.
    #
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeFleetAdvisorLsaAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_advisor_lsa_analysis(
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAdvisorLsaAnalysisOutput
    #   resp.data.analysis #=> Array<FleetAdvisorLsaAnalysisResponse>
    #   resp.data.analysis[0] #=> Types::FleetAdvisorLsaAnalysisResponse
    #   resp.data.analysis[0].lsa_analysis_id #=> String
    #   resp.data.analysis[0].status #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleet_advisor_lsa_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAdvisorLsaAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAdvisorLsaAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAdvisorLsaAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault]),
        data_parser: Parsers::DescribeFleetAdvisorLsaAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAdvisorLsaAnalysis,
        stubs: @stubs,
        params_class: Params::DescribeFleetAdvisorLsaAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_advisor_lsa_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides descriptions of the schemas discovered by your Fleet Advisor
    #             collectors.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAdvisorSchemaObjectSummaryInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schema objects that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #            </ul>
    #
    #           <p>Example: <code>describe-fleet-advisor-schema-object-summary --filter Name="schema-id",Values="50"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeFleetAdvisorSchemaObjectSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_advisor_schema_object_summary(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAdvisorSchemaObjectSummaryOutput
    #   resp.data.fleet_advisor_schema_objects #=> Array<FleetAdvisorSchemaObjectResponse>
    #   resp.data.fleet_advisor_schema_objects[0] #=> Types::FleetAdvisorSchemaObjectResponse
    #   resp.data.fleet_advisor_schema_objects[0].schema_id #=> String
    #   resp.data.fleet_advisor_schema_objects[0].object_type #=> String
    #   resp.data.fleet_advisor_schema_objects[0].number_of_objects #=> Integer
    #   resp.data.fleet_advisor_schema_objects[0].code_line_count #=> Integer
    #   resp.data.fleet_advisor_schema_objects[0].code_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_fleet_advisor_schema_object_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAdvisorSchemaObjectSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAdvisorSchemaObjectSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAdvisorSchemaObjectSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault]),
        data_parser: Parsers::DescribeFleetAdvisorSchemaObjectSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAdvisorSchemaObjectSummary,
        stubs: @stubs,
        params_class: Params::DescribeFleetAdvisorSchemaObjectSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_advisor_schema_object_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of schemas detected by Fleet Advisor Collectors in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAdvisorSchemasInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schemas that meet the filter criteria:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>complexity</code> – The schema's complexity, for example
    #                       <code>Simple</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the schema database's engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>original-schema-name</code> – The name of the schema's database's main schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example <code>15</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-name</code> – The name of the schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the schema database's server.</p>
    #               </li>
    #            </ul>
    #
    #           <p>An example is: <code>describe-fleet-advisor-schemas --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call again using the returned
    #               token to retrieve the next page. Keep all other arguments unchanged. </p>
    #
    # @return [Types::DescribeFleetAdvisorSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_advisor_schemas(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAdvisorSchemasOutput
    #   resp.data.fleet_advisor_schemas #=> Array<SchemaResponse>
    #   resp.data.fleet_advisor_schemas[0] #=> Types::SchemaResponse
    #   resp.data.fleet_advisor_schemas[0].code_line_count #=> Integer
    #   resp.data.fleet_advisor_schemas[0].code_size #=> Integer
    #   resp.data.fleet_advisor_schemas[0].complexity #=> String
    #   resp.data.fleet_advisor_schemas[0].server #=> Types::ServerShortInfoResponse
    #   resp.data.fleet_advisor_schemas[0].server.server_id #=> String
    #   resp.data.fleet_advisor_schemas[0].server.ip_address #=> String
    #   resp.data.fleet_advisor_schemas[0].server.server_name #=> String
    #   resp.data.fleet_advisor_schemas[0].database_instance #=> Types::DatabaseShortInfoResponse
    #   resp.data.fleet_advisor_schemas[0].database_instance.database_id #=> String
    #   resp.data.fleet_advisor_schemas[0].database_instance.database_name #=> String
    #   resp.data.fleet_advisor_schemas[0].database_instance.database_ip_address #=> String
    #   resp.data.fleet_advisor_schemas[0].database_instance.database_engine #=> String
    #   resp.data.fleet_advisor_schemas[0].schema_id #=> String
    #   resp.data.fleet_advisor_schemas[0].schema_name #=> String
    #   resp.data.fleet_advisor_schemas[0].original_schema #=> Types::SchemaShortInfoResponse
    #   resp.data.fleet_advisor_schemas[0].original_schema.schema_id #=> String
    #   resp.data.fleet_advisor_schemas[0].original_schema.schema_name #=> String
    #   resp.data.fleet_advisor_schemas[0].original_schema.database_id #=> String
    #   resp.data.fleet_advisor_schemas[0].original_schema.database_name #=> String
    #   resp.data.fleet_advisor_schemas[0].original_schema.database_ip_address #=> String
    #   resp.data.fleet_advisor_schemas[0].similarity #=> Float
    #   resp.data.next_token #=> String
    #
    def describe_fleet_advisor_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAdvisorSchemasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAdvisorSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAdvisorSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault]),
        data_parser: Parsers::DescribeFleetAdvisorSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAdvisorSchemas,
        stubs: @stubs,
        params_class: Params::DescribeFleetAdvisorSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_advisor_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the replication instance types that can be created in the
    #          specified region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrderableReplicationInstancesInput}.
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeOrderableReplicationInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_replication_instances(
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrderableReplicationInstancesOutput
    #   resp.data.orderable_replication_instances #=> Array<OrderableReplicationInstance>
    #   resp.data.orderable_replication_instances[0] #=> Types::OrderableReplicationInstance
    #   resp.data.orderable_replication_instances[0].engine_version #=> String
    #   resp.data.orderable_replication_instances[0].replication_instance_class #=> String
    #   resp.data.orderable_replication_instances[0].storage_type #=> String
    #   resp.data.orderable_replication_instances[0].min_allocated_storage #=> Integer
    #   resp.data.orderable_replication_instances[0].max_allocated_storage #=> Integer
    #   resp.data.orderable_replication_instances[0].default_allocated_storage #=> Integer
    #   resp.data.orderable_replication_instances[0].included_allocated_storage #=> Integer
    #   resp.data.orderable_replication_instances[0].availability_zones #=> Array<String>
    #   resp.data.orderable_replication_instances[0].availability_zones[0] #=> String
    #   resp.data.orderable_replication_instances[0].release_status #=> String, one of ["beta"]
    #   resp.data.marker #=> String
    #
    def describe_orderable_replication_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrderableReplicationInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrderableReplicationInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrderableReplicationInstances
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
        data_parser: Parsers::DescribeOrderableReplicationInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrderableReplicationInstances,
        stubs: @stubs,
        params_class: Params::DescribeOrderableReplicationInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_orderable_replication_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For internal use only</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePendingMaintenanceActionsInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p></p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @return [Types::DescribePendingMaintenanceActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_maintenance_actions(
    #     replication_instance_arn: 'ReplicationInstanceArn',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     marker: 'Marker',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePendingMaintenanceActionsOutput
    #   resp.data.pending_maintenance_actions #=> Array<ResourcePendingMaintenanceActions>
    #   resp.data.pending_maintenance_actions[0] #=> Types::ResourcePendingMaintenanceActions
    #   resp.data.pending_maintenance_actions[0].resource_identifier #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details #=> Array<PendingMaintenanceAction>
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0] #=> Types::PendingMaintenanceAction
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].action #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.data.pending_maintenance_actions[0].pending_maintenance_action_details[0].description #=> String
    #   resp.data.marker #=> String
    #
    def describe_pending_maintenance_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePendingMaintenanceActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePendingMaintenanceActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePendingMaintenanceActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribePendingMaintenanceActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePendingMaintenanceActions,
        stubs: @stubs,
        params_class: Params::DescribePendingMaintenanceActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pending_maintenance_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the status of the RefreshSchemas operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRefreshSchemasStatusInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @return [Types::DescribeRefreshSchemasStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_refresh_schemas_status(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRefreshSchemasStatusOutput
    #   resp.data.refresh_schemas_status #=> Types::RefreshSchemasStatus
    #   resp.data.refresh_schemas_status.endpoint_arn #=> String
    #   resp.data.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.data.refresh_schemas_status.status #=> String, one of ["successful", "failed", "refreshing"]
    #   resp.data.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.data.refresh_schemas_status.last_failure_message #=> String
    #
    def describe_refresh_schemas_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRefreshSchemasStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRefreshSchemasStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRefreshSchemasStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeRefreshSchemasStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRefreshSchemasStatus,
        stubs: @stubs,
        params_class: Params::DescribeRefreshSchemasStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_refresh_schemas_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the task logs for the specified task.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationInstanceTaskLogsInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReplicationInstanceTaskLogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instance_task_logs(
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationInstanceTaskLogsOutput
    #   resp.data.replication_instance_arn #=> String
    #   resp.data.replication_instance_task_logs #=> Array<ReplicationInstanceTaskLog>
    #   resp.data.replication_instance_task_logs[0] #=> Types::ReplicationInstanceTaskLog
    #   resp.data.replication_instance_task_logs[0].replication_task_name #=> String
    #   resp.data.replication_instance_task_logs[0].replication_task_arn #=> String
    #   resp.data.replication_instance_task_logs[0].replication_instance_task_log_size #=> Integer
    #   resp.data.marker #=> String
    #
    def describe_replication_instance_task_logs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationInstanceTaskLogsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationInstanceTaskLogsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationInstanceTaskLogs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationInstanceTaskLogs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationInstanceTaskLogs,
        stubs: @stubs,
        params_class: Params::DescribeReplicationInstanceTaskLogsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_instance_task_logs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about replication instances for your account in the current
    #          region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationInstancesInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to replication instances.</p>
    #            <p>Valid filter names: replication-instance-arn | replication-instance-id |
    #            replication-instance-class | engine-version</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeReplicationInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_instances(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationInstancesOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_instances #=> Array<ReplicationInstance>
    #   resp.data.replication_instances[0] #=> Types::ReplicationInstance
    #   resp.data.replication_instances[0].replication_instance_identifier #=> String
    #   resp.data.replication_instances[0].replication_instance_class #=> String
    #   resp.data.replication_instances[0].replication_instance_status #=> String
    #   resp.data.replication_instances[0].allocated_storage #=> Integer
    #   resp.data.replication_instances[0].instance_create_time #=> Time
    #   resp.data.replication_instances[0].vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.replication_instances[0].vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.replication_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.replication_instances[0].vpc_security_groups[0].status #=> String
    #   resp.data.replication_instances[0].availability_zone #=> String
    #   resp.data.replication_instances[0].replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_instances[0].replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_instances[0].replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_instances[0].replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_instances[0].replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_instances[0].replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.replication_instances[0].preferred_maintenance_window #=> String
    #   resp.data.replication_instances[0].pending_modified_values #=> Types::ReplicationPendingModifiedValues
    #   resp.data.replication_instances[0].pending_modified_values.replication_instance_class #=> String
    #   resp.data.replication_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.data.replication_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.data.replication_instances[0].pending_modified_values.engine_version #=> String
    #   resp.data.replication_instances[0].multi_az #=> Boolean
    #   resp.data.replication_instances[0].engine_version #=> String
    #   resp.data.replication_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.data.replication_instances[0].kms_key_id #=> String
    #   resp.data.replication_instances[0].replication_instance_arn #=> String
    #   resp.data.replication_instances[0].replication_instance_public_ip_address #=> String
    #   resp.data.replication_instances[0].replication_instance_private_ip_address #=> String
    #   resp.data.replication_instances[0].replication_instance_public_ip_addresses #=> Array<String>
    #   resp.data.replication_instances[0].replication_instance_public_ip_addresses[0] #=> String
    #   resp.data.replication_instances[0].replication_instance_private_ip_addresses #=> Array<String>
    #   resp.data.replication_instances[0].replication_instance_private_ip_addresses[0] #=> String
    #   resp.data.replication_instances[0].publicly_accessible #=> Boolean
    #   resp.data.replication_instances[0].secondary_availability_zone #=> String
    #   resp.data.replication_instances[0].free_until #=> Time
    #   resp.data.replication_instances[0].dns_name_servers #=> String
    #
    def describe_replication_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationInstances,
        stubs: @stubs,
        params_class: Params::DescribeReplicationInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the replication subnet groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationSubnetGroupsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to replication subnet groups.</p>
    #            <p>Valid filter names: replication-subnet-group-id</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeReplicationSubnetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_subnet_groups(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationSubnetGroupsOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_subnet_groups #=> Array<ReplicationSubnetGroup>
    #   resp.data.replication_subnet_groups[0] #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_subnet_groups[0].replication_subnet_group_identifier #=> String
    #   resp.data.replication_subnet_groups[0].replication_subnet_group_description #=> String
    #   resp.data.replication_subnet_groups[0].vpc_id #=> String
    #   resp.data.replication_subnet_groups[0].subnet_group_status #=> String
    #   resp.data.replication_subnet_groups[0].subnets #=> Array<Subnet>
    #   resp.data.replication_subnet_groups[0].subnets[0] #=> Types::Subnet
    #   resp.data.replication_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.data.replication_subnet_groups[0].subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_subnet_groups[0].subnets[0].subnet_status #=> String
    #
    def describe_replication_subnet_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationSubnetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationSubnetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationSubnetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationSubnetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationSubnetGroups,
        stubs: @stubs,
        params_class: Params::DescribeReplicationSubnetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_subnet_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the task assessment results from the Amazon S3 bucket that DMS creates in your
    #           Amazon Web Services account.  This action always returns the
    #          latest results.</p>
    #          <p>For more information about DMS task assessments, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Creating a task assessment report</a>
    #            in the <i>Database Migration Service User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationTaskAssessmentResultsInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input
    #            parameter is specified, the API returns only one result and ignore the values of the
    #               <code>MaxRecords</code> and <code>Marker</code> parameters. </p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeReplicationTaskAssessmentResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_assessment_results(
    #     replication_task_arn: 'ReplicationTaskArn',
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationTaskAssessmentResultsOutput
    #   resp.data.marker #=> String
    #   resp.data.bucket_name #=> String
    #   resp.data.replication_task_assessment_results #=> Array<ReplicationTaskAssessmentResult>
    #   resp.data.replication_task_assessment_results[0] #=> Types::ReplicationTaskAssessmentResult
    #   resp.data.replication_task_assessment_results[0].replication_task_identifier #=> String
    #   resp.data.replication_task_assessment_results[0].replication_task_arn #=> String
    #   resp.data.replication_task_assessment_results[0].replication_task_last_assessment_date #=> Time
    #   resp.data.replication_task_assessment_results[0].assessment_status #=> String
    #   resp.data.replication_task_assessment_results[0].assessment_results_file #=> String
    #   resp.data.replication_task_assessment_results[0].assessment_results #=> String
    #   resp.data.replication_task_assessment_results[0].s3_object_url #=> String
    #
    def describe_replication_task_assessment_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationTaskAssessmentResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationTaskAssessmentResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationTaskAssessmentResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationTaskAssessmentResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationTaskAssessmentResults,
        stubs: @stubs,
        params_class: Params::DescribeReplicationTaskAssessmentResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_task_assessment_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of premigration assessment runs based on filter
    #          settings.</p>
    #          <p>These filter settings can specify a combination of premigration assessment runs,
    #          migration tasks, replication instances, and assessment run status values.</p>
    #          <note>
    #             <p>This operation doesn't return information about individual assessments. For this
    #             information, see the <code>DescribeReplicationTaskIndividualAssessments</code>
    #             operation. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationTaskAssessmentRunsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the premigration assessment runs described in the form of key-value pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>,
    #            <code>replication-instance-arn</code>, <code>status</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReplicationTaskAssessmentRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_assessment_runs(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationTaskAssessmentRunsOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_task_assessment_runs #=> Array<ReplicationTaskAssessmentRun>
    #   resp.data.replication_task_assessment_runs[0] #=> Types::ReplicationTaskAssessmentRun
    #   resp.data.replication_task_assessment_runs[0].replication_task_assessment_run_arn #=> String
    #   resp.data.replication_task_assessment_runs[0].replication_task_arn #=> String
    #   resp.data.replication_task_assessment_runs[0].status #=> String
    #   resp.data.replication_task_assessment_runs[0].replication_task_assessment_run_creation_date #=> Time
    #   resp.data.replication_task_assessment_runs[0].assessment_progress #=> Types::ReplicationTaskAssessmentRunProgress
    #   resp.data.replication_task_assessment_runs[0].assessment_progress.individual_assessment_count #=> Integer
    #   resp.data.replication_task_assessment_runs[0].assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.data.replication_task_assessment_runs[0].last_failure_message #=> String
    #   resp.data.replication_task_assessment_runs[0].service_access_role_arn #=> String
    #   resp.data.replication_task_assessment_runs[0].result_location_bucket #=> String
    #   resp.data.replication_task_assessment_runs[0].result_location_folder #=> String
    #   resp.data.replication_task_assessment_runs[0].result_encryption_mode #=> String
    #   resp.data.replication_task_assessment_runs[0].result_kms_key_arn #=> String
    #   resp.data.replication_task_assessment_runs[0].assessment_run_name #=> String
    #
    def describe_replication_task_assessment_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationTaskAssessmentRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationTaskAssessmentRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationTaskAssessmentRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationTaskAssessmentRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationTaskAssessmentRuns,
        stubs: @stubs,
        params_class: Params::DescribeReplicationTaskAssessmentRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_task_assessment_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of individual assessments based on filter settings.</p>
    #          <p>These filter settings can specify a combination of premigration assessment runs,
    #          migration tasks, and assessment status values.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationTaskIndividualAssessmentsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to the individual assessments described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>status</code>
    #            </p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #
    # @return [Types::DescribeReplicationTaskIndividualAssessmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_task_individual_assessments(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationTaskIndividualAssessmentsOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_task_individual_assessments #=> Array<ReplicationTaskIndividualAssessment>
    #   resp.data.replication_task_individual_assessments[0] #=> Types::ReplicationTaskIndividualAssessment
    #   resp.data.replication_task_individual_assessments[0].replication_task_individual_assessment_arn #=> String
    #   resp.data.replication_task_individual_assessments[0].replication_task_assessment_run_arn #=> String
    #   resp.data.replication_task_individual_assessments[0].individual_assessment_name #=> String
    #   resp.data.replication_task_individual_assessments[0].status #=> String
    #   resp.data.replication_task_individual_assessments[0].replication_task_individual_assessment_start_date #=> Time
    #
    def describe_replication_task_individual_assessments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationTaskIndividualAssessmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationTaskIndividualAssessmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationTaskIndividualAssessments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationTaskIndividualAssessments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationTaskIndividualAssessments,
        stubs: @stubs,
        params_class: Params::DescribeReplicationTaskIndividualAssessmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_task_individual_assessments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about replication tasks for your account in the current
    #          region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationTasksInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to replication tasks.</p>
    #            <p>Valid filter names: replication-task-arn | replication-task-id | migration-type |
    #            endpoint-arn | replication-instance-arn</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @option params [Boolean] :without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    #
    # @return [Types::DescribeReplicationTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_tasks(
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_records: 1,
    #     marker: 'Marker',
    #     without_settings: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationTasksOutput
    #   resp.data.marker #=> String
    #   resp.data.replication_tasks #=> Array<ReplicationTask>
    #   resp.data.replication_tasks[0] #=> Types::ReplicationTask
    #   resp.data.replication_tasks[0].replication_task_identifier #=> String
    #   resp.data.replication_tasks[0].source_endpoint_arn #=> String
    #   resp.data.replication_tasks[0].target_endpoint_arn #=> String
    #   resp.data.replication_tasks[0].replication_instance_arn #=> String
    #   resp.data.replication_tasks[0].migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_tasks[0].table_mappings #=> String
    #   resp.data.replication_tasks[0].replication_task_settings #=> String
    #   resp.data.replication_tasks[0].status #=> String
    #   resp.data.replication_tasks[0].last_failure_message #=> String
    #   resp.data.replication_tasks[0].stop_reason #=> String
    #   resp.data.replication_tasks[0].replication_task_creation_date #=> Time
    #   resp.data.replication_tasks[0].replication_task_start_date #=> Time
    #   resp.data.replication_tasks[0].cdc_start_position #=> String
    #   resp.data.replication_tasks[0].cdc_stop_position #=> String
    #   resp.data.replication_tasks[0].recovery_checkpoint #=> String
    #   resp.data.replication_tasks[0].replication_task_arn #=> String
    #   resp.data.replication_tasks[0].replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_tasks[0].replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_tasks[0].replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_tasks[0].replication_task_stats.start_date #=> Time
    #   resp.data.replication_tasks[0].replication_task_stats.stop_date #=> Time
    #   resp.data.replication_tasks[0].replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_tasks[0].replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_tasks[0].task_data #=> String
    #   resp.data.replication_tasks[0].target_replication_instance_arn #=> String
    #
    def describe_replication_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeReplicationTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationTasks,
        stubs: @stubs,
        params_class: Params::DescribeReplicationTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the schema for the specified endpoint.</p>
    #
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSchemasInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @return [Types::DescribeSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schemas(
    #     endpoint_arn: 'EndpointArn', # required
    #     max_records: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSchemasOutput
    #   resp.data.marker #=> String
    #   resp.data.schemas #=> Array<String>
    #   resp.data.schemas[0] #=> String
    #
    def describe_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSchemasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSchemas,
        stubs: @stubs,
        params_class: Params::DescribeSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns table statistics on the database migration task, including table name, rows
    #          inserted, rows updated, and rows deleted.</p>
    #          <p>Note that the "last updated" column the DMS console only indicates the time that DMS
    #          last updated the table statistics record for a table. It does not indicate the time of the
    #          last update to the table.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableStatisticsInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    # @option params [Integer] :max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 500.</p>
    #
    # @option params [String] :marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters applied to table statistics.</p>
    #            <p>Valid filter names: schema-name | table-name | table-state</p>
    #            <p>A combination of filters creates an AND condition where each record matches all
    #            specified filters.</p>
    #
    # @return [Types::DescribeTableStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_statistics(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     max_records: 1,
    #     marker: 'Marker',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableStatisticsOutput
    #   resp.data.replication_task_arn #=> String
    #   resp.data.table_statistics #=> Array<TableStatistics>
    #   resp.data.table_statistics[0] #=> Types::TableStatistics
    #   resp.data.table_statistics[0].schema_name #=> String
    #   resp.data.table_statistics[0].table_name #=> String
    #   resp.data.table_statistics[0].inserts #=> Integer
    #   resp.data.table_statistics[0].deletes #=> Integer
    #   resp.data.table_statistics[0].updates #=> Integer
    #   resp.data.table_statistics[0].ddls #=> Integer
    #   resp.data.table_statistics[0].full_load_rows #=> Integer
    #   resp.data.table_statistics[0].full_load_condtnl_chk_failed_rows #=> Integer
    #   resp.data.table_statistics[0].full_load_error_rows #=> Integer
    #   resp.data.table_statistics[0].full_load_start_time #=> Time
    #   resp.data.table_statistics[0].full_load_end_time #=> Time
    #   resp.data.table_statistics[0].full_load_reloaded #=> Boolean
    #   resp.data.table_statistics[0].last_update_time #=> Time
    #   resp.data.table_statistics[0].table_state #=> String
    #   resp.data.table_statistics[0].validation_pending_records #=> Integer
    #   resp.data.table_statistics[0].validation_failed_records #=> Integer
    #   resp.data.table_statistics[0].validation_suspended_records #=> Integer
    #   resp.data.table_statistics[0].validation_state #=> String
    #   resp.data.table_statistics[0].validation_state_details #=> String
    #   resp.data.marker #=> String
    #
    def describe_table_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTableStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::DescribeTableStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTableStatistics,
        stubs: @stubs,
        params_class: Params::DescribeTableStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads the specified certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportCertificateInput}.
    #
    # @option params [String] :certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    #
    # @option params [String] :certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    #
    # @option params [String] :certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Provide the name of a <code>.sso</code> file
    #             using the <code>fileb://</code> prefix. You can't provide the certificate inline.</p>
    #             <p>Example: <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the certificate.</p>
    #
    # @return [Types::ImportCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate(
    #     certificate_identifier: 'CertificateIdentifier', # required
    #     certificate_pem: 'CertificatePem',
    #     certificate_wallet: 'CertificateWallet',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         resource_arn: 'ResourceArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportCertificateOutput
    #   resp.data.certificate #=> Types::Certificate
    #   resp.data.certificate.certificate_identifier #=> String
    #   resp.data.certificate.certificate_creation_date #=> Time
    #   resp.data.certificate.certificate_pem #=> String
    #   resp.data.certificate.certificate_wallet #=> String
    #   resp.data.certificate.certificate_arn #=> String
    #   resp.data.certificate.certificate_owner #=> String
    #   resp.data.certificate.valid_from_date #=> Time
    #   resp.data.certificate.valid_to_date #=> Time
    #   resp.data.certificate.signing_algorithm #=> String
    #   resp.data.certificate.key_length #=> Integer
    #
    def import_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidCertificateFault, Errors::ResourceAlreadyExistsFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::ImportCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportCertificate,
        stubs: @stubs,
        params_class: Params::ImportCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all metadata tags attached to an DMS resource, including
    #          replication instance, endpoint, security group, and migration task.
    #          For more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a> data type description.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DMS resource to
    #            list tags for. This returns a list of keys (names of tags) created for the resource and
    #            their associated tag values.</p>
    #
    # @option params [Array<String>] :resource_arn_list
    #   <p>List of ARNs that identify multiple DMS resources that you want to list tags for. This
    #            returns a list of keys (tag names) and their associated tag values. It also returns each
    #            tag's associated <code>ResourceArn</code> value, which is the ARN of the resource for which
    #            each listed tag is created. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn',
    #     resource_arn_list: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #   resp.data.tag_list[0].resource_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
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

    # <p>Modifies the specified endpoint.</p>
    #          <note>
    #             <p>For a MySQL source or target endpoint, don't explicitly specify the database using
    #          the <code>DatabaseName</code> request parameter on the <code>ModifyEndpoint</code> API call.
    #          Specifying <code>DatabaseName</code> when you modify a MySQL endpoint replicates all the
    #          task tables to this single database. For MySQL endpoints, you specify the database only when
    #          you specify the schema in the table-mapping rules of the DMS task.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ModifyEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @option params [String] :endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint.  Valid values are <code>source</code> and <code>target</code>.</p>
    #
    # @option params [String] :engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the EndpointType,
    #            include
    #            <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #            <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>, <code>"opensearch"</code>,
    #            <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"azuredb"</code>,
    #            <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #            <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #            <code>"documentdb"</code>, <code>"sqlserver"</code>, and <code>"neptune"</code>.</p>
    #
    # @option params [String] :username
    #   <p>The user name to be used to login to the endpoint database.</p>
    #
    # @option params [String] :password
    #   <p>The password to be used to login to the endpoint database.</p>
    #
    # @option params [String] :server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #
    # @option params [Integer] :port
    #   <p>The port used by the endpoint database.</p>
    #
    # @option params [String] :database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify DatabaseName.</p>
    #
    # @option params [String] :extra_connection_attributes
    #   <p>Additional attributes associated with the connection. To reset this parameter, pass the
    #            empty string ("") as an argument.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #
    # @option params [String] :ssl_mode
    #   <p>The SSL mode used to connect to the endpoint.  The default value is <code>none</code>.</p>
    #
    # @option params [String] :service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the IAM role you want to use to modify
    #            the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    # @option params [String] :external_table_definition
    #   <p>The external table definition.</p>
    #
    # @option params [DynamoDbSettings] :dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other
    #               available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate
    #               Data to DynamoDB</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #
    # @option params [S3Settings] :s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #               the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [DmsTransferSettings] :dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Attributes include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>BucketName - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string
    #               ,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string"} </code>
    #            </p>
    #
    # @option params [MongoDbSettings] :mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings
    #               when using MongoDB as a source for Database Migration Service</a> in the
    #            <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [KinesisSettings] :kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to
    #               migrate data to a Kinesis data stream</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [KafkaSettings] :kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using object mapping
    #               to migrate data to a Kafka topic</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [ElasticsearchSettings] :elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for DMS</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [NeptuneSettings] :neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target</a>
    #            in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [RedshiftSettings] :redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #
    # @option params [PostgreSQLSettings] :postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection
    #               attributes when using PostgreSQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib">
    #               Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [MySQLSettings] :my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection
    #               attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra
    #               connection attributes when using a MySQL-compatible database as a target for DMS</a> in the <i>Database Migration Service User
    #            Guide.</i>
    #            </p>
    #
    # @option params [OracleSettings] :oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection
    #               attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [SybaseSettings] :sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra connection attributes
    #               when using SAP ASE as a target for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    # @option params [MicrosoftSQLServerSettings] :microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection
    #               attributes when using SQL Server as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib">
    #               Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @option params [IBMDb2Settings] :ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra connection attributes
    #               when using Db2 LUW as a source for DMS</a> in the <i>Database Migration Service
    #                   User Guide.</i>
    #            </p>
    #
    # @option params [DocDbSettings] :doc_db_settings
    #   <p>Settings in JSON format for the source DocumentDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html"> Using DocumentDB as a Target for Database Migration Service
    #                </a> in the <i>Database Migration Service User
    #                  Guide.</i>
    #            </p>
    #
    # @option params [RedisSettings] :redis_settings
    #   <p>Settings in JSON format for the Redis target endpoint.</p>
    #
    # @option params [Boolean] :exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyEndpoint</code> replaces all
    #            existing endpoint settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyEndpoint</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any endpoint settings that already exist with new values, for settings with the
    #                  same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new endpoint settings that you specify in the call, for settings with different
    #                  names. </p>
    #               </li>
    #            </ul>
    #            <p>For example, if you call <code>create-endpoint ... --endpoint-settings '{"a":1}'
    #               ...</code>, the endpoint has the following endpoint settings: <code>'{"a":1}'</code>. If
    #            you then call <code>modify-endpoint ... --endpoint-settings '{"b":2}' ...</code> for the
    #            same endpoint, the endpoint has the following settings: <code>'{"a":1,"b":2}'</code>. </p>
    #            <p>However, suppose that you follow this with a call to <code>modify-endpoint ...
    #               --endpoint-settings '{"b":2}' --exact-settings ...</code> for that same endpoint again.
    #            Then the endpoint has the following settings: <code>'{"b":2}'</code>. All existing settings
    #            are replaced with the exact settings that you specify. </p>
    #
    # @option params [GcpMySQLSettings] :gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #
    # @return [Types::ModifyEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_endpoint(
    #     endpoint_arn: 'EndpointArn', # required
    #     endpoint_identifier: 'EndpointIdentifier',
    #     endpoint_type: 'source', # accepts ["source", "target"]
    #     engine_name: 'EngineName',
    #     username: 'Username',
    #     password: 'Password',
    #     server_name: 'ServerName',
    #     port: 1,
    #     database_name: 'DatabaseName',
    #     extra_connection_attributes: 'ExtraConnectionAttributes',
    #     certificate_arn: 'CertificateArn',
    #     ssl_mode: 'none', # accepts ["none", "require", "verify-ca", "verify-full"]
    #     service_access_role_arn: 'ServiceAccessRoleArn',
    #     external_table_definition: 'ExternalTableDefinition',
    #     dynamo_db_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn' # required
    #     },
    #     s3_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       external_table_definition: 'ExternalTableDefinition',
    #       csv_row_delimiter: 'CsvRowDelimiter',
    #       csv_delimiter: 'CsvDelimiter',
    #       bucket_folder: 'BucketFolder',
    #       bucket_name: 'BucketName',
    #       compression_type: 'none', # accepts ["none", "gzip"]
    #       encryption_mode: 'sse-s3', # accepts ["sse-s3", "sse-kms"]
    #       server_side_encryption_kms_key_id: 'ServerSideEncryptionKmsKeyId',
    #       data_format: 'csv', # accepts ["csv", "parquet"]
    #       encoding_type: 'plain', # accepts ["plain", "plain-dictionary", "rle-dictionary"]
    #       dict_page_size_limit: 1,
    #       row_group_length: 1,
    #       data_page_size: 1,
    #       parquet_version: 'parquet-1-0', # accepts ["parquet-1-0", "parquet-2-0"]
    #       enable_statistics: false,
    #       include_op_for_full_load: false,
    #       cdc_inserts_only: false,
    #       timestamp_column_name: 'TimestampColumnName',
    #       parquet_timestamp_in_millisecond: false,
    #       cdc_inserts_and_updates: false,
    #       date_partition_enabled: false,
    #       date_partition_sequence: 'YYYYMMDD', # accepts ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #       date_partition_delimiter: 'SLASH', # accepts ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #       use_csv_no_sup_value: false,
    #       csv_no_sup_value: 'CsvNoSupValue',
    #       preserve_transactions: false,
    #       cdc_path: 'CdcPath',
    #       use_task_start_time_for_full_load_timestamp: false,
    #       canned_acl_for_objects: 'none', # accepts ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #       add_column_name: false,
    #       cdc_max_batch_interval: 1,
    #       cdc_min_file_size: 1,
    #       csv_null_value: 'CsvNullValue',
    #       ignore_header_rows: 1,
    #       max_file_size: 1,
    #       rfc4180: false,
    #       date_partition_timezone: 'DatePartitionTimezone'
    #     },
    #     dms_transfer_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       bucket_name: 'BucketName'
    #     },
    #     mongo_db_settings: {
    #       username: 'Username',
    #       password: 'Password',
    #       server_name: 'ServerName',
    #       port: 1,
    #       database_name: 'DatabaseName',
    #       auth_type: 'no', # accepts ["no", "password"]
    #       auth_mechanism: 'default', # accepts ["default", "mongodb_cr", "scram_sha_1"]
    #       nesting_level: 'none', # accepts ["none", "one"]
    #       extract_doc_id: 'ExtractDocId',
    #       docs_to_investigate: 'DocsToInvestigate',
    #       auth_source: 'AuthSource',
    #       kms_key_id: 'KmsKeyId',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     kinesis_settings: {
    #       stream_arn: 'StreamArn',
    #       message_format: 'json', # accepts ["json", "json-unformatted"]
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       include_null_and_empty: false,
    #       no_hex_prefix: false
    #     },
    #     kafka_settings: {
    #       broker: 'Broker',
    #       topic: 'Topic',
    #       message_format: 'json', # accepts ["json", "json-unformatted"]
    #       include_transaction_details: false,
    #       include_partition_value: false,
    #       partition_include_schema_table: false,
    #       include_table_alter_operations: false,
    #       include_control_details: false,
    #       message_max_bytes: 1,
    #       include_null_and_empty: false,
    #       security_protocol: 'plaintext', # accepts ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #       ssl_client_certificate_arn: 'SslClientCertificateArn',
    #       ssl_client_key_arn: 'SslClientKeyArn',
    #       ssl_client_key_password: 'SslClientKeyPassword',
    #       ssl_ca_certificate_arn: 'SslCaCertificateArn',
    #       sasl_username: 'SaslUsername',
    #       sasl_password: 'SaslPassword',
    #       no_hex_prefix: false
    #     },
    #     elasticsearch_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn', # required
    #       endpoint_uri: 'EndpointUri', # required
    #       full_load_error_percentage: 1,
    #       error_retry_duration: 1
    #     },
    #     neptune_settings: {
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_bucket_folder: 'S3BucketFolder', # required
    #       error_retry_duration: 1,
    #       max_file_size: 1,
    #       max_retry_count: 1,
    #       iam_auth_enabled: false
    #     },
    #     redshift_settings: {
    #       accept_any_date: false,
    #       after_connect_script: 'AfterConnectScript',
    #       bucket_folder: 'BucketFolder',
    #       bucket_name: 'BucketName',
    #       case_sensitive_names: false,
    #       comp_update: false,
    #       connection_timeout: 1,
    #       database_name: 'DatabaseName',
    #       date_format: 'DateFormat',
    #       empty_as_null: false,
    #       encryption_mode: 'sse-s3', # accepts ["sse-s3", "sse-kms"]
    #       explicit_ids: false,
    #       file_transfer_upload_streams: 1,
    #       load_timeout: 1,
    #       max_file_size: 1,
    #       password: 'Password',
    #       port: 1,
    #       remove_quotes: false,
    #       replace_invalid_chars: 'ReplaceInvalidChars',
    #       replace_chars: 'ReplaceChars',
    #       server_name: 'ServerName',
    #       service_access_role_arn: 'ServiceAccessRoleArn',
    #       server_side_encryption_kms_key_id: 'ServerSideEncryptionKmsKeyId',
    #       time_format: 'TimeFormat',
    #       trim_blanks: false,
    #       truncate_columns: false,
    #       username: 'Username',
    #       write_buffer_size: 1,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     postgre_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       capture_ddls: false,
    #       max_file_size: 1,
    #       database_name: 'DatabaseName',
    #       ddl_artifacts_schema: 'DdlArtifactsSchema',
    #       execute_timeout: 1,
    #       fail_tasks_on_lob_truncation: false,
    #       heartbeat_enable: false,
    #       heartbeat_schema: 'HeartbeatSchema',
    #       heartbeat_frequency: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       slot_name: 'SlotName',
    #       plugin_name: 'no-preference', # accepts ["no-preference", "test-decoding", "pglogical"]
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     my_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: 'DatabaseName',
    #       events_poll_interval: 1,
    #       target_db_type: 'specific-database', # accepts ["specific-database", "multiple-databases"]
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       server_timezone: 'ServerTimezone',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     oracle_settings: {
    #       add_supplemental_logging: false,
    #       archived_log_dest_id: 1,
    #       additional_archived_log_dest_id: 1,
    #       extra_archived_log_dest_ids: [
    #         1
    #       ],
    #       allow_select_nested_tables: false,
    #       parallel_asm_read_threads: 1,
    #       read_ahead_blocks: 1,
    #       access_alternate_directly: false,
    #       use_alternate_folder_for_online: false,
    #       oracle_path_prefix: 'OraclePathPrefix',
    #       use_path_prefix: 'UsePathPrefix',
    #       replace_path_prefix: false,
    #       enable_homogenous_tablespace: false,
    #       direct_path_no_log: false,
    #       archived_logs_only: false,
    #       asm_password: 'AsmPassword',
    #       asm_server: 'AsmServer',
    #       asm_user: 'AsmUser',
    #       char_length_semantics: 'default', # accepts ["default", "char", "byte"]
    #       database_name: 'DatabaseName',
    #       direct_path_parallel_load: false,
    #       fail_tasks_on_lob_truncation: false,
    #       number_datatype_scale: 1,
    #       password: 'Password',
    #       port: 1,
    #       read_table_space_name: false,
    #       retry_interval: 1,
    #       security_db_encryption: 'SecurityDbEncryption',
    #       security_db_encryption_name: 'SecurityDbEncryptionName',
    #       server_name: 'ServerName',
    #       spatial_data_option_to_geo_json_function_name: 'SpatialDataOptionToGeoJsonFunctionName',
    #       standby_delay_time: 1,
    #       username: 'Username',
    #       use_b_file: false,
    #       use_direct_path_full_load: false,
    #       use_logminer_reader: false,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId',
    #       secrets_manager_oracle_asm_access_role_arn: 'SecretsManagerOracleAsmAccessRoleArn',
    #       secrets_manager_oracle_asm_secret_id: 'SecretsManagerOracleAsmSecretId'
    #     },
    #     sybase_settings: {
    #       database_name: 'DatabaseName',
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     microsoft_sql_server_settings: {
    #       port: 1,
    #       bcp_packet_size: 1,
    #       database_name: 'DatabaseName',
    #       control_tables_file_group: 'ControlTablesFileGroup',
    #       password: 'Password',
    #       query_single_always_on_node: false,
    #       read_backup_only: false,
    #       safeguard_policy: 'rely-on-sql-server-replication-agent', # accepts ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #       server_name: 'ServerName',
    #       username: 'Username',
    #       use_bcp_full_load: false,
    #       use_third_party_backup_device: false,
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     ibm_db2_settings: {
    #       database_name: 'DatabaseName',
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       set_data_capture_changes: false,
    #       current_lsn: 'CurrentLsn',
    #       max_k_bytes_per_read: 1,
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     doc_db_settings: {
    #       username: 'Username',
    #       password: 'Password',
    #       server_name: 'ServerName',
    #       port: 1,
    #       database_name: 'DatabaseName',
    #       nesting_level: 'none', # accepts ["none", "one"]
    #       extract_doc_id: false,
    #       docs_to_investigate: 1,
    #       kms_key_id: 'KmsKeyId',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     },
    #     redis_settings: {
    #       server_name: 'ServerName', # required
    #       port: 1, # required
    #       ssl_security_protocol: 'plaintext', # accepts ["plaintext", "ssl-encryption"]
    #       auth_type: 'none', # accepts ["none", "auth-role", "auth-token"]
    #       auth_user_name: 'AuthUserName',
    #       auth_password: 'AuthPassword',
    #       ssl_ca_certificate_arn: 'SslCaCertificateArn'
    #     },
    #     exact_settings: false,
    #     gcp_my_sql_settings: {
    #       after_connect_script: 'AfterConnectScript',
    #       clean_source_metadata_on_mismatch: false,
    #       database_name: 'DatabaseName',
    #       events_poll_interval: 1,
    #       target_db_type: 'specific-database', # accepts ["specific-database", "multiple-databases"]
    #       max_file_size: 1,
    #       parallel_load_threads: 1,
    #       password: 'Password',
    #       port: 1,
    #       server_name: 'ServerName',
    #       server_timezone: 'ServerTimezone',
    #       username: 'Username',
    #       secrets_manager_access_role_arn: 'SecretsManagerAccessRoleArn',
    #       secrets_manager_secret_id: 'SecretsManagerSecretId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyEndpointOutput
    #   resp.data.endpoint #=> Types::Endpoint
    #   resp.data.endpoint.endpoint_identifier #=> String
    #   resp.data.endpoint.endpoint_type #=> String, one of ["source", "target"]
    #   resp.data.endpoint.engine_name #=> String
    #   resp.data.endpoint.engine_display_name #=> String
    #   resp.data.endpoint.username #=> String
    #   resp.data.endpoint.server_name #=> String
    #   resp.data.endpoint.port #=> Integer
    #   resp.data.endpoint.database_name #=> String
    #   resp.data.endpoint.extra_connection_attributes #=> String
    #   resp.data.endpoint.status #=> String
    #   resp.data.endpoint.kms_key_id #=> String
    #   resp.data.endpoint.endpoint_arn #=> String
    #   resp.data.endpoint.certificate_arn #=> String
    #   resp.data.endpoint.ssl_mode #=> String, one of ["none", "require", "verify-ca", "verify-full"]
    #   resp.data.endpoint.service_access_role_arn #=> String
    #   resp.data.endpoint.external_table_definition #=> String
    #   resp.data.endpoint.external_id #=> String
    #   resp.data.endpoint.dynamo_db_settings #=> Types::DynamoDbSettings
    #   resp.data.endpoint.dynamo_db_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings #=> Types::S3Settings
    #   resp.data.endpoint.s3_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.s3_settings.external_table_definition #=> String
    #   resp.data.endpoint.s3_settings.csv_row_delimiter #=> String
    #   resp.data.endpoint.s3_settings.csv_delimiter #=> String
    #   resp.data.endpoint.s3_settings.bucket_folder #=> String
    #   resp.data.endpoint.s3_settings.bucket_name #=> String
    #   resp.data.endpoint.s3_settings.compression_type #=> String, one of ["none", "gzip"]
    #   resp.data.endpoint.s3_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.s3_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.s3_settings.data_format #=> String, one of ["csv", "parquet"]
    #   resp.data.endpoint.s3_settings.encoding_type #=> String, one of ["plain", "plain-dictionary", "rle-dictionary"]
    #   resp.data.endpoint.s3_settings.dict_page_size_limit #=> Integer
    #   resp.data.endpoint.s3_settings.row_group_length #=> Integer
    #   resp.data.endpoint.s3_settings.data_page_size #=> Integer
    #   resp.data.endpoint.s3_settings.parquet_version #=> String, one of ["parquet-1-0", "parquet-2-0"]
    #   resp.data.endpoint.s3_settings.enable_statistics #=> Boolean
    #   resp.data.endpoint.s3_settings.include_op_for_full_load #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_only #=> Boolean
    #   resp.data.endpoint.s3_settings.timestamp_column_name #=> String
    #   resp.data.endpoint.s3_settings.parquet_timestamp_in_millisecond #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_inserts_and_updates #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_enabled #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_sequence #=> String, one of ["YYYYMMDD", "YYYYMMDDHH", "YYYYMM", "MMYYYYDD", "DDMMYYYY"]
    #   resp.data.endpoint.s3_settings.date_partition_delimiter #=> String, one of ["SLASH", "UNDERSCORE", "DASH", "NONE"]
    #   resp.data.endpoint.s3_settings.use_csv_no_sup_value #=> Boolean
    #   resp.data.endpoint.s3_settings.csv_no_sup_value #=> String
    #   resp.data.endpoint.s3_settings.preserve_transactions #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_path #=> String
    #   resp.data.endpoint.s3_settings.use_task_start_time_for_full_load_timestamp #=> Boolean
    #   resp.data.endpoint.s3_settings.canned_acl_for_objects #=> String, one of ["none", "private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.endpoint.s3_settings.add_column_name #=> Boolean
    #   resp.data.endpoint.s3_settings.cdc_max_batch_interval #=> Integer
    #   resp.data.endpoint.s3_settings.cdc_min_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.csv_null_value #=> String
    #   resp.data.endpoint.s3_settings.ignore_header_rows #=> Integer
    #   resp.data.endpoint.s3_settings.max_file_size #=> Integer
    #   resp.data.endpoint.s3_settings.rfc4180 #=> Boolean
    #   resp.data.endpoint.s3_settings.date_partition_timezone #=> String
    #   resp.data.endpoint.dms_transfer_settings #=> Types::DmsTransferSettings
    #   resp.data.endpoint.dms_transfer_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.dms_transfer_settings.bucket_name #=> String
    #   resp.data.endpoint.mongo_db_settings #=> Types::MongoDbSettings
    #   resp.data.endpoint.mongo_db_settings.username #=> String
    #   resp.data.endpoint.mongo_db_settings.password #=> String
    #   resp.data.endpoint.mongo_db_settings.server_name #=> String
    #   resp.data.endpoint.mongo_db_settings.port #=> Integer
    #   resp.data.endpoint.mongo_db_settings.database_name #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_type #=> String, one of ["no", "password"]
    #   resp.data.endpoint.mongo_db_settings.auth_mechanism #=> String, one of ["default", "mongodb_cr", "scram_sha_1"]
    #   resp.data.endpoint.mongo_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.mongo_db_settings.extract_doc_id #=> String
    #   resp.data.endpoint.mongo_db_settings.docs_to_investigate #=> String
    #   resp.data.endpoint.mongo_db_settings.auth_source #=> String
    #   resp.data.endpoint.mongo_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.mongo_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.kinesis_settings #=> Types::KinesisSettings
    #   resp.data.endpoint.kinesis_settings.stream_arn #=> String
    #   resp.data.endpoint.kinesis_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kinesis_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.kinesis_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kinesis_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kinesis_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kinesis_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.kafka_settings #=> Types::KafkaSettings
    #   resp.data.endpoint.kafka_settings.broker #=> String
    #   resp.data.endpoint.kafka_settings.topic #=> String
    #   resp.data.endpoint.kafka_settings.message_format #=> String, one of ["json", "json-unformatted"]
    #   resp.data.endpoint.kafka_settings.include_transaction_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_partition_value #=> Boolean
    #   resp.data.endpoint.kafka_settings.partition_include_schema_table #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_table_alter_operations #=> Boolean
    #   resp.data.endpoint.kafka_settings.include_control_details #=> Boolean
    #   resp.data.endpoint.kafka_settings.message_max_bytes #=> Integer
    #   resp.data.endpoint.kafka_settings.include_null_and_empty #=> Boolean
    #   resp.data.endpoint.kafka_settings.security_protocol #=> String, one of ["plaintext", "ssl-authentication", "ssl-encryption", "sasl-ssl"]
    #   resp.data.endpoint.kafka_settings.ssl_client_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_arn #=> String
    #   resp.data.endpoint.kafka_settings.ssl_client_key_password #=> String
    #   resp.data.endpoint.kafka_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.kafka_settings.sasl_username #=> String
    #   resp.data.endpoint.kafka_settings.sasl_password #=> String
    #   resp.data.endpoint.kafka_settings.no_hex_prefix #=> Boolean
    #   resp.data.endpoint.elasticsearch_settings #=> Types::ElasticsearchSettings
    #   resp.data.endpoint.elasticsearch_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.elasticsearch_settings.endpoint_uri #=> String
    #   resp.data.endpoint.elasticsearch_settings.full_load_error_percentage #=> Integer
    #   resp.data.endpoint.elasticsearch_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings #=> Types::NeptuneSettings
    #   resp.data.endpoint.neptune_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_name #=> String
    #   resp.data.endpoint.neptune_settings.s3_bucket_folder #=> String
    #   resp.data.endpoint.neptune_settings.error_retry_duration #=> Integer
    #   resp.data.endpoint.neptune_settings.max_file_size #=> Integer
    #   resp.data.endpoint.neptune_settings.max_retry_count #=> Integer
    #   resp.data.endpoint.neptune_settings.iam_auth_enabled #=> Boolean
    #   resp.data.endpoint.redshift_settings #=> Types::RedshiftSettings
    #   resp.data.endpoint.redshift_settings.accept_any_date #=> Boolean
    #   resp.data.endpoint.redshift_settings.after_connect_script #=> String
    #   resp.data.endpoint.redshift_settings.bucket_folder #=> String
    #   resp.data.endpoint.redshift_settings.bucket_name #=> String
    #   resp.data.endpoint.redshift_settings.case_sensitive_names #=> Boolean
    #   resp.data.endpoint.redshift_settings.comp_update #=> Boolean
    #   resp.data.endpoint.redshift_settings.connection_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.database_name #=> String
    #   resp.data.endpoint.redshift_settings.date_format #=> String
    #   resp.data.endpoint.redshift_settings.empty_as_null #=> Boolean
    #   resp.data.endpoint.redshift_settings.encryption_mode #=> String, one of ["sse-s3", "sse-kms"]
    #   resp.data.endpoint.redshift_settings.explicit_ids #=> Boolean
    #   resp.data.endpoint.redshift_settings.file_transfer_upload_streams #=> Integer
    #   resp.data.endpoint.redshift_settings.load_timeout #=> Integer
    #   resp.data.endpoint.redshift_settings.max_file_size #=> Integer
    #   resp.data.endpoint.redshift_settings.password #=> String
    #   resp.data.endpoint.redshift_settings.port #=> Integer
    #   resp.data.endpoint.redshift_settings.remove_quotes #=> Boolean
    #   resp.data.endpoint.redshift_settings.replace_invalid_chars #=> String
    #   resp.data.endpoint.redshift_settings.replace_chars #=> String
    #   resp.data.endpoint.redshift_settings.server_name #=> String
    #   resp.data.endpoint.redshift_settings.service_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.server_side_encryption_kms_key_id #=> String
    #   resp.data.endpoint.redshift_settings.time_format #=> String
    #   resp.data.endpoint.redshift_settings.trim_blanks #=> Boolean
    #   resp.data.endpoint.redshift_settings.truncate_columns #=> Boolean
    #   resp.data.endpoint.redshift_settings.username #=> String
    #   resp.data.endpoint.redshift_settings.write_buffer_size #=> Integer
    #   resp.data.endpoint.redshift_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.redshift_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.postgre_sql_settings #=> Types::PostgreSQLSettings
    #   resp.data.endpoint.postgre_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.postgre_sql_settings.capture_ddls #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.database_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.ddl_artifacts_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.execute_timeout #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_enable #=> Boolean
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_schema #=> String
    #   resp.data.endpoint.postgre_sql_settings.heartbeat_frequency #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.password #=> String
    #   resp.data.endpoint.postgre_sql_settings.port #=> Integer
    #   resp.data.endpoint.postgre_sql_settings.server_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.username #=> String
    #   resp.data.endpoint.postgre_sql_settings.slot_name #=> String
    #   resp.data.endpoint.postgre_sql_settings.plugin_name #=> String, one of ["no-preference", "test-decoding", "pglogical"]
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.postgre_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.my_sql_settings #=> Types::MySQLSettings
    #   resp.data.endpoint.my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.my_sql_settings.database_name #=> String
    #   resp.data.endpoint.my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.my_sql_settings.password #=> String
    #   resp.data.endpoint.my_sql_settings.port #=> Integer
    #   resp.data.endpoint.my_sql_settings.server_name #=> String
    #   resp.data.endpoint.my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.my_sql_settings.username #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.my_sql_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings #=> Types::OracleSettings
    #   resp.data.endpoint.oracle_settings.add_supplemental_logging #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.additional_archived_log_dest_id #=> Integer
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids #=> Array<Integer>
    #   resp.data.endpoint.oracle_settings.extra_archived_log_dest_ids[0] #=> Integer
    #   resp.data.endpoint.oracle_settings.allow_select_nested_tables #=> Boolean
    #   resp.data.endpoint.oracle_settings.parallel_asm_read_threads #=> Integer
    #   resp.data.endpoint.oracle_settings.read_ahead_blocks #=> Integer
    #   resp.data.endpoint.oracle_settings.access_alternate_directly #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_alternate_folder_for_online #=> Boolean
    #   resp.data.endpoint.oracle_settings.oracle_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.use_path_prefix #=> String
    #   resp.data.endpoint.oracle_settings.replace_path_prefix #=> Boolean
    #   resp.data.endpoint.oracle_settings.enable_homogenous_tablespace #=> Boolean
    #   resp.data.endpoint.oracle_settings.direct_path_no_log #=> Boolean
    #   resp.data.endpoint.oracle_settings.archived_logs_only #=> Boolean
    #   resp.data.endpoint.oracle_settings.asm_password #=> String
    #   resp.data.endpoint.oracle_settings.asm_server #=> String
    #   resp.data.endpoint.oracle_settings.asm_user #=> String
    #   resp.data.endpoint.oracle_settings.char_length_semantics #=> String, one of ["default", "char", "byte"]
    #   resp.data.endpoint.oracle_settings.database_name #=> String
    #   resp.data.endpoint.oracle_settings.direct_path_parallel_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.fail_tasks_on_lob_truncation #=> Boolean
    #   resp.data.endpoint.oracle_settings.number_datatype_scale #=> Integer
    #   resp.data.endpoint.oracle_settings.password #=> String
    #   resp.data.endpoint.oracle_settings.port #=> Integer
    #   resp.data.endpoint.oracle_settings.read_table_space_name #=> Boolean
    #   resp.data.endpoint.oracle_settings.retry_interval #=> Integer
    #   resp.data.endpoint.oracle_settings.security_db_encryption #=> String
    #   resp.data.endpoint.oracle_settings.security_db_encryption_name #=> String
    #   resp.data.endpoint.oracle_settings.server_name #=> String
    #   resp.data.endpoint.oracle_settings.spatial_data_option_to_geo_json_function_name #=> String
    #   resp.data.endpoint.oracle_settings.standby_delay_time #=> Integer
    #   resp.data.endpoint.oracle_settings.username #=> String
    #   resp.data.endpoint.oracle_settings.use_b_file #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_direct_path_full_load #=> Boolean
    #   resp.data.endpoint.oracle_settings.use_logminer_reader #=> Boolean
    #   resp.data.endpoint.oracle_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_access_role_arn #=> String
    #   resp.data.endpoint.oracle_settings.secrets_manager_oracle_asm_secret_id #=> String
    #   resp.data.endpoint.sybase_settings #=> Types::SybaseSettings
    #   resp.data.endpoint.sybase_settings.database_name #=> String
    #   resp.data.endpoint.sybase_settings.password #=> String
    #   resp.data.endpoint.sybase_settings.port #=> Integer
    #   resp.data.endpoint.sybase_settings.server_name #=> String
    #   resp.data.endpoint.sybase_settings.username #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.sybase_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings #=> Types::MicrosoftSQLServerSettings
    #   resp.data.endpoint.microsoft_sql_server_settings.port #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.bcp_packet_size #=> Integer
    #   resp.data.endpoint.microsoft_sql_server_settings.database_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.control_tables_file_group #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.password #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.query_single_always_on_node #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.read_backup_only #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.safeguard_policy #=> String, one of ["rely-on-sql-server-replication-agent", "exclusive-automatic-truncation", "shared-automatic-truncation"]
    #   resp.data.endpoint.microsoft_sql_server_settings.server_name #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.username #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.use_bcp_full_load #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.use_third_party_backup_device #=> Boolean
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.microsoft_sql_server_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.ibm_db2_settings #=> Types::IBMDb2Settings
    #   resp.data.endpoint.ibm_db2_settings.database_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.password #=> String
    #   resp.data.endpoint.ibm_db2_settings.port #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.server_name #=> String
    #   resp.data.endpoint.ibm_db2_settings.set_data_capture_changes #=> Boolean
    #   resp.data.endpoint.ibm_db2_settings.current_lsn #=> String
    #   resp.data.endpoint.ibm_db2_settings.max_k_bytes_per_read #=> Integer
    #   resp.data.endpoint.ibm_db2_settings.username #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.ibm_db2_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.doc_db_settings #=> Types::DocDbSettings
    #   resp.data.endpoint.doc_db_settings.username #=> String
    #   resp.data.endpoint.doc_db_settings.password #=> String
    #   resp.data.endpoint.doc_db_settings.server_name #=> String
    #   resp.data.endpoint.doc_db_settings.port #=> Integer
    #   resp.data.endpoint.doc_db_settings.database_name #=> String
    #   resp.data.endpoint.doc_db_settings.nesting_level #=> String, one of ["none", "one"]
    #   resp.data.endpoint.doc_db_settings.extract_doc_id #=> Boolean
    #   resp.data.endpoint.doc_db_settings.docs_to_investigate #=> Integer
    #   resp.data.endpoint.doc_db_settings.kms_key_id #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.doc_db_settings.secrets_manager_secret_id #=> String
    #   resp.data.endpoint.redis_settings #=> Types::RedisSettings
    #   resp.data.endpoint.redis_settings.server_name #=> String
    #   resp.data.endpoint.redis_settings.port #=> Integer
    #   resp.data.endpoint.redis_settings.ssl_security_protocol #=> String, one of ["plaintext", "ssl-encryption"]
    #   resp.data.endpoint.redis_settings.auth_type #=> String, one of ["none", "auth-role", "auth-token"]
    #   resp.data.endpoint.redis_settings.auth_user_name #=> String
    #   resp.data.endpoint.redis_settings.auth_password #=> String
    #   resp.data.endpoint.redis_settings.ssl_ca_certificate_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings #=> Types::GcpMySQLSettings
    #   resp.data.endpoint.gcp_my_sql_settings.after_connect_script #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.clean_source_metadata_on_mismatch #=> Boolean
    #   resp.data.endpoint.gcp_my_sql_settings.database_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.events_poll_interval #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.target_db_type #=> String, one of ["specific-database", "multiple-databases"]
    #   resp.data.endpoint.gcp_my_sql_settings.max_file_size #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.parallel_load_threads #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.password #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.port #=> Integer
    #   resp.data.endpoint.gcp_my_sql_settings.server_name #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.server_timezone #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.username #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_access_role_arn #=> String
    #   resp.data.endpoint.gcp_my_sql_settings.secrets_manager_secret_id #=> String
    #
    def modify_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::ResourceAlreadyExistsFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault]),
        data_parser: Parsers::ModifyEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyEndpoint,
        stubs: @stubs,
        params_class: Params::ModifyEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing DMS event notification subscription. </p>
    #
    # @param [Hash] params
    #   See {Types::ModifyEventSubscriptionInput}.
    #
    # @option params [String] :subscription_name
    #   <p>The name of the DMS event notification subscription to be modified.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    # @option params [String] :source_type
    #   <p> The type of DMS resource that generates the events you want to subscribe to. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #
    # @option params [Array<String>] :event_categories
    #   <p> A list of event categories for a source type that you want to subscribe to. Use the
    #               <code>DescribeEventCategories</code> action to see a list of event categories. </p>
    #
    # @option params [Boolean] :enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #            subscription. </p>
    #
    # @return [Types::ModifyEventSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription(
    #     subscription_name: 'SubscriptionName', # required
    #     sns_topic_arn: 'SnsTopicArn',
    #     source_type: 'SourceType',
    #     event_categories: [
    #       'member'
    #     ],
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyEventSubscriptionOutput
    #   resp.data.event_subscription #=> Types::EventSubscription
    #   resp.data.event_subscription.customer_aws_id #=> String
    #   resp.data.event_subscription.cust_subscription_id #=> String
    #   resp.data.event_subscription.sns_topic_arn #=> String
    #   resp.data.event_subscription.status #=> String
    #   resp.data.event_subscription.subscription_creation_time #=> String
    #   resp.data.event_subscription.source_type #=> String
    #   resp.data.event_subscription.source_ids_list #=> Array<String>
    #   resp.data.event_subscription.source_ids_list[0] #=> String
    #   resp.data.event_subscription.event_categories_list #=> Array<String>
    #   resp.data.event_subscription.event_categories_list[0] #=> String
    #   resp.data.event_subscription.enabled #=> Boolean
    #
    def modify_event_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyEventSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyEventSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyEventSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SNSInvalidTopicFault, Errors::ResourceNotFoundFault, Errors::KMSAccessDeniedFault, Errors::KMSDisabledFault, Errors::KMSInvalidStateFault, Errors::KMSNotFoundFault, Errors::SNSNoAuthorizationFault, Errors::KMSThrottlingFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::ModifyEventSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyEventSubscription,
        stubs: @stubs,
        params_class: Params::ModifyEventSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_event_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the replication instance to apply new settings. You can change one or more
    #          parameters by specifying these parameters and the new values in the request.</p>
    #          <p>Some settings are applied during the maintenance window.</p>
    #
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::ModifyReplicationInstanceInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage (in gigabytes) to be allocated for the replication
    #            instance.</p>
    #
    # @option params [Boolean] :apply_immediately
    #   <p>Indicates whether the changes should be applied immediately or during the next
    #            maintenance window.</p>
    #
    # @option params [String] :replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication instance classes, see
    #            <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth">
    #               Selecting the right DMS replication instance for your migration</a>.
    #         </p>
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #            result in an outage. Changing this parameter does not result in an outage, except in the
    #            following situation, and the change is asynchronously applied as soon as possible. If
    #            moving this window to the current time, there must be at least 30 minutes between the
    #            current time and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    #
    # @option params [Boolean] :multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the
    #               <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #
    # @option params [String] :engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #            <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter does not
    #            result in an outage, and the change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter must be set to <code>true</code> when specifying a value for the
    #               <code>EngineVersion</code> parameter that is a different major version than the
    #            replication instance's current version.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>A value that indicates that minor version upgrades are applied automatically to the
    #            replication instance during the maintenance window. Changing this parameter doesn't result
    #            in an outage, except in the case described following. The change is asynchronously applied
    #            as soon as possible. </p>
    #            <p>An outage does result if these factors apply: </p>
    #            <ul>
    #               <li>
    #                  <p>This parameter is set to <code>true</code> during the maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>A newer minor version is available. </p>
    #               </li>
    #               <li>
    #                  <p>DMS has enabled automatic patching for the given engine version. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #
    # @return [Types::ModifyReplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_instance(
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     allocated_storage: 1,
    #     apply_immediately: false,
    #     replication_instance_class: 'ReplicationInstanceClass',
    #     vpc_security_group_ids: [
    #       'member'
    #     ],
    #     preferred_maintenance_window: 'PreferredMaintenanceWindow',
    #     multi_az: false,
    #     engine_version: 'EngineVersion',
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     replication_instance_identifier: 'ReplicationInstanceIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReplicationInstanceOutput
    #   resp.data.replication_instance #=> Types::ReplicationInstance
    #   resp.data.replication_instance.replication_instance_identifier #=> String
    #   resp.data.replication_instance.replication_instance_class #=> String
    #   resp.data.replication_instance.replication_instance_status #=> String
    #   resp.data.replication_instance.allocated_storage #=> Integer
    #   resp.data.replication_instance.instance_create_time #=> Time
    #   resp.data.replication_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.replication_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.data.replication_instance.availability_zone #=> String
    #   resp.data.replication_instance.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_instance.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.replication_instance.preferred_maintenance_window #=> String
    #   resp.data.replication_instance.pending_modified_values #=> Types::ReplicationPendingModifiedValues
    #   resp.data.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.data.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.data.replication_instance.multi_az #=> Boolean
    #   resp.data.replication_instance.engine_version #=> String
    #   resp.data.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.replication_instance.kms_key_id #=> String
    #   resp.data.replication_instance.replication_instance_arn #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.data.replication_instance.publicly_accessible #=> Boolean
    #   resp.data.replication_instance.secondary_availability_zone #=> String
    #   resp.data.replication_instance.free_until #=> Time
    #   resp.data.replication_instance.dns_name_servers #=> String
    #
    def modify_replication_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReplicationInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReplicationInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::InsufficientResourceCapacityFault, Errors::ResourceAlreadyExistsFault, Errors::AccessDeniedFault, Errors::StorageQuotaExceededFault, Errors::UpgradeDependencyFailureFault]),
        data_parser: Parsers::ModifyReplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReplicationInstance,
        stubs: @stubs,
        params_class: Params::ModifyReplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_replication_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings for the specified replication subnet group.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyReplicationSubnetGroupInput}.
    #
    # @option params [String] :replication_subnet_group_identifier
    #   <p>The name of the replication instance subnet group.</p>
    #
    # @option params [String] :replication_subnet_group_description
    #   <p>A description for the replication instance subnet group.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs.</p>
    #
    # @return [Types::ModifyReplicationSubnetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_subnet_group(
    #     replication_subnet_group_identifier: 'ReplicationSubnetGroupIdentifier', # required
    #     replication_subnet_group_description: 'ReplicationSubnetGroupDescription',
    #     subnet_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReplicationSubnetGroupOutput
    #   resp.data.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_subnet_group.subnets[0].subnet_status #=> String
    #
    def modify_replication_subnet_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReplicationSubnetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReplicationSubnetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReplicationSubnetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReplicationSubnetGroupDoesNotCoverEnoughAZs, Errors::ResourceNotFoundFault, Errors::SubnetAlreadyInUse, Errors::AccessDeniedFault, Errors::InvalidSubnet, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::ModifyReplicationSubnetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReplicationSubnetGroup,
        stubs: @stubs,
        params_class: Params::ModifyReplicationSubnetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_replication_subnet_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified replication task.</p>
    #          <p>You can't modify the task endpoints. The task must be stopped before you can modify it. </p>
    #          <p>For more information about DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks</a> in the
    #             <i>Database Migration Service User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyReplicationTaskInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #
    # @option params [String] :replication_task_identifier
    #   <p>The replication task identifier.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code>
    #            </p>
    #
    # @option params [String] :table_mappings
    #   <p>When using the CLI or boto3, provide the path of the JSON file that contains the
    #            table mappings. Precede the path with <code>file://</code>.  For example,
    #            <code>--table-mappings file://mappingfile.json</code>. When working with the DMS  API,
    #            provide the JSON as the parameter value.
    #       </p>
    #
    # @option params [String] :replication_task_settings
    #   <p>JSON file that contains settings for the task, such as task metadata settings.</p>
    #
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    # @option params [String] :task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source and target endpoints.
    #               For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for Task Settings</a> in the
    #            <i>Database Migration Service User Guide.</i>
    #            </p>
    #
    # @return [Types::ModifyReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_task(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     replication_task_identifier: 'ReplicationTaskIdentifier',
    #     migration_type: 'full-load', # accepts ["full-load", "cdc", "full-load-and-cdc"]
    #     table_mappings: 'TableMappings',
    #     replication_task_settings: 'ReplicationTaskSettings',
    #     cdc_start_time: Time.now,
    #     cdc_start_position: 'CdcStartPosition',
    #     cdc_stop_position: 'CdcStopPosition',
    #     task_data: 'TaskData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def modify_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::ResourceAlreadyExistsFault, Errors::KMSKeyNotAccessibleFault]),
        data_parser: Parsers::ModifyReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReplicationTask,
        stubs: @stubs,
        params_class: Params::ModifyReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves a replication task from its current replication instance to a different target
    #          replication instance using the specified parameters. The target replication instance must
    #          be created with the same or later DMS version as the current replication
    #          instance.</p>
    #
    # @param [Hash] params
    #   See {Types::MoveReplicationTaskInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you want to move.</p>
    #
    # @option params [String] :target_replication_instance_arn
    #   <p>The ARN of the replication instance where you want to move the task to.</p>
    #
    # @return [Types::MoveReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.move_replication_task(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     target_replication_instance_arn: 'TargetReplicationInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MoveReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def move_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MoveReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MoveReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MoveReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::MoveReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MoveReplicationTask,
        stubs: @stubs,
        params_class: Params::MoveReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :move_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reboots a replication instance. Rebooting results in a momentary outage, until the
    #          replication instance becomes available again.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootReplicationInstanceInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @option params [Boolean] :force_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ
    #            failover. If the instance isn't configured for Multi-AZ, then you can't specify
    #            <code>true</code>.  ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #
    # @option params [Boolean] :force_planned_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a planned Multi-AZ failover
    #            where resources are released and cleaned up prior to conducting the failover.
    #            If the instance isn''t configured for Multi-AZ, then you can't specify <code>true</code>.
    #            ( <code>--force-planned-failover</code> and <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #
    # @return [Types::RebootReplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_replication_instance(
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     force_failover: false,
    #     force_planned_failover: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootReplicationInstanceOutput
    #   resp.data.replication_instance #=> Types::ReplicationInstance
    #   resp.data.replication_instance.replication_instance_identifier #=> String
    #   resp.data.replication_instance.replication_instance_class #=> String
    #   resp.data.replication_instance.replication_instance_status #=> String
    #   resp.data.replication_instance.allocated_storage #=> Integer
    #   resp.data.replication_instance.instance_create_time #=> Time
    #   resp.data.replication_instance.vpc_security_groups #=> Array<VpcSecurityGroupMembership>
    #   resp.data.replication_instance.vpc_security_groups[0] #=> Types::VpcSecurityGroupMembership
    #   resp.data.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.data.replication_instance.vpc_security_groups[0].status #=> String
    #   resp.data.replication_instance.availability_zone #=> String
    #   resp.data.replication_instance.replication_subnet_group #=> Types::ReplicationSubnetGroup
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
    #   resp.data.replication_instance.replication_subnet_group.vpc_id #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnet_group_status #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets #=> Array<Subnet>
    #   resp.data.replication_instance.replication_subnet_group.subnets[0] #=> Types::Subnet
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone #=> Types::AvailabilityZone
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.data.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
    #   resp.data.replication_instance.preferred_maintenance_window #=> String
    #   resp.data.replication_instance.pending_modified_values #=> Types::ReplicationPendingModifiedValues
    #   resp.data.replication_instance.pending_modified_values.replication_instance_class #=> String
    #   resp.data.replication_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.data.replication_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.data.replication_instance.pending_modified_values.engine_version #=> String
    #   resp.data.replication_instance.multi_az #=> Boolean
    #   resp.data.replication_instance.engine_version #=> String
    #   resp.data.replication_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.data.replication_instance.kms_key_id #=> String
    #   resp.data.replication_instance.replication_instance_arn #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_address #=> String
    #   resp.data.replication_instance.replication_instance_public_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_public_ip_addresses[0] #=> String
    #   resp.data.replication_instance.replication_instance_private_ip_addresses #=> Array<String>
    #   resp.data.replication_instance.replication_instance_private_ip_addresses[0] #=> String
    #   resp.data.replication_instance.publicly_accessible #=> Boolean
    #   resp.data.replication_instance.secondary_availability_zone #=> String
    #   resp.data.replication_instance.free_until #=> Time
    #   resp.data.replication_instance.dns_name_servers #=> String
    #
    def reboot_replication_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootReplicationInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootReplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootReplicationInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::RebootReplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootReplicationInstance,
        stubs: @stubs,
        params_class: Params::RebootReplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_replication_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Populates the schema for the specified endpoint. This is an asynchronous operation and
    #          can take several minutes. You can check the status of this operation by calling the
    #          DescribeRefreshSchemasStatus operation.</p>
    #
    # @param [Hash] params
    #   See {Types::RefreshSchemasInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @return [Types::RefreshSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_schemas(
    #     endpoint_arn: 'EndpointArn', # required
    #     replication_instance_arn: 'ReplicationInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RefreshSchemasOutput
    #   resp.data.refresh_schemas_status #=> Types::RefreshSchemasStatus
    #   resp.data.refresh_schemas_status.endpoint_arn #=> String
    #   resp.data.refresh_schemas_status.replication_instance_arn #=> String
    #   resp.data.refresh_schemas_status.status #=> String, one of ["successful", "failed", "refreshing"]
    #   resp.data.refresh_schemas_status.last_refresh_date #=> Time
    #   resp.data.refresh_schemas_status.last_failure_message #=> String
    #
    def refresh_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RefreshSchemasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RefreshSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RefreshSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::RefreshSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RefreshSchemas,
        stubs: @stubs,
        params_class: Params::RefreshSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :refresh_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reloads the target database table with the source data. </p>
    #          <p>You can only use this operation with a task in the <code>RUNNING</code> state, otherwise the service
    #            will throw an <code>InvalidResourceStateFault</code> exception.</p>
    #
    # @param [Hash] params
    #   See {Types::ReloadTablesInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #
    # @option params [Array<TableToReload>] :tables_to_reload
    #   <p>The name and schema of the table to be reloaded. </p>
    #
    # @option params [String] :reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the task. </p>
    #            <p>Valid values: data-reload, validate-only</p>
    #            <p>Default value is data-reload.</p>
    #
    # @return [Types::ReloadTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reload_tables(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     tables_to_reload: [
    #       {
    #         schema_name: 'SchemaName', # required
    #         table_name: 'TableName' # required
    #       }
    #     ], # required
    #     reload_option: 'data-reload' # accepts ["data-reload", "validate-only"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReloadTablesOutput
    #   resp.data.replication_task_arn #=> String
    #
    def reload_tables(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReloadTablesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReloadTablesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReloadTables
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::ReloadTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReloadTables,
        stubs: @stubs,
        params_class: Params::ReloadTablesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reload_tables
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes metadata tags from an DMS resource, including replication instance,
    #          endpoint, security group, and migration task. For more information, see
    #          <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html">
    #                <code>Tag</code>
    #             </a>
    #          data type description.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An DMS resource from which you want to remove tag(s). The value for this parameter is an Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundFault]),
        data_parser: Parsers::RemoveTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs large-scale assessment (LSA) analysis on every Fleet Advisor collector in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::RunFleetAdvisorLsaAnalysisInput}.
    #
    # @return [Types::RunFleetAdvisorLsaAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_fleet_advisor_lsa_analysis()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RunFleetAdvisorLsaAnalysisOutput
    #   resp.data.lsa_analysis_id #=> String
    #   resp.data.status #=> String
    #
    def run_fleet_advisor_lsa_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RunFleetAdvisorLsaAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RunFleetAdvisorLsaAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RunFleetAdvisorLsaAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::RunFleetAdvisorLsaAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RunFleetAdvisorLsaAnalysis,
        stubs: @stubs,
        params_class: Params::RunFleetAdvisorLsaAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :run_fleet_advisor_lsa_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the replication task.</p>
    #          <p>For more information about DMS tasks, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html">Working with Migration Tasks </a> in the
    #             <i>Database Migration Service User Guide.</i>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartReplicationTaskInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be started.</p>
    #
    # @option params [String] :start_replication_task_type
    #   <p>The type of replication task to start.</p>
    #            <p>When the migration type is <code>full-load</code> or <code>full-load-and-cdc</code>, the only valid value
    #              for the first run of the task is <code>start-replication</code>. You use <code>reload-target</code> to restart
    #          the task and <code>resume-processing</code> to resume the task.</p>
    #            <p>When the migration type is <code>cdc</code>, you use <code>start-replication</code> to start or restart
    #          the task, and <code>resume-processing</code> to resume the task. <code>reload-target</code> is not a valid value for
    #          a task with migration type of <code>cdc</code>.</p>
    #
    # @option params [Time] :cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #
    # @option params [String] :cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #
    # @option params [String] :cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>
    #
    # @return [Types::StartReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     start_replication_task_type: 'start-replication', # required - accepts ["start-replication", "resume-processing", "reload-target"]
    #     cdc_start_time: Time.now,
    #     cdc_start_position: 'CdcStartPosition',
    #     cdc_stop_position: 'CdcStopPosition'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def start_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault]),
        data_parser: Parsers::StartReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReplicationTask,
        stubs: @stubs,
        params_class: Params::StartReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts the replication task assessment for unsupported data types in the source
    #          database. </p>
    #          <p>You can only use this operation for a task if the following conditions are true:</p>
    #          <ul>
    #             <li>
    #                <p>The task must be in the <code>stopped</code> state.</p>
    #             </li>
    #             <li>
    #                <p>The task must have successful connections to the source and target.</p>
    #             </li>
    #          </ul>
    #          <p>If either of these conditions are not met, an <code>InvalidResourceStateFault</code> error will result. </p>
    #          <p>For information about DMS task assessments, see
    #           <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Creating a task assessment report</a>
    #           in the <i>Database Migration Service User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReplicationTaskAssessmentInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p> The Amazon Resource Name (ARN) of the replication task. </p>
    #
    # @return [Types::StartReplicationTaskAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task_assessment(
    #     replication_task_arn: 'ReplicationTaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReplicationTaskAssessmentOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def start_replication_task_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReplicationTaskAssessmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReplicationTaskAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReplicationTaskAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::StartReplicationTaskAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReplicationTaskAssessment,
        stubs: @stubs,
        params_class: Params::StartReplicationTaskAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_replication_task_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new premigration assessment run for one or more individual assessments
    #          of a migration task.</p>
    #          <p>The assessments that you can specify depend on the source and target database engine and
    #          the migration type defined for the given task. To run this operation, your migration task
    #          must already be created. After you run this operation, you can review the status of each
    #          individual assessment. You can also run the migration task manually after the assessment
    #          run and its individual assessments complete.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReplicationTaskAssessmentRunInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>Amazon Resource Name (ARN) of the migration task associated with the premigration
    #            assessment run that you want to start.</p>
    #
    # @option params [String] :service_access_role_arn
    #   <p>ARN of the service role needed to start the assessment run. The role must allow the <code>iam:PassRole</code> action.</p>
    #
    # @option params [String] :result_location_bucket
    #   <p>Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    #
    # @option params [String] :result_location_folder
    #   <p>Folder within an Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    #
    # @option params [String] :result_encryption_mode
    #   <p>Encryption mode that you can specify to encrypt the results of this assessment run. If
    #            you don't specify this request parameter, DMS stores the assessment run results
    #            without encryption. You can specify one of the options following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"SSE_S3"</code> – The server-side encryption provided as a default by
    #                  Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"SSE_KMS"</code> – Key Management Service (KMS) encryption.
    #                  This encryption can use either a custom KMS encryption key that you specify or the
    #                  default KMS encryption key that DMS provides.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :result_kms_key_arn
    #   <p>ARN of a custom KMS encryption key that you specify when you set
    #               <code>ResultEncryptionMode</code> to <code>"SSE_KMS</code>".</p>
    #
    # @option params [String] :assessment_run_name
    #   <p>Unique name to identify the assessment run.</p>
    #
    # @option params [Array<String>] :include_only
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            include. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for
    #               <code>Exclude</code> in the API operation. </p>
    #               <p>To identify the names of the default individual assessments that DMS
    #               supports for the associated migration task, run the
    #               <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #               <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #
    # @option params [Array<String>] :exclude
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            exclude. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>Exclude</code> if you also set a value for
    #               <code>IncludeOnly</code> in the API operation.</p>
    #               <p>To identify the names of the default individual assessments that DMS
    #               supports for the associated migration task, run the
    #               <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #               <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #
    # @return [Types::StartReplicationTaskAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication_task_assessment_run(
    #     replication_task_arn: 'ReplicationTaskArn', # required
    #     service_access_role_arn: 'ServiceAccessRoleArn', # required
    #     result_location_bucket: 'ResultLocationBucket', # required
    #     result_location_folder: 'ResultLocationFolder',
    #     result_encryption_mode: 'ResultEncryptionMode',
    #     result_kms_key_arn: 'ResultKmsKeyArn',
    #     assessment_run_name: 'AssessmentRunName', # required
    #     include_only: [
    #       'member'
    #     ],
    #     exclude: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReplicationTaskAssessmentRunOutput
    #   resp.data.replication_task_assessment_run #=> Types::ReplicationTaskAssessmentRun
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_arn #=> String
    #   resp.data.replication_task_assessment_run.replication_task_arn #=> String
    #   resp.data.replication_task_assessment_run.status #=> String
    #   resp.data.replication_task_assessment_run.replication_task_assessment_run_creation_date #=> Time
    #   resp.data.replication_task_assessment_run.assessment_progress #=> Types::ReplicationTaskAssessmentRunProgress
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_count #=> Integer
    #   resp.data.replication_task_assessment_run.assessment_progress.individual_assessment_completed_count #=> Integer
    #   resp.data.replication_task_assessment_run.last_failure_message #=> String
    #   resp.data.replication_task_assessment_run.service_access_role_arn #=> String
    #   resp.data.replication_task_assessment_run.result_location_bucket #=> String
    #   resp.data.replication_task_assessment_run.result_location_folder #=> String
    #   resp.data.replication_task_assessment_run.result_encryption_mode #=> String
    #   resp.data.replication_task_assessment_run.result_kms_key_arn #=> String
    #   resp.data.replication_task_assessment_run.assessment_run_name #=> String
    #
    def start_replication_task_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReplicationTaskAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReplicationTaskAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReplicationTaskAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::KMSAccessDeniedFault, Errors::KMSNotFoundFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceAlreadyExistsFault, Errors::KMSDisabledFault, Errors::KMSInvalidStateFault, Errors::S3AccessDeniedFault, Errors::S3ResourceNotFoundFault, Errors::AccessDeniedFault, Errors::KMSFault]),
        data_parser: Parsers::StartReplicationTaskAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReplicationTaskAssessmentRun,
        stubs: @stubs,
        params_class: Params::StartReplicationTaskAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_replication_task_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the replication task.</p>
    #
    # @param [Hash] params
    #   See {Types::StopReplicationTaskInput}.
    #
    # @option params [String] :replication_task_arn
    #   <p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>
    #
    # @return [Types::StopReplicationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication_task(
    #     replication_task_arn: 'ReplicationTaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopReplicationTaskOutput
    #   resp.data.replication_task #=> Types::ReplicationTask
    #   resp.data.replication_task.replication_task_identifier #=> String
    #   resp.data.replication_task.source_endpoint_arn #=> String
    #   resp.data.replication_task.target_endpoint_arn #=> String
    #   resp.data.replication_task.replication_instance_arn #=> String
    #   resp.data.replication_task.migration_type #=> String, one of ["full-load", "cdc", "full-load-and-cdc"]
    #   resp.data.replication_task.table_mappings #=> String
    #   resp.data.replication_task.replication_task_settings #=> String
    #   resp.data.replication_task.status #=> String
    #   resp.data.replication_task.last_failure_message #=> String
    #   resp.data.replication_task.stop_reason #=> String
    #   resp.data.replication_task.replication_task_creation_date #=> Time
    #   resp.data.replication_task.replication_task_start_date #=> Time
    #   resp.data.replication_task.cdc_start_position #=> String
    #   resp.data.replication_task.cdc_stop_position #=> String
    #   resp.data.replication_task.recovery_checkpoint #=> String
    #   resp.data.replication_task.replication_task_arn #=> String
    #   resp.data.replication_task.replication_task_stats #=> Types::ReplicationTaskStats
    #   resp.data.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
    #   resp.data.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loaded #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_loading #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_queued #=> Integer
    #   resp.data.replication_task.replication_task_stats.tables_errored #=> Integer
    #   resp.data.replication_task.replication_task_stats.fresh_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.stop_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_start_date #=> Time
    #   resp.data.replication_task.replication_task_stats.full_load_finish_date #=> Time
    #   resp.data.replication_task.task_data #=> String
    #   resp.data.replication_task.target_replication_instance_arn #=> String
    #
    def stop_replication_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopReplicationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopReplicationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopReplicationTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault]),
        data_parser: Parsers::StopReplicationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopReplicationTask,
        stubs: @stubs,
        params_class: Params::StopReplicationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_replication_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests the connection between the replication instance and the endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::TestConnectionInput}.
    #
    # @option params [String] :replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #
    # @return [Types::TestConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_connection(
    #     replication_instance_arn: 'ReplicationInstanceArn', # required
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.replication_instance_arn #=> String
    #   resp.data.connection.endpoint_arn #=> String
    #   resp.data.connection.status #=> String
    #   resp.data.connection.last_failure_message #=> String
    #   resp.data.connection.endpoint_identifier #=> String
    #   resp.data.connection.replication_instance_identifier #=> String
    #
    def test_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceStateFault, Errors::ResourceNotFoundFault, Errors::AccessDeniedFault, Errors::KMSKeyNotAccessibleFault, Errors::ResourceQuotaExceededFault]),
        data_parser: Parsers::TestConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestConnection,
        stubs: @stubs,
        params_class: Params::TestConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_connection
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
