# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MachineLearning
  # An API client for AmazonML_20141212
  # See {#initialize} for a full list of supported configuration options
  # Definition of the public APIs
  # 		exposed by Amazon Machine Learning
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
    def initialize(config = AWS::SDK::MachineLearning::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key
    # 		    and an optional value. If you add a tag using a key that is already associated with the ML object,
    # 			<code>AddTags</code> updates the tag's value.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the ML object to tag.</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ], # required
    #     resource_id: 'ResourceId', # required
    #     resource_type: 'BatchPrediction' # required - accepts ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsOutput
    #   resp.data.resource_id #=> String
    #   resp.data.resource_type #=> String, one of ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #
    def add_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::InvalidTagException, Errors::ResourceNotFoundException, Errors::TagLimitExceededException]),
        data_parser: Parsers::AddTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTags,
        stubs: @stubs,
        params_class: Params::AddTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced
    #             by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data
    #             files referenced by the <code>DataSource</code> as information sources.
    #         </p>
    #
    #         <p>
    #             <code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>,
    #         Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>.
    #         After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>.
    #         </p>
    #         <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears,
    #             the results are available in the location specified by the <code>OutputUri</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBatchPredictionInput}.
    #
    # @option params [String] :batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the
    #                   <code>BatchPrediction</code>.</p>
    #
    # @option params [String] :batch_prediction_name
    #   <p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>
    #
    # @option params [String] :ml_model_id
    #   <p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>
    #
    # @option params [String] :batch_prediction_data_source_id
    #   <p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>
    #
    # @option params [String] :output_uri
    #   <p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>
    #           <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    #
    # @return [Types::CreateBatchPredictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_prediction(
    #     batch_prediction_id: 'BatchPredictionId', # required
    #     batch_prediction_name: 'BatchPredictionName',
    #     ml_model_id: 'MLModelId', # required
    #     batch_prediction_data_source_id: 'BatchPredictionDataSourceId', # required
    #     output_uri: 'OutputUri' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBatchPredictionOutput
    #   resp.data.batch_prediction_id #=> String
    #
    def create_batch_prediction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBatchPredictionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBatchPredictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBatchPrediction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateBatchPrediction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBatchPrediction,
        stubs: @stubs,
        params_class: Params::CreateBatchPredictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_batch_prediction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p>
    #
    #         <p>
    #             <code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>,
    #          Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>.
    #             After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>.
    #             <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can
    #           be used only to perform <code>>CreateMLModel</code>>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.
    #         </p>
    #         <p>
    #           If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceFromRDSInput}.
    #
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN)
    #               becomes the ID for a <code>DataSource</code>.</p>
    #
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>.</p>
    #
    # @option params [RDSDataSpec] :rds_data
    #   <p>The data specification of an Amazon RDS <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p>
    #                   <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon RDS database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p>
    #               </li>
    #               <li>
    #                  <p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon
    #   			Simple Storage Service (Amazon S3). For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS
    #   			to Amazon S3. For more information, see <a href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html">Role templates</a> for data pipelines.</p>
    #               </li>
    #               <li>
    #                  <p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample -
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :role_arn
    #   <p>The role that Amazon ML assumes on behalf of the user to create and activate a data
    #             pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p>
    #           <p></p>
    #
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.
    #               </p>
    #
    # @return [Types::CreateDataSourceFromRDSOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_rds(
    #     data_source_id: 'DataSourceId', # required
    #     data_source_name: 'DataSourceName',
    #     rds_data: {
    #       database_information: {
    #         instance_identifier: 'InstanceIdentifier', # required
    #         database_name: 'DatabaseName' # required
    #       }, # required
    #       select_sql_query: 'SelectSqlQuery', # required
    #       database_credentials: {
    #         username: 'Username', # required
    #         password: 'Password' # required
    #       }, # required
    #       s3_staging_location: 'S3StagingLocation', # required
    #       data_rearrangement: 'DataRearrangement',
    #       data_schema: 'DataSchema',
    #       data_schema_uri: 'DataSchemaUri',
    #       resource_role: 'ResourceRole', # required
    #       service_role: 'ServiceRole', # required
    #       subnet_id: 'SubnetId', # required
    #       security_group_ids: [
    #         'member'
    #       ] # required
    #     }, # required
    #     role_arn: 'RoleARN', # required
    #     compute_statistics: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSourceFromRDSOutput
    #   resp.data.data_source_id #=> String
    #
    def create_data_source_from_rds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceFromRDSInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceFromRDSInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSourceFromRDS
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateDataSourceFromRDS
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSourceFromRDS,
        stubs: @stubs,
        params_class: Params::CreateDataSourceFromRDSOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source_from_rds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A
    # 		<code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code>
    # 		operations.</p>
    #
    #         <p>
    #             <code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>.
    #             After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>.
    #           <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be
    #           used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.
    #         </p>
    #
    #         <p>
    #           If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code>
    # 		  attribute of the <code>GetDataSource</code> operation response.
    #         </p>
    #
    #         <p>The observations should be contained in the database hosted on an Amazon Redshift cluster
    #             and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an
    #                 <code>Unload</code> command in Amazon Redshift to transfer the result set of
    #                 the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p>
    #
    #         <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and
    #             batch predictions. If you plan to use the <code>DataSource</code> to train an
    #                 <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe
    #             describes how each input variable will be used in training an <code>MLModel</code>. Will
    #             the variable be included or excluded from training? Will the variable be manipulated;
    #             for example, will it be combined with another variable or will it be split apart into
    #             word combinations? The recipe provides answers to these questions.</p>
    #          <p>You can't change an existing datasource, but you can copy and modify the settings from an
    #             existing Amazon Redshift datasource to create a new datasource. To do so, call
    #                 <code>GetDataSource</code> for an existing datasource and copy the values to a
    #                 <code>CreateDataSource</code> call. Change the settings that you want to change and
    #             make sure that all required fields have the appropriate values.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceFromRedshiftInput}.
    #
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    #
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    #
    # @option params [RedshiftDataSpec] :data_spec
    #   <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DatabaseInformation -</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>DatabaseName</code> - The name of the Amazon Redshift database.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p>
    #               </li>
    #               <li>
    #                  <p>SelectSqlQuery - The query that is used to retrieve the observation data for the
    #   			<code>Datasource</code>.</p>
    #               </li>
    #               <li>
    #                  <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon
    #                       Redshift data. The data retrieved from Amazon Redshift using
    #                           the <code>SelectSqlQuery</code> query is stored in this location.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p>
    #                  <p> Sample -
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :role_arn
    #   <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:</p>
    #
    #              <ul>
    #               <li>
    #                  <p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #              This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to
    #             be used for <code>MLModel</code> training.</p>
    #
    # @return [Types::CreateDataSourceFromRedshiftOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_redshift(
    #     data_source_id: 'DataSourceId', # required
    #     data_source_name: 'DataSourceName',
    #     data_spec: {
    #       database_information: {
    #         database_name: 'DatabaseName', # required
    #         cluster_identifier: 'ClusterIdentifier' # required
    #       }, # required
    #       select_sql_query: 'SelectSqlQuery', # required
    #       database_credentials: {
    #         username: 'Username', # required
    #         password: 'Password' # required
    #       }, # required
    #       s3_staging_location: 'S3StagingLocation', # required
    #       data_rearrangement: 'DataRearrangement',
    #       data_schema: 'DataSchema',
    #       data_schema_uri: 'DataSchemaUri'
    #     }, # required
    #     role_arn: 'RoleARN', # required
    #     compute_statistics: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSourceFromRedshiftOutput
    #   resp.data.data_source_id #=> String
    #
    def create_data_source_from_redshift(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceFromRedshiftInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceFromRedshiftInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSourceFromRedshift
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateDataSourceFromRedshift
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSourceFromRedshift,
        stubs: @stubs,
        params_class: Params::CreateDataSourceFromRedshiftOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source_from_redshift
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that
    #           can be used to perform  <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or
    #           <code>CreateBatchPrediction</code> operations.</p>
    #
    #         <p>
    #             <code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to
    #                 <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately
    #             returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the
    #                 <code>DataSource</code> has been created and is ready for use, Amazon ML sets the
    #                 <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in
    #             the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only
    #                 <code>CreateMLModel</code>, <code>CreateEvaluation</code> or
    #                 <code>CreateBatchPrediction</code> operations. </p>
    #
    #         <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to
    #                 <code>FAILED</code> and includes an error message in the <code>Message</code>
    #             attribute of the <code>GetDataSource</code> operation response. </p>
    #
    #         <p>The observation data used in a <code>DataSource</code> should be ready to use; that is,
    #             it should have a consistent structure, and missing data values should be kept to a
    #             minimum. The observation data must reside in one or more .csv files in an Amazon Simple
    #             Storage Service (Amazon S3) location, along with a schema that describes the data items
    #             by name and type. The same schema must be used for all of the data files referenced by
    #             the <code>DataSource</code>. </p>
    #         <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and
    #             batch predictions. If you plan to use the <code>DataSource</code> to train an
    #                 <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe
    #             describes how each input variable will be used in training an <code>MLModel</code>. Will
    #             the variable be included or excluded from training? Will the variable be manipulated;
    #             for example, will it be combined with another variable or will it be split apart into
    #             word combinations? The recipe provides answers to these questions.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceFromS3Input}.
    #
    # @option params [String] :data_source_id
    #   <p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>
    #
    # @option params [String] :data_source_name
    #   <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    #
    # @option params [S3DataSpec] :data_spec
    #   <p>The data specification of a <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>DataLocationS3 - The Amazon S3 location of the observation data.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    #               </li>
    #               <li>
    #                  <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
    #                  <p> Sample -
    #               <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :compute_statistics
    #   <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by
    #               a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    #               This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>
    #
    # @return [Types::CreateDataSourceFromS3Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source_from_s3(
    #     data_source_id: 'DataSourceId', # required
    #     data_source_name: 'DataSourceName',
    #     data_spec: {
    #       data_location_s3: 'DataLocationS3', # required
    #       data_rearrangement: 'DataRearrangement',
    #       data_schema: 'DataSchema',
    #       data_schema_location_s3: 'DataSchemaLocationS3'
    #     }, # required
    #     compute_statistics: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSourceFromS3Output
    #   resp.data.data_source_id #=> String
    #
    def create_data_source_from_s3(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceFromS3Input.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceFromS3Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSourceFromS3
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateDataSourceFromS3
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSourceFromS3,
        stubs: @stubs,
        params_class: Params::CreateDataSourceFromS3Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source_from_s3
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code>
    #           for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a
    #             summary so that you know how effective the <code>MLModel</code> functions on the test
    #           data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>.
    #
    #         </p>
    #         <p>
    #             <code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately
    #             returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use,
    #             Amazon ML sets the status to <code>COMPLETED</code>.
    #         </p>
    #         <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEvaluationInput}.
    #
    # @option params [String] :evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>
    #
    # @option params [String] :evaluation_name
    #   <p>A user-supplied name or description of the <code>Evaluation</code>.</p>
    #
    # @option params [String] :ml_model_id
    #   <p>The ID of the <code>MLModel</code> to evaluate.</p>
    #           <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>
    #
    # @option params [String] :evaluation_data_source_id
    #   <p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code>
    #               must match the schema used to create the <code>MLModel</code>.</p>
    #
    # @return [Types::CreateEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluation(
    #     evaluation_id: 'EvaluationId', # required
    #     evaluation_name: 'EvaluationName',
    #     ml_model_id: 'MLModelId', # required
    #     evaluation_data_source_id: 'EvaluationDataSourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEvaluationOutput
    #   resp.data.evaluation_id #=> String
    #
    def create_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEvaluationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEvaluation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEvaluation,
        stubs: @stubs,
        params_class: Params::CreateEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as
    #             information sources. </p>
    #         <p>An <code>MLModel</code> is nearly immutable. Users can update only the
    #                 <code>MLModelName</code> and the <code>ScoreThreshold</code> in an
    #                 <code>MLModel</code> without creating a new <code>MLModel</code>. </p>
    #         <p>
    #             <code>CreateMLModel</code> is an asynchronous operation. In response to
    #                 <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns
    #             and sets the <code>MLModel</code> status to <code>PENDING</code>. After the
    #                 <code>MLModel</code> has been created and ready is for use, Amazon ML sets the
    #             status to <code>COMPLETED</code>. </p>
    #         <p>You can use the <code>GetMLModel</code> operation to check the progress of the
    #                 <code>MLModel</code> during the creation operation.</p>
    #
    #         <p>
    #            <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics,
    #           which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in
    #           <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or
    #           <code>CreateDataSourceFromRedshift</code> operations.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMLModelInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    #
    # @option params [String] :ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #
    # @option params [String] :ml_model_type
    #   <p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</p>
    #               </li>
    #               <li>
    #                  <p>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values.</p>
    #               </li>
    #            </ul>
    #           <p> For more information, see the <a href="https://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    #               a map of key-value pairs.</p>
    #           <p>The following is the current set of training parameters:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    #                       input data, the size of the model might affect its performance.</p>
    #                   <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    #                       observations to build the <code>MLModel</code>. The value is an integer that
    #                       ranges from <code>1</code> to <code>10000</code>. The default value is
    #                           <code>10</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling
    #                       the data improves a model's ability to find the optimal solution for a variety
    #                       of data types. The valid values are <code>auto</code> and <code>none</code>. The
    #                       default value is <code>none</code>. We strongly recommend that you shuffle your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to zero, resulting in a sparse feature set. If you use this
    #                       parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L1 normalization. This parameter can't be used when
    #                           <code>L2</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
    #                       overfitting the data by penalizing large coefficients. This tends to drive
    #                       coefficients to small, nonzero values. If you use this parameter, start by
    #                       specifying a small value, such as <code>1.0E-08</code>.</p>
    #                   <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    #                       The default is to not use L2 normalization. This parameter can't be used when
    #                           <code>L1</code> is specified. Use this parameter sparingly.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :training_data_source_id
    #   <p>The <code>DataSource</code> that points to the training data.</p>
    #
    # @option params [String] :recipe
    #   <p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe
    #               or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    #
    # @option params [String] :recipe_uri
    #   <p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>
    #
    # @return [Types::CreateMLModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_model(
    #     ml_model_id: 'MLModelId', # required
    #     ml_model_name: 'MLModelName',
    #     ml_model_type: 'REGRESSION', # required - accepts ["REGRESSION", "BINARY", "MULTICLASS"]
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     training_data_source_id: 'TrainingDataSourceId', # required
    #     recipe: 'Recipe',
    #     recipe_uri: 'RecipeUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMLModelOutput
    #   resp.data.ml_model_id #=> String
    #
    def create_ml_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMLModelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMLModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMLModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::CreateMLModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMLModel,
        stubs: @stubs,
        params_class: Params::CreateMLModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ml_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRealtimeEndpointInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #
    # @return [Types::CreateRealtimeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_realtime_endpoint(
    #     ml_model_id: 'MLModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRealtimeEndpointOutput
    #   resp.data.ml_model_id #=> String
    #   resp.data.realtime_endpoint_info #=> Types::RealtimeEndpointInfo
    #   resp.data.realtime_endpoint_info.peak_requests_per_second #=> Integer
    #   resp.data.realtime_endpoint_info.created_at #=> Time
    #   resp.data.realtime_endpoint_info.endpoint_url #=> String
    #   resp.data.realtime_endpoint_info.endpoint_status #=> String, one of ["NONE", "READY", "UPDATING", "FAILED"]
    #
    def create_realtime_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRealtimeEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRealtimeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRealtimeEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateRealtimeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRealtimeEndpoint,
        stubs: @stubs,
        params_class: Params::CreateRealtimeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_realtime_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a>
    #             operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p>
    #
    #         <p>
    #             <b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBatchPredictionInput}.
    #
    # @option params [String] :batch_prediction_id
    #   <p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>
    #
    # @return [Types::DeleteBatchPredictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_batch_prediction(
    #     batch_prediction_id: 'BatchPredictionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBatchPredictionOutput
    #   resp.data.batch_prediction_id #=> String
    #
    def delete_batch_prediction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBatchPredictionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBatchPredictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBatchPrediction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteBatchPrediction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBatchPrediction,
        stubs: @stubs,
        params_class: Params::DeleteBatchPredictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_batch_prediction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p>
    #         <p>
    #             <b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSourceInput}.
    #
    # @option params [String] :data_source_id
    #   <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    #
    # @return [Types::DeleteDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source(
    #     data_source_id: 'DataSourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSourceOutput
    #   resp.data.data_source_id #=> String
    #
    def delete_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSource,
        stubs: @stubs,
        params_class: Params::DeleteDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p>
    #
    #         <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the
    #           <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p>
    #         <p>
    #             <b>Caution:</b> The results of the <code>DeleteEvaluation</code> operation are irreversible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEvaluationInput}.
    #
    # @option params [String] :evaluation_id
    #   <p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>
    #
    # @return [Types::DeleteEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation(
    #     evaluation_id: 'EvaluationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEvaluationOutput
    #   resp.data.evaluation_id #=> String
    #
    def delete_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEvaluationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEvaluation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEvaluation,
        stubs: @stubs,
        params_class: Params::DeleteEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p>
    #         <p>After using the <code>DeleteMLModel</code> operation, you can use the
    #           <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p>
    #
    #         <p>
    #             <b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMLModelInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>
    #
    # @return [Types::DeleteMLModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_model(
    #     ml_model_id: 'MLModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMLModelOutput
    #   resp.data.ml_model_id #=> String
    #
    def delete_ml_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMLModelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMLModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMLModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteMLModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMLModel,
        stubs: @stubs,
        params_class: Params::DeleteMLModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ml_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a real time endpoint of an <code>MLModel</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRealtimeEndpointInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #
    # @return [Types::DeleteRealtimeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_realtime_endpoint(
    #     ml_model_id: 'MLModelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRealtimeEndpointOutput
    #   resp.data.ml_model_id #=> String
    #   resp.data.realtime_endpoint_info #=> Types::RealtimeEndpointInfo
    #   resp.data.realtime_endpoint_info.peak_requests_per_second #=> Integer
    #   resp.data.realtime_endpoint_info.created_at #=> Time
    #   resp.data.realtime_endpoint_info.endpoint_url #=> String
    #   resp.data.realtime_endpoint_info.endpoint_status #=> String, one of ["NONE", "READY", "UPDATING", "FAILED"]
    #
    def delete_realtime_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRealtimeEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRealtimeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRealtimeEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteRealtimeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRealtimeEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteRealtimeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_realtime_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p>
    # 		       <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tags to delete.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the tagged ML object.</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     tag_keys: [
    #       'member'
    #     ], # required
    #     resource_id: 'ResourceId', # required
    #     resource_type: 'BatchPrediction' # required - accepts ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsOutput
    #   resp.data.resource_id #=> String
    #   resp.data.resource_type #=> String, one of ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #
    def delete_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::InvalidTagException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTags,
        stubs: @stubs,
        params_class: Params::DeleteTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBatchPredictionsInput}.
    #
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code>
    #                     <b> </b>
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>BatchPrediction</code> results will have
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>BatchPrediction</code> results will
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #
    # @option params [String] :lt
    #   <p>The less than operator. The <code>BatchPrediction</code> results will
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p>
    #           <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code>
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for
    #               this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the
    #               <code>Prefix</code>:
    #           </p>
    #
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>An ID of the page in the paginated results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    #
    # @return [Types::DescribeBatchPredictionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_predictions(
    #     filter_variable: 'CreatedAt', # accepts ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"]
    #     eq: 'EQ',
    #     gt: 'GT',
    #     lt: 'LT',
    #     ge: 'GE',
    #     le: 'LE',
    #     ne: 'NE',
    #     prefix: 'Prefix',
    #     sort_order: 'asc', # accepts ["asc", "dsc"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBatchPredictionsOutput
    #   resp.data.results #=> Array<BatchPrediction>
    #   resp.data.results[0] #=> Types::BatchPrediction
    #   resp.data.results[0].batch_prediction_id #=> String
    #   resp.data.results[0].ml_model_id #=> String
    #   resp.data.results[0].batch_prediction_data_source_id #=> String
    #   resp.data.results[0].input_data_location_s3 #=> String
    #   resp.data.results[0].created_by_iam_user #=> String
    #   resp.data.results[0].created_at #=> Time
    #   resp.data.results[0].last_updated_at #=> Time
    #   resp.data.results[0].name #=> String
    #   resp.data.results[0].status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.results[0].output_uri #=> String
    #   resp.data.results[0].message #=> String
    #   resp.data.results[0].compute_time #=> Integer
    #   resp.data.results[0].finished_at #=> Time
    #   resp.data.results[0].started_at #=> Time
    #   resp.data.results[0].total_record_count #=> Integer
    #   resp.data.results[0].invalid_record_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_batch_predictions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBatchPredictionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBatchPredictionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBatchPredictions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeBatchPredictions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBatchPredictions,
        stubs: @stubs,
        params_class: Params::DescribeBatchPredictionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_batch_predictions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSourcesInput}.
    #
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>DataSource</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code>
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>DataSource</code> results will have
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>DataSource</code> results will
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #
    # @option params [String] :lt
    #   <p>The less than operator. The <code>DataSource</code> results will
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p>
    #           <p>For example, a <code>DataSource</code> could have the <code>Name</code>
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for
    #               this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the
    #               <code>Prefix</code>:
    #           </p>
    #
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    #
    # @option params [Integer] :limit
    #   <p> The maximum number of <code>DataSource</code> to include in the result.</p>
    #
    # @return [Types::DescribeDataSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_sources(
    #     filter_variable: 'CreatedAt', # accepts ["CreatedAt", "LastUpdatedAt", "Status", "Name", "DataLocationS3", "IAMUser"]
    #     eq: 'EQ',
    #     gt: 'GT',
    #     lt: 'LT',
    #     ge: 'GE',
    #     le: 'LE',
    #     ne: 'NE',
    #     prefix: 'Prefix',
    #     sort_order: 'asc', # accepts ["asc", "dsc"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSourcesOutput
    #   resp.data.results #=> Array<DataSource>
    #   resp.data.results[0] #=> Types::DataSource
    #   resp.data.results[0].data_source_id #=> String
    #   resp.data.results[0].data_location_s3 #=> String
    #   resp.data.results[0].data_rearrangement #=> String
    #   resp.data.results[0].created_by_iam_user #=> String
    #   resp.data.results[0].created_at #=> Time
    #   resp.data.results[0].last_updated_at #=> Time
    #   resp.data.results[0].data_size_in_bytes #=> Integer
    #   resp.data.results[0].number_of_files #=> Integer
    #   resp.data.results[0].name #=> String
    #   resp.data.results[0].status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.results[0].message #=> String
    #   resp.data.results[0].redshift_metadata #=> Types::RedshiftMetadata
    #   resp.data.results[0].redshift_metadata.redshift_database #=> Types::RedshiftDatabase
    #   resp.data.results[0].redshift_metadata.redshift_database.database_name #=> String
    #   resp.data.results[0].redshift_metadata.redshift_database.cluster_identifier #=> String
    #   resp.data.results[0].redshift_metadata.database_user_name #=> String
    #   resp.data.results[0].redshift_metadata.select_sql_query #=> String
    #   resp.data.results[0].rds_metadata #=> Types::RDSMetadata
    #   resp.data.results[0].rds_metadata.database #=> Types::RDSDatabase
    #   resp.data.results[0].rds_metadata.database.instance_identifier #=> String
    #   resp.data.results[0].rds_metadata.database.database_name #=> String
    #   resp.data.results[0].rds_metadata.database_user_name #=> String
    #   resp.data.results[0].rds_metadata.select_sql_query #=> String
    #   resp.data.results[0].rds_metadata.resource_role #=> String
    #   resp.data.results[0].rds_metadata.service_role #=> String
    #   resp.data.results[0].rds_metadata.data_pipeline_id #=> String
    #   resp.data.results[0].role_arn #=> String
    #   resp.data.results[0].compute_statistics #=> Boolean
    #   resp.data.results[0].compute_time #=> Integer
    #   resp.data.results[0].finished_at #=> Time
    #   resp.data.results[0].started_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_data_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeDataSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSources,
        stubs: @stubs,
        params_class: Params::DescribeDataSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEvaluationsInput}.
    #
    # @option params [String] :filter_variable
    #   <p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code>
    #                     <b> </b>
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>Evaluation</code> results will have
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>Evaluation</code> results will
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #
    # @option params [String] :lt
    #   <p>The less than operator. The <code>Evaluation</code> results will
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p>
    #           <p>For example, an <code>Evaluation</code> could have the <code>Name</code>
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for
    #               this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the
    #               <code>Prefix</code>:
    #           </p>
    #
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    #
    # @option params [Integer] :limit
    #   <p> The maximum number of <code>Evaluation</code> to include in the result.</p>
    #
    # @return [Types::DescribeEvaluationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_evaluations(
    #     filter_variable: 'CreatedAt', # accepts ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"]
    #     eq: 'EQ',
    #     gt: 'GT',
    #     lt: 'LT',
    #     ge: 'GE',
    #     le: 'LE',
    #     ne: 'NE',
    #     prefix: 'Prefix',
    #     sort_order: 'asc', # accepts ["asc", "dsc"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEvaluationsOutput
    #   resp.data.results #=> Array<Evaluation>
    #   resp.data.results[0] #=> Types::Evaluation
    #   resp.data.results[0].evaluation_id #=> String
    #   resp.data.results[0].ml_model_id #=> String
    #   resp.data.results[0].evaluation_data_source_id #=> String
    #   resp.data.results[0].input_data_location_s3 #=> String
    #   resp.data.results[0].created_by_iam_user #=> String
    #   resp.data.results[0].created_at #=> Time
    #   resp.data.results[0].last_updated_at #=> Time
    #   resp.data.results[0].name #=> String
    #   resp.data.results[0].status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.results[0].performance_metrics #=> Types::PerformanceMetrics
    #   resp.data.results[0].performance_metrics.properties #=> Hash<String, String>
    #   resp.data.results[0].performance_metrics.properties['key'] #=> String
    #   resp.data.results[0].message #=> String
    #   resp.data.results[0].compute_time #=> Integer
    #   resp.data.results[0].finished_at #=> Time
    #   resp.data.results[0].started_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_evaluations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEvaluationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEvaluationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEvaluations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeEvaluations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEvaluations,
        stubs: @stubs,
        params_class: Params::DescribeEvaluationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_evaluations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMLModelsInput}.
    #
    # @option params [String] :filter_variable
    #   <p>Use one of the following variables to filter a list of <code>MLModel</code>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code>
    #                     <b> </b>
    #                     <code>Name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :eq
    #   <p>The equal to operator. The <code>MLModel</code> results will have
    #               <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>
    #
    # @option params [String] :gt
    #   <p>The greater than operator. The <code>MLModel</code> results will
    #               have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>
    #
    # @option params [String] :lt
    #   <p>The less than operator. The <code>MLModel</code> results will
    #               have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>
    #
    # @option params [String] :ge
    #   <p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
    #           </p>
    #
    # @option params [String] :le
    #   <p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>
    #
    # @option params [String] :ne
    #   <p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>
    #
    # @option params [String] :prefix
    #   <p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p>
    #           <p>For example, an <code>MLModel</code> could have the <code>Name</code>
    #               <code>2014-09-09-HolidayGiftMailer</code>. To search for
    #               this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the
    #               <code>Prefix</code>:
    #           </p>
    #
    #           <ul>
    #               <li>
    #                  <p>2014-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09</p>
    #               </li>
    #               <li>
    #                  <p>2014-09-09-Holiday</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sort_order
    #   <p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
    #               </li>
    #            </ul>
    #           <p>Results are sorted by <code>FilterVariable</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The ID of the page in the paginated results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>
    #
    # @return [Types::DescribeMLModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ml_models(
    #     filter_variable: 'CreatedAt', # accepts ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "TrainingDataSourceId", "RealtimeEndpointStatus", "MLModelType", "Algorithm", "TrainingDataURI"]
    #     eq: 'EQ',
    #     gt: 'GT',
    #     lt: 'LT',
    #     ge: 'GE',
    #     le: 'LE',
    #     ne: 'NE',
    #     prefix: 'Prefix',
    #     sort_order: 'asc', # accepts ["asc", "dsc"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMLModelsOutput
    #   resp.data.results #=> Array<MLModel>
    #   resp.data.results[0] #=> Types::MLModel
    #   resp.data.results[0].ml_model_id #=> String
    #   resp.data.results[0].training_data_source_id #=> String
    #   resp.data.results[0].created_by_iam_user #=> String
    #   resp.data.results[0].created_at #=> Time
    #   resp.data.results[0].last_updated_at #=> Time
    #   resp.data.results[0].name #=> String
    #   resp.data.results[0].status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.results[0].size_in_bytes #=> Integer
    #   resp.data.results[0].endpoint_info #=> Types::RealtimeEndpointInfo
    #   resp.data.results[0].endpoint_info.peak_requests_per_second #=> Integer
    #   resp.data.results[0].endpoint_info.created_at #=> Time
    #   resp.data.results[0].endpoint_info.endpoint_url #=> String
    #   resp.data.results[0].endpoint_info.endpoint_status #=> String, one of ["NONE", "READY", "UPDATING", "FAILED"]
    #   resp.data.results[0].training_parameters #=> Hash<String, String>
    #   resp.data.results[0].training_parameters['key'] #=> String
    #   resp.data.results[0].input_data_location_s3 #=> String
    #   resp.data.results[0].algorithm #=> String, one of ["sgd"]
    #   resp.data.results[0].ml_model_type #=> String, one of ["REGRESSION", "BINARY", "MULTICLASS"]
    #   resp.data.results[0].score_threshold #=> Float
    #   resp.data.results[0].score_threshold_last_updated_at #=> Time
    #   resp.data.results[0].message #=> String
    #   resp.data.results[0].compute_time #=> Integer
    #   resp.data.results[0].finished_at #=> Time
    #   resp.data.results[0].started_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_ml_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMLModelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMLModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMLModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeMLModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMLModels,
        stubs: @stubs,
        params_class: Params::DescribeMLModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ml_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of the tags for your Amazon ML object.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the ML object.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     resource_id: 'ResourceId', # required
    #     resource_type: 'BatchPrediction' # required - accepts ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.resource_id #=> String
    #   resp.data.resource_type #=> String, one of ["BatchPrediction", "DataSource", "Evaluation", "MLModel"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a
    #             <code>Batch Prediction</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBatchPredictionInput}.
    #
    # @option params [String] :batch_prediction_id
    #   <p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>
    #
    # @return [Types::GetBatchPredictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_prediction(
    #     batch_prediction_id: 'BatchPredictionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBatchPredictionOutput
    #   resp.data.batch_prediction_id #=> String
    #   resp.data.ml_model_id #=> String
    #   resp.data.batch_prediction_data_source_id #=> String
    #   resp.data.input_data_location_s3 #=> String
    #   resp.data.created_by_iam_user #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.output_uri #=> String
    #   resp.data.log_uri #=> String
    #   resp.data.message #=> String
    #   resp.data.compute_time #=> Integer
    #   resp.data.finished_at #=> Time
    #   resp.data.started_at #=> Time
    #   resp.data.total_record_count #=> Integer
    #   resp.data.invalid_record_count #=> Integer
    #
    def get_batch_prediction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBatchPredictionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBatchPredictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBatchPrediction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetBatchPrediction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBatchPrediction,
        stubs: @stubs,
        params_class: Params::GetBatchPredictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_batch_prediction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p>
    #         <p>
    #             <code>GetDataSource</code> provides results in normal or verbose format. The verbose format
    #             adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataSourceInput}.
    #
    # @option params [String] :data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> at creation.</p>
    #
    # @option params [Boolean] :verbose
    #   <p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p>
    #           <p>If true, <code>DataSourceSchema</code> is returned.</p>
    #           <p>If false, <code>DataSourceSchema</code> is not returned.</p>
    #
    # @return [Types::GetDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source(
    #     data_source_id: 'DataSourceId', # required
    #     verbose: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataSourceOutput
    #   resp.data.data_source_id #=> String
    #   resp.data.data_location_s3 #=> String
    #   resp.data.data_rearrangement #=> String
    #   resp.data.created_by_iam_user #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.data_size_in_bytes #=> Integer
    #   resp.data.number_of_files #=> Integer
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.log_uri #=> String
    #   resp.data.message #=> String
    #   resp.data.redshift_metadata #=> Types::RedshiftMetadata
    #   resp.data.redshift_metadata.redshift_database #=> Types::RedshiftDatabase
    #   resp.data.redshift_metadata.redshift_database.database_name #=> String
    #   resp.data.redshift_metadata.redshift_database.cluster_identifier #=> String
    #   resp.data.redshift_metadata.database_user_name #=> String
    #   resp.data.redshift_metadata.select_sql_query #=> String
    #   resp.data.rds_metadata #=> Types::RDSMetadata
    #   resp.data.rds_metadata.database #=> Types::RDSDatabase
    #   resp.data.rds_metadata.database.instance_identifier #=> String
    #   resp.data.rds_metadata.database.database_name #=> String
    #   resp.data.rds_metadata.database_user_name #=> String
    #   resp.data.rds_metadata.select_sql_query #=> String
    #   resp.data.rds_metadata.resource_role #=> String
    #   resp.data.rds_metadata.service_role #=> String
    #   resp.data.rds_metadata.data_pipeline_id #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.compute_statistics #=> Boolean
    #   resp.data.compute_time #=> Integer
    #   resp.data.finished_at #=> Time
    #   resp.data.started_at #=> Time
    #   resp.data.data_source_schema #=> String
    #
    def get_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataSourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataSource,
        stubs: @stubs,
        params_class: Params::GetDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEvaluationInput}.
    #
    # @option params [String] :evaluation_id
    #   <p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>
    #
    # @return [Types::GetEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evaluation(
    #     evaluation_id: 'EvaluationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvaluationOutput
    #   resp.data.evaluation_id #=> String
    #   resp.data.ml_model_id #=> String
    #   resp.data.evaluation_data_source_id #=> String
    #   resp.data.input_data_location_s3 #=> String
    #   resp.data.created_by_iam_user #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.performance_metrics #=> Types::PerformanceMetrics
    #   resp.data.performance_metrics.properties #=> Hash<String, String>
    #   resp.data.performance_metrics.properties['key'] #=> String
    #   resp.data.log_uri #=> String
    #   resp.data.message #=> String
    #   resp.data.compute_time #=> Integer
    #   resp.data.finished_at #=> Time
    #   resp.data.started_at #=> Time
    #
    def get_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvaluationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvaluation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvaluation,
        stubs: @stubs,
        params_class: Params::GetEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p>
    #         <p>
    #             <code>GetMLModel</code> provides results in normal or verbose format. </p>
    #
    # @param [Hash] params
    #   See {Types::GetMLModelInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> at creation.</p>
    #
    # @option params [Boolean] :verbose
    #   <p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p>
    #           <p>If true, <code>Recipe</code> is returned.</p>
    #           <p>If false, <code>Recipe</code> is not returned.</p>
    #
    # @return [Types::GetMLModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_model(
    #     ml_model_id: 'MLModelId', # required
    #     verbose: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMLModelOutput
    #   resp.data.ml_model_id #=> String
    #   resp.data.training_data_source_id #=> String
    #   resp.data.created_by_iam_user #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"]
    #   resp.data.size_in_bytes #=> Integer
    #   resp.data.endpoint_info #=> Types::RealtimeEndpointInfo
    #   resp.data.endpoint_info.peak_requests_per_second #=> Integer
    #   resp.data.endpoint_info.created_at #=> Time
    #   resp.data.endpoint_info.endpoint_url #=> String
    #   resp.data.endpoint_info.endpoint_status #=> String, one of ["NONE", "READY", "UPDATING", "FAILED"]
    #   resp.data.training_parameters #=> Hash<String, String>
    #   resp.data.training_parameters['key'] #=> String
    #   resp.data.input_data_location_s3 #=> String
    #   resp.data.ml_model_type #=> String, one of ["REGRESSION", "BINARY", "MULTICLASS"]
    #   resp.data.score_threshold #=> Float
    #   resp.data.score_threshold_last_updated_at #=> Time
    #   resp.data.log_uri #=> String
    #   resp.data.message #=> String
    #   resp.data.compute_time #=> Integer
    #   resp.data.finished_at #=> Time
    #   resp.data.started_at #=> Time
    #   resp.data.recipe #=> String
    #   resp.data.schema #=> String
    #
    def get_ml_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMLModelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMLModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMLModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetMLModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMLModel,
        stubs: @stubs,
        params_class: Params::GetMLModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ml_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p>
    #         <p>
    #             <b>Note:</b> Not all response parameters will be populated. Whether a
    #           response parameter is populated depends on the type of model requested.</p>
    #
    # @param [Hash] params
    #   See {Types::PredictInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>A unique identifier of the <code>MLModel</code>.</p>
    #
    # @option params [Hash<String, String>] :record
    #   <p>A map of variable name-value pairs that represent an observation.</p>
    #
    # @return [Types::PredictOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.predict(
    #     ml_model_id: 'MLModelId', # required
    #     record: {
    #       'key' => 'value'
    #     }, # required
    #     predict_endpoint: 'PredictEndpoint' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PredictOutput
    #   resp.data.prediction #=> Types::Prediction
    #   resp.data.prediction.predicted_label #=> String
    #   resp.data.prediction.predicted_value #=> Float
    #   resp.data.prediction.predicted_scores #=> Hash<String, Float>
    #   resp.data.prediction.predicted_scores['key'] #=> Float
    #   resp.data.prediction.details #=> Hash<String, String>
    #   resp.data.prediction.details['key'] #=> String
    #
    def predict(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PredictInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PredictInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Predict
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::PredictorNotMountedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::Predict
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Predict,
        stubs: @stubs,
        params_class: Params::PredictOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :predict
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p>
    #         <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBatchPredictionInput}.
    #
    # @option params [String] :batch_prediction_id
    #   <p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>
    #
    # @option params [String] :batch_prediction_name
    #   <p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>
    #
    # @return [Types::UpdateBatchPredictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_batch_prediction(
    #     batch_prediction_id: 'BatchPredictionId', # required
    #     batch_prediction_name: 'BatchPredictionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBatchPredictionOutput
    #   resp.data.batch_prediction_id #=> String
    #
    def update_batch_prediction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBatchPredictionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBatchPredictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBatchPrediction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateBatchPrediction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBatchPrediction,
        stubs: @stubs,
        params_class: Params::UpdateBatchPredictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_batch_prediction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p>
    #         <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSourceInput}.
    #
    # @option params [String] :data_source_id
    #   <p>The ID assigned to the <code>DataSource</code> during creation.</p>
    #
    # @option params [String] :data_source_name
    #   <p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>
    #
    # @return [Types::UpdateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source(
    #     data_source_id: 'DataSourceId', # required
    #     data_source_name: 'DataSourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSourceOutput
    #   resp.data.data_source_id #=> String
    #
    def update_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSource,
        stubs: @stubs,
        params_class: Params::UpdateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p>
    #         <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEvaluationInput}.
    #
    # @option params [String] :evaluation_id
    #   <p>The ID assigned to the <code>Evaluation</code> during creation.</p>
    #
    # @option params [String] :evaluation_name
    #   <p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>
    #
    # @return [Types::UpdateEvaluationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_evaluation(
    #     evaluation_id: 'EvaluationId', # required
    #     evaluation_name: 'EvaluationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEvaluationOutput
    #   resp.data.evaluation_id #=> String
    #
    def update_evaluation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEvaluationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEvaluationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEvaluation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateEvaluation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEvaluation,
        stubs: @stubs,
        params_class: Params::UpdateEvaluationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_evaluation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p>
    #         <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMLModelInput}.
    #
    # @option params [String] :ml_model_id
    #   <p>The ID assigned to the <code>MLModel</code> during creation.</p>
    #
    # @option params [String] :ml_model_name
    #   <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    #
    # @option params [Float] :score_threshold
    #   <p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p>
    #           <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>
    #
    # @return [Types::UpdateMLModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ml_model(
    #     ml_model_id: 'MLModelId', # required
    #     ml_model_name: 'MLModelName',
    #     score_threshold: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMLModelOutput
    #   resp.data.ml_model_id #=> String
    #
    def update_ml_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMLModelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMLModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMLModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateMLModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMLModel,
        stubs: @stubs,
        params_class: Params::UpdateMLModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ml_model
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
