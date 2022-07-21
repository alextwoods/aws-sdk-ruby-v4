# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Personalize
  # An API client for AmazonPersonalize
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Personalize is a machine learning service that makes it easy to add individualized
  #       recommendations to customers.</p>
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
    def initialize(config = AWS::SDK::Personalize::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a batch inference job. The operation can handle up to 50 million records and the
    #       input file must be in JSON format. For more information, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/creating-batch-inference-job.html">Creating a batch inference job</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBatchInferenceJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the batch inference job to create.</p>
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the
    #         batch inference recommendations.</p>
    #
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the batch inference job. For more information on using
    #         filters, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    #
    # @option params [Integer] :num_results
    #   <p>The number of recommendations to retrieve.</p>
    #
    # @option params [BatchInferenceJobInput] :job_input
    #   <p>The Amazon S3 path that leads to the input file to base your recommendations on. The input
    #         material must be in JSON format.</p>
    #
    # @option params [BatchInferenceJobOutput] :job_output
    #   <p>The path to the Amazon S3 bucket where the job's output will be stored.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    #
    # @option params [BatchInferenceJobConfig] :batch_inference_job_config
    #   <p>The configuration details of a batch inference job.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the batch inference job.</p>
    #
    # @return [Types::CreateBatchInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_inference_job(
    #     job_name: 'jobName', # required
    #     solution_version_arn: 'solutionVersionArn', # required
    #     filter_arn: 'filterArn',
    #     num_results: 1,
    #     job_input: {
    #       s3_data_source: {
    #         path: 'path', # required
    #         kms_key_arn: 'kmsKeyArn'
    #       } # required
    #     }, # required
    #     job_output: {
    #     }, # required
    #     role_arn: 'roleArn', # required
    #     batch_inference_job_config: {
    #       item_exploration_config: {
    #         'key' => 'value'
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBatchInferenceJobOutput
    #   resp.data.batch_inference_job_arn #=> String
    #
    def create_batch_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBatchInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBatchInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBatchInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateBatchInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBatchInferenceJob,
        stubs: @stubs,
        params_class: Params::CreateBatchInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_batch_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a batch segment job. The operation can handle up to 50 million records and the
    #       input file must be in JSON format. For more information, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recommendations-batch.html">Getting batch recommendations and user segments</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBatchSegmentJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the batch segment job to create.</p>
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want the batch segment job to use to generate
    #         batch segments.</p>
    #
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the batch segment job. For more information on using
    #         filters, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering batch recommendations</a>.</p>
    #
    # @option params [Integer] :num_results
    #   <p>The number of predicted users generated by the batch segment job for each line of input data.</p>
    #
    # @option params [BatchSegmentJobInput] :job_input
    #   <p>The Amazon S3 path for the input data used to generate the batch segment job.</p>
    #
    # @option params [BatchSegmentJobOutput] :job_output
    #   <p>The Amazon S3 path for the bucket where the job's output will be stored.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
    #         Amazon S3 buckets respectively.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the batch segment job.</p>
    #
    # @return [Types::CreateBatchSegmentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_segment_job(
    #     job_name: 'jobName', # required
    #     solution_version_arn: 'solutionVersionArn', # required
    #     filter_arn: 'filterArn',
    #     num_results: 1,
    #     job_input: {
    #       s3_data_source: {
    #         path: 'path', # required
    #         kms_key_arn: 'kmsKeyArn'
    #       } # required
    #     }, # required
    #     job_output: {
    #     }, # required
    #     role_arn: 'roleArn', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBatchSegmentJobOutput
    #   resp.data.batch_segment_job_arn #=> String
    #
    def create_batch_segment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBatchSegmentJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBatchSegmentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBatchSegmentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateBatchSegmentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBatchSegmentJob,
        stubs: @stubs,
        params_class: Params::CreateBatchSegmentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_batch_segment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a campaign that deploys a solution version. When a client calls the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       and
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html">GetPersonalizedRanking</a>
    #       APIs, a campaign is specified in the request.</p>
    #
    #          <p>
    #             <b>Minimum Provisioned TPS and Auto-Scaling</b>
    #          </p>
    #
    #          <p>A transaction is a single <code>GetRecommendations</code> or
    #        <code>GetPersonalizedRanking</code> call. Transactions per second (TPS) is the throughput
    #        and unit of billing for Amazon Personalize. The minimum provisioned TPS
    #        (<code>minProvisionedTPS</code>) specifies the baseline throughput provisioned by
    #        Amazon Personalize, and thus, the minimum billing charge.
    #     </p>
    #          <p>
    #        If your TPS increases beyond
    #        <code>minProvisionedTPS</code>, Amazon Personalize auto-scales the provisioned capacity up and down,
    #        but never below <code>minProvisionedTPS</code>.
    #        There's a short time delay while the capacity is increased that might cause loss of
    #        transactions.</p>
    #          <p>The actual TPS used is calculated as the average requests/second within a 5-minute window.
    #       You pay for maximum of either the minimum provisioned TPS or the actual TPS.
    #       We recommend starting with a low <code>minProvisionedTPS</code>, track
    #        your usage using Amazon CloudWatch metrics, and then increase the <code>minProvisionedTPS</code>
    #        as necessary.</p>
    #
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A campaign can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the campaign status, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a>.</p>
    #          <note>
    #             <p>Wait until the <code>status</code> of the campaign
    #         is <code>ACTIVE</code> before asking the campaign for recommendations.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateCampaign.html">UpdateCampaign</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteCampaign.html">DeleteCampaign</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateCampaignInput}.
    #
    # @option params [String] :name
    #   <p>A name for the new campaign. The campaign name must be unique within your account.</p>
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version to deploy.</p>
    #
    # @option params [Integer] :min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support.</p>
    #
    # @option params [CampaignConfig] :campaign_config
    #   <p>The configuration details of a campaign.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the campaign.</p>
    #
    # @return [Types::CreateCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign(
    #     name: 'name', # required
    #     solution_version_arn: 'solutionVersionArn', # required
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         'key' => 'value'
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCampaignOutput
    #   resp.data.campaign_arn #=> String
    #
    def create_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCampaignInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCampaign,
        stubs: @stubs,
        params_class: Params::CreateCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty dataset and adds it to the specified dataset group. Use
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a> to import your training data to a dataset.</p>
    #
    #          <p>There are three types of datasets:</p>
    #          <ul>
    #             <li>
    #                <p>Interactions</p>
    #             </li>
    #             <li>
    #                <p>Items</p>
    #             </li>
    #             <li>
    #                <p>Users</p>
    #             </li>
    #          </ul>
    #          <p>Each dataset type has an associated schema with required field types. Only the
    #         <code>Interactions</code> dataset is required in order to train a model (also referred to as
    #       creating a solution).</p>
    #          <p>A dataset can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the dataset, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html">DescribeDataset</a>.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasets.html">ListDatasets</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDataset.html">DescribeDataset</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDataset.html">DeleteDataset</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :name
    #   <p>The name for the dataset.</p>
    #
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to associate with the dataset. The schema defines the dataset
    #         fields.</p>
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to add the dataset to.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of dataset.</p>
    #            <p>One of the following (case insensitive) values:</p>
    #            <ul>
    #               <li>
    #                  <p>Interactions</p>
    #               </li>
    #               <li>
    #                  <p>Items</p>
    #               </li>
    #               <li>
    #                  <p>Users</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the dataset.</p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     name: 'name', # required
    #     schema_arn: 'schemaArn', # required
    #     dataset_group_arn: 'datasetGroupArn', # required
    #     dataset_type: 'datasetType', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.dataset_arn #=> String
    #
    def create_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataset,
        stubs: @stubs,
        params_class: Params::CreateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a job that exports data from your dataset to an Amazon S3 bucket.
    #       To allow Amazon Personalize to export the training data, you must specify an
    #       service-linked IAM role that gives Amazon Personalize <code>PutObject</code> permissions for your Amazon S3 bucket.
    #       For information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/export-data.html">Exporting a dataset</a>
    #       in the Amazon Personalize developer guide.
    #     </p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A dataset export job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #          </ul>
    #          <p>
    #       To get the status of the export job, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetExportJob.html">DescribeDatasetExportJob</a>,
    #       and specify the Amazon Resource Name (ARN) of the dataset export job. The dataset export is
    #       complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response
    #       includes a <code>failureReason</code> key, which describes why the job failed.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetExportJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name for the dataset export job.</p>
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that contains the data to export.</p>
    #
    # @option params [String] :ingestion_mode
    #   <p>The data to export, based on how you imported the data. You can choose to export only <code>BULK</code> data that you imported using a dataset import job,
    #         only <code>PUT</code> data that you imported incrementally (using the console, PutEvents, PutUsers and PutItems operations), or <code>ALL</code>
    #         for both types. The default value is <code>PUT</code>.
    #       </p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that has permissions to add data to your
    #         output Amazon S3 bucket.</p>
    #
    # @option params [DatasetExportJobOutput] :job_output
    #   <p>The path to the Amazon S3 bucket where the job's output is stored.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the dataset export job.</p>
    #
    # @return [Types::CreateDatasetExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_export_job(
    #     job_name: 'jobName', # required
    #     dataset_arn: 'datasetArn', # required
    #     ingestion_mode: 'BULK', # accepts ["BULK", "PUT", "ALL"]
    #     role_arn: 'roleArn', # required
    #     job_output: {
    #       s3_data_destination: {
    #         path: 'path', # required
    #         kms_key_arn: 'kmsKeyArn'
    #       } # required
    #     }, # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetExportJobOutput
    #   resp.data.dataset_export_job_arn #=> String
    #
    def create_dataset_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatasetExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateDatasetExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatasetExportJob,
        stubs: @stubs,
        params_class: Params::CreateDatasetExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty dataset group. A dataset group is a container for Amazon Personalize resources.
    #       A dataset group can contain at most three datasets, one for each type of
    #       dataset:</p>
    #          <ul>
    #             <li>
    #                <p>Interactions</p>
    #             </li>
    #             <li>
    #                <p>Items</p>
    #             </li>
    #             <li>
    #                <p>Users</p>
    #             </li>
    #          </ul>
    #          <p>
    #       A dataset group can be a Domain dataset group, where you specify a domain and use
    #       pre-configured resources like recommenders, or a Custom dataset group, where you use custom resources, such as a solution with a solution version, that
    #       you deploy with a campaign.  If you start with a Domain dataset group, you can still add custom resources such as
    #       solutions and solution versions trained with recipes for custom use cases and deployed with campaigns.
    #     </p>
    #          <p>A dataset group can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the dataset group, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>. If
    #       the status shows as CREATE FAILED, the response includes a <code>failureReason</code> key,
    #       which describes why the creation failed.</p>
    #          <note>
    #             <p>You must wait until the <code>status</code> of the dataset group is <code>ACTIVE</code>
    #         before adding a dataset to the group.</p>
    #          </note>
    #          <p>You can specify an Key Management Service (KMS) key to encrypt the datasets in the group. If you
    #       specify a KMS key, you must also include an Identity and Access Management (IAM) role that has permission to
    #       access the key.</p>
    #          <p class="title">
    #             <b>APIs that require a dataset group ARN in the request</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetGroups.html">ListDatasetGroups</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteDatasetGroup.html">DeleteDatasetGroup</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name for the new dataset group.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) role that has permissions to access the Key Management Service (KMS) key. Supplying an IAM
    #         role is only valid when also specifying a KMS key.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a Key Management Service (KMS) key used to encrypt the datasets.</p>
    #
    # @option params [String] :domain
    #   <p>The domain of the dataset group. Specify a domain to create a Domain dataset group. The domain you specify
    #         determines the default schemas for datasets and the use cases available for recommenders. If you don't specify a domain,
    #         you create a Custom dataset group with solution versions that you deploy with a campaign.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the dataset group.</p>
    #
    # @return [Types::CreateDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group(
    #     name: 'name', # required
    #     role_arn: 'roleArn',
    #     kms_key_arn: 'kmsKeyArn',
    #     domain: 'ECOMMERCE', # accepts ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetGroupOutput
    #   resp.data.dataset_group_arn #=> String
    #   resp.data.domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #
    def create_dataset_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatasetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::LimitExceededException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateDatasetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatasetGroup,
        stubs: @stubs,
        params_class: Params::CreateDatasetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job that imports training data from your data source (an Amazon S3 bucket) to an
    #       Amazon Personalize dataset. To allow Amazon Personalize to import the training data, you must specify an
    #       IAM service role that has permission to read from the data source, as Amazon Personalize makes a
    #       copy of your data and processes it internally. For information on granting access
    #       to your Amazon S3 bucket, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html">Giving Amazon Personalize
    #       Access to Amazon S3 Resources</a>. </p>
    #          <important>
    #             <p>The dataset import job replaces any existing data in the dataset that you imported in bulk.</p>
    #          </important>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A dataset import job can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the import job, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>,
    #       providing the Amazon Resource Name (ARN) of the dataset import job. The dataset import is
    #       complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response
    #       includes a <code>failureReason</code> key, which describes why the job failed.</p>
    #          <note>
    #             <p>Importing takes time. You must wait until the status shows as ACTIVE before training a
    #         model using the dataset.</p>
    #          </note>
    #
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListDatasetImportJobs.html">ListDatasetImportJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetImportJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name for the dataset import job.</p>
    #
    # @option params [String] :dataset_arn
    #   <p>The ARN of the dataset that receives the imported data.</p>
    #
    # @option params [DataSource] :data_source
    #   <p>The Amazon S3 bucket that contains the training data to import.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that has permissions to read from the Amazon S3 data source.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the dataset import job.</p>
    #
    # @return [Types::CreateDatasetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_import_job(
    #     job_name: 'jobName', # required
    #     dataset_arn: 'datasetArn', # required
    #     data_source: {
    #       data_location: 'dataLocation'
    #     }, # required
    #     role_arn: 'roleArn', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetImportJobOutput
    #   resp.data.dataset_import_job_arn #=> String
    #
    def create_dataset_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatasetImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateDatasetImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatasetImportJob,
        stubs: @stubs,
        params_class: Params::CreateDatasetImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an event tracker that you use when adding event data to a specified dataset
    #       group using the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> API.</p>
    #          <note>
    #             <p>Only one event tracker can be associated with a dataset group. You will get
    #         an error if you call <code>CreateEventTracker</code> using the same dataset group as an
    #         existing event tracker.</p>
    #          </note>
    #          <p>When you create an event tracker, the response includes a tracking ID, which you pass as a parameter when you use the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html">PutEvents</a> operation.
    #       Amazon Personalize then appends the event data to the Interactions dataset of the dataset group you specify
    #       in your event tracker.
    #     </p>
    #          <p>The event tracker can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the event tracker, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html">DescribeEventTracker</a>.</p>
    #          <note>
    #             <p>The event tracker must be in the ACTIVE state before using the tracking ID.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListEventTrackers.html">ListEventTrackers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeEventTracker.html">DescribeEventTracker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteEventTracker.html">DeleteEventTracker</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateEventTrackerInput}.
    #
    # @option params [String] :name
    #   <p>The name for the event tracker.</p>
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the event tracker.</p>
    #
    # @return [Types::CreateEventTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_tracker(
    #     name: 'name', # required
    #     dataset_group_arn: 'datasetGroupArn', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventTrackerOutput
    #   resp.data.event_tracker_arn #=> String
    #   resp.data.tracking_id #=> String
    #
    def create_event_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateEventTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventTracker,
        stubs: @stubs,
        params_class: Params::CreateEventTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a recommendation filter. For more information, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering recommendations and user segments</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFilterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the filter to create.</p>
    #
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group that the filter will belong to.</p>
    #
    # @option params [String] :filter_expression
    #   <p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules.
    #               For information about filter expression structure and syntax, see
    #               <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html">Filter expressions</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the filter.</p>
    #
    # @return [Types::CreateFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter(
    #     name: 'name', # required
    #     dataset_group_arn: 'datasetGroupArn', # required
    #     filter_expression: 'filterExpression', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFilterOutput
    #   resp.data.filter_arn #=> String
    #
    def create_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFilter,
        stubs: @stubs,
        params_class: Params::CreateFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a recommender with the recipe (a Domain dataset group use case) you specify.
    #       You create recommenders for a Domain dataset group and specify the recommender's Amazon Resource Name (ARN) when you make a
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       request.
    #      </p>
    #
    #          <p>
    #             <b>Minimum recommendation requests per second</b>
    #          </p>
    #
    #          <p>When you create a recommender, you can configure the recommender's minimum recommendation requests per second. The minimum recommendation requests per second
    #       (<code>minRecommendationRequestsPerSecond</code>) specifies the baseline recommendation request throughput provisioned by
    #       Amazon Personalize. The default minRecommendationRequestsPerSecond is <code>1</code>. A recommendation request is a single <code>GetRecommendations</code> operation.
    #       Request throughput is measured in requests per second and Amazon Personalize uses your requests per second to derive
    #       your requests per hour and the price of your recommender usage.
    #     </p>
    #          <p>
    #       If your requests per second increases beyond
    #       <code>minRecommendationRequestsPerSecond</code>, Amazon Personalize auto-scales the provisioned capacity up and down,
    #       but never below <code>minRecommendationRequestsPerSecond</code>.
    #       There's a short time delay while the capacity is increased that might cause loss of
    #       requests.</p>
    #          <p>
    #       Your bill is the greater of either the minimum requests per hour (based on minRecommendationRequestsPerSecond)
    #       or the actual number of requests. The actual request throughput used is calculated as the average requests/second within a one-hour window.
    #
    #       We recommend starting with the default <code>minRecommendationRequestsPerSecond</code>, track
    #       your usage using Amazon CloudWatch metrics, and then increase the <code>minRecommendationRequestsPerSecond</code>
    #       as necessary.
    #     </p>
    #
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A recommender can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the recommender status, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a>.</p>
    #          <note>
    #             <p>Wait until the <code>status</code> of the recommender
    #         is <code>ACTIVE</code> before asking the recommender for recommendations.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListRecommenders.html">ListRecommenders</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeRecommender.html">DescribeRecommender</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_UpdateRecommender.html">UpdateRecommender</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteRecommender.html">DeleteRecommender</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateRecommenderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the recommender.</p>
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination domain dataset group for the recommender.</p>
    #
    # @option params [String] :recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe that the recommender will use. For a recommender, a recipe is a Domain dataset group
    #         use case. Only Domain dataset group use cases can be used to create a recommender. For information about use cases see <a href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing recommender use cases</a>.
    #       </p>
    #
    # @option params [RecommenderConfig] :recommender_config
    #   <p>The configuration details of the recommender.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the recommender.</p>
    #
    # @return [Types::CreateRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommender(
    #     name: 'name', # required
    #     dataset_group_arn: 'datasetGroupArn', # required
    #     recipe_arn: 'recipeArn', # required
    #     recommender_config: {
    #       item_exploration_config: {
    #         'key' => 'value'
    #       },
    #       min_recommendation_requests_per_second: 1
    #     },
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecommenderOutput
    #   resp.data.recommender_arn #=> String
    #
    def create_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecommender,
        stubs: @stubs,
        params_class: Params::CreateRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recommender
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Personalize schema from the specified schema string. The schema you create
    #       must be in Avro JSON format.</p>
    #          <p>Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset
    #       type and has a set of required field and keywords. If you are creating a schema for a dataset in a Domain dataset group, you
    #     provide the domain of the Domain dataset group.
    #     You specify a schema when you call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSchemas.html">ListSchemas</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSchema.html">DescribeSchema</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSchema.html">DeleteSchema</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateSchemaInput}.
    #
    # @option params [String] :name
    #   <p>The name for the schema.</p>
    #
    # @option params [String] :schema
    #   <p>A schema in Avro JSON format.</p>
    #
    # @option params [String] :domain
    #   <p>The domain for the schema. If you are creating a schema for a dataset in a Domain dataset group, specify
    #       the domain you chose when you created the Domain dataset group.</p>
    #
    # @return [Types::CreateSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema(
    #     name: 'name', # required
    #     schema: 'schema', # required
    #     domain: 'ECOMMERCE' # accepts ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSchemaOutput
    #   resp.data.schema_arn #=> String
    #
    def create_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSchemaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSchema,
        stubs: @stubs,
        params_class: Params::CreateSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the configuration for training a model. A trained model is known as
    #       a solution. After the configuration is created, you train the model (create a solution)
    #       by calling the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html">CreateSolutionVersion</a> operation. Every time you call
    #       <code>CreateSolutionVersion</code>, a new version of the solution is created.</p>
    #          <p>After creating a solution version, you check its accuracy by calling
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_GetSolutionMetrics.html">GetSolutionMetrics</a>. When you are satisfied with the version, you
    #       deploy it using <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>. The campaign provides recommendations
    #       to a client through the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a> API.</p>
    #          <p>To train a model, Amazon Personalize requires training data and a recipe. The training data
    #       comes from the dataset group that you provide in the request. A recipe specifies
    #       the training algorithm and a feature transformation. You can specify one of the predefined
    #       recipes provided by Amazon Personalize. Alternatively, you can specify
    #       <code>performAutoML</code> and Amazon Personalize will analyze your data and select the
    #       optimum USER_PERSONALIZATION recipe for you.</p>
    #          <note>
    #             <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code>
    #         for solution hyperparameter optimization at this time.</p>
    #          </note>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A solution can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the solution, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>. Wait
    #       until the status shows as ACTIVE before calling <code>CreateSolutionVersion</code>.</p>
    #
    #
    #
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html">ListSolutions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolutionVersion.html">CreateSolutionVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html">DeleteSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateSolutionInput}.
    #
    # @option params [String] :name
    #   <p>The name for the solution.</p>
    #
    # @option params [Boolean] :perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe.
    #         The default is <code>false</code>.</p>
    #            <p>When performing AutoML, this parameter is always <code>true</code> and you
    #         should not set it to <code>false</code>.</p>
    #
    # @option params [Boolean] :perform_auto_ml
    #   <p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>.
    #         For this case, you must specify <code>recipeArn</code>.</p>
    #            <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects
    #         the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit
    #         <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with
    #         different values for the hyperparameters.
    #         AutoML lengthens the training process as compared to selecting a specific recipe.</p>
    #
    # @option params [String] :recipe_arn
    #   <p>The ARN of the recipe to use for model training. Only specified when
    #         <code>performAutoML</code> is false.</p>
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>
    #
    # @option params [String] :event_type
    #   <p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field),
    #         this parameter specifies which event type (for example, 'click' or 'like') is used for
    #         training the model.</p>
    #            <p>If you do not provide an <code>eventType</code>, Amazon Personalize will use all interactions for training with
    #          equal weight regardless of type.</p>
    #
    # @option params [SolutionConfig] :solution_config
    #   <p>The configuration to use with the solution. When <code>performAutoML</code> is set to
    #         true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section
    #         of the solution configuration.</p>
    #            <note>
    #               <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code>
    #           at this time.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the solution.</p>
    #
    # @return [Types::CreateSolutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution(
    #     name: 'name', # required
    #     perform_hpo: false,
    #     perform_auto_ml: false,
    #     recipe_arn: 'recipeArn',
    #     dataset_group_arn: 'datasetGroupArn', # required
    #     event_type: 'eventType',
    #     solution_config: {
    #       event_value_threshold: 'eventValueThreshold',
    #       hpo_config: {
    #         hpo_objective: {
    #           type: 'type',
    #           metric_name: 'metricName',
    #           metric_regex: 'metricRegex'
    #         },
    #         hpo_resource_config: {
    #           max_number_of_training_jobs: 'maxNumberOfTrainingJobs',
    #           max_parallel_training_jobs: 'maxParallelTrainingJobs'
    #         },
    #         algorithm_hyper_parameter_ranges: {
    #           integer_hyper_parameter_ranges: [
    #             {
    #               name: 'name',
    #               min_value: 1,
    #               max_value: 1
    #             }
    #           ],
    #           continuous_hyper_parameter_ranges: [
    #             {
    #               name: 'name',
    #               min_value: 1.0,
    #               max_value: 1.0
    #             }
    #           ],
    #           categorical_hyper_parameter_ranges: [
    #             {
    #               name: 'name',
    #               values: [
    #                 'member'
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       algorithm_hyper_parameters: {
    #         'key' => 'value'
    #       },
    #       feature_transformation_parameters: {
    #         'key' => 'value'
    #       },
    #       auto_ml_config: {
    #         metric_name: 'metricName',
    #         recipe_list: [
    #           'member'
    #         ]
    #       },
    #       optimization_objective: {
    #         item_attribute: 'itemAttribute',
    #         objective_sensitivity: 'LOW' # accepts ["LOW", "MEDIUM", "HIGH", "OFF"]
    #       }
    #     },
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSolutionOutput
    #   resp.data.solution_arn #=> String
    #
    def create_solution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSolutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSolutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSolution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSolution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSolution,
        stubs: @stubs,
        params_class: Params::CreateSolutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_solution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Trains or retrains an active solution in a Custom dataset group. A solution is created using the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #       operation and must be in the ACTIVE state before calling
    #         <code>CreateSolutionVersion</code>. A new version of the solution is created every time you
    #       call this operation.</p>
    #          <p>
    #             <b>Status</b>
    #          </p>
    #          <p>A solution version can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING</p>
    #             </li>
    #             <li>
    #                <p>CREATE IN_PROGRESS</p>
    #             </li>
    #             <li>
    #                <p>ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>CREATE STOPPING</p>
    #             </li>
    #             <li>
    #                <p>CREATE STOPPED</p>
    #             </li>
    #          </ul>
    #          <p>To get the status of the version, call <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>. Wait
    #       until the status shows as ACTIVE before calling <code>CreateCampaign</code>.</p>
    #          <p>If the status shows as CREATE FAILED, the response includes a <code>failureReason</code>
    #       key, which describes why the job failed.</p>
    #          <p class="title">
    #             <b>Related APIs</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html">ListSolutionVersions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html">DescribeSolutionVersion</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutions.html">ListSolutions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolution.html">DescribeSolution</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DeleteSolution.html">DeleteSolution</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateSolutionVersionInput}.
    #
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution containing the training configuration
    #         information.</p>
    #
    # @option params [String] :training_mode
    #   <p>The scope of training to be performed when creating the solution version. The
    #           <code>FULL</code> option trains the solution version based on the entirety of the input
    #         solution's training data, while the <code>UPDATE</code> option processes only the data that
    #         has changed in comparison to the input solution. Choose <code>UPDATE</code> when you want to
    #         incrementally update your solution version instead of creating an entirely new one.</p>
    #            <important>
    #               <p>The <code>UPDATE</code> option can only be used when you already have an active solution
    #           version created from the input solution using the <code>FULL</code> option and the input
    #           solution was trained with the
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>
    #           recipe or the
    #           <a href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html">HRNN-Coldstart</a> recipe.</p>
    #            </important>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> to apply to the solution version.</p>
    #
    # @return [Types::CreateSolutionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_solution_version(
    #     solution_arn: 'solutionArn', # required
    #     training_mode: 'FULL', # accepts ["FULL", "UPDATE"]
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSolutionVersionOutput
    #   resp.data.solution_version_arn #=> String
    #
    def create_solution_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSolutionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSolutionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSolutionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException]),
        data_parser: Parsers::CreateSolutionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSolutionVersion,
        stubs: @stubs,
        params_class: Params::CreateSolutionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_solution_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a campaign by deleting the solution deployment. The solution that
    #       the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no
    #       longer be specified in a
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #       request.
    #       For information on creating campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCampaignInput}.
    #
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to delete.</p>
    #
    # @return [Types::DeleteCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign(
    #     campaign_arn: 'campaignArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCampaignOutput
    #
    def delete_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCampaignInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCampaign,
        stubs: @stubs,
        params_class: Params::DeleteCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dataset. You can't delete a dataset if an associated
    #         <code>DatasetImportJob</code> or <code>SolutionVersion</code> is in the CREATE PENDING or IN
    #       PROGRESS state. For more information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to delete.</p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     dataset_arn: 'datasetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #
    def delete_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataset,
        stubs: @stubs,
        params_class: Params::DeleteDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dataset group. Before you delete a dataset group, you must delete the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>All associated event trackers.</p>
    #             </li>
    #             <li>
    #                <p>All associated solutions.</p>
    #             </li>
    #             <li>
    #                <p>All datasets in the dataset group.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group to delete.</p>
    #
    # @return [Types::DeleteDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_group(
    #     dataset_group_arn: 'datasetGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetGroupOutput
    #
    def delete_dataset_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDatasetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteDatasetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDatasetGroup,
        stubs: @stubs,
        params_class: Params::DeleteDatasetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the event tracker. Does not delete the event-interactions dataset from
    #         the associated dataset group. For more
    #         information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventTrackerInput}.
    #
    # @option params [String] :event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>
    #
    # @return [Types::DeleteEventTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_tracker(
    #     event_tracker_arn: 'eventTrackerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventTrackerOutput
    #
    def delete_event_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteEventTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventTracker,
        stubs: @stubs,
        params_class: Params::DeleteEventTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a filter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFilterInput}.
    #
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to delete.</p>
    #
    # @return [Types::DeleteFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter(
    #     filter_arn: 'filterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFilterOutput
    #
    def delete_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFilter,
        stubs: @stubs,
        params_class: Params::DeleteFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates and removes a recommender. A deleted recommender can no longer be specified in a <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a>
    #     request.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecommenderInput}.
    #
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to delete.</p>
    #
    # @return [Types::DeleteRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommender(
    #     recommender_arn: 'recommenderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecommenderOutput
    #
    def delete_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecommender,
        stubs: @stubs,
        params_class: Params::DeleteRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recommender
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a schema. Before deleting a schema, you must delete all
    #       datasets referencing the schema. For more information on schemas, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSchemaInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to delete.</p>
    #
    # @return [Types::DeleteSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema(
    #     schema_arn: 'schemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSchemaOutput
    #
    def delete_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSchemaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchema,
        stubs: @stubs,
        params_class: Params::DeleteSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all versions of a solution and the <code>Solution</code> object itself.
    #       Before deleting a solution, you must delete all campaigns based on
    #       the solution. To determine what campaigns are using the solution, call
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a> and supply the Amazon Resource Name (ARN) of the solution.
    #       You can't delete a solution if an associated <code>SolutionVersion</code> is in the
    #       CREATE PENDING or IN PROGRESS state.
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSolutionInput}.
    #
    # @option params [String] :solution_arn
    #   <p>The ARN of the solution to delete.</p>
    #
    # @return [Types::DeleteSolutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_solution(
    #     solution_arn: 'solutionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSolutionOutput
    #
    def delete_solution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSolutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSolutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSolution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteSolution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSolution,
        stubs: @stubs,
        params_class: Params::DeleteSolutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_solution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given algorithm.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAlgorithmInput}.
    #
    # @option params [String] :algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>
    #
    # @return [Types::DescribeAlgorithmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_algorithm(
    #     algorithm_arn: 'algorithmArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAlgorithmOutput
    #   resp.data.algorithm #=> Types::Algorithm
    #   resp.data.algorithm.name #=> String
    #   resp.data.algorithm.algorithm_arn #=> String
    #   resp.data.algorithm.algorithm_image #=> Types::AlgorithmImage
    #   resp.data.algorithm.algorithm_image.name #=> String
    #   resp.data.algorithm.algorithm_image.docker_uri #=> String
    #   resp.data.algorithm.default_hyper_parameters #=> Hash<String, String>
    #   resp.data.algorithm.default_hyper_parameters['key'] #=> String
    #   resp.data.algorithm.default_hyper_parameter_ranges #=> Types::DefaultHyperParameterRanges
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array<DefaultIntegerHyperParameterRange>
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0] #=> Types::DefaultIntegerHyperParameterRange
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.data.algorithm.default_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array<DefaultContinuousHyperParameterRange>
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0] #=> Types::DefaultContinuousHyperParameterRange
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.data.algorithm.default_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array<DefaultCategoricalHyperParameterRange>
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0] #=> Types::DefaultCategoricalHyperParameterRange
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array<String>
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.data.algorithm.default_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].is_tunable #=> Boolean
    #   resp.data.algorithm.default_resource_config #=> Hash<String, String>
    #   resp.data.algorithm.default_resource_config['key'] #=> String
    #   resp.data.algorithm.training_input_mode #=> String
    #   resp.data.algorithm.role_arn #=> String
    #   resp.data.algorithm.creation_date_time #=> Time
    #   resp.data.algorithm.last_updated_date_time #=> Time
    #
    def describe_algorithm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlgorithmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlgorithmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlgorithm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeAlgorithm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlgorithm,
        stubs: @stubs,
        params_class: Params::DescribeAlgorithmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_algorithm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties of a batch inference job including name, Amazon Resource Name (ARN),
    #       status, input and output configurations, and the ARN of the solution version used to generate
    #       the recommendations.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBatchInferenceJobInput}.
    #
    # @option params [String] :batch_inference_job_arn
    #   <p>The ARN of the batch inference job to describe.</p>
    #
    # @return [Types::DescribeBatchInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_inference_job(
    #     batch_inference_job_arn: 'batchInferenceJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBatchInferenceJobOutput
    #   resp.data.batch_inference_job #=> Types::BatchInferenceJob
    #   resp.data.batch_inference_job.job_name #=> String
    #   resp.data.batch_inference_job.batch_inference_job_arn #=> String
    #   resp.data.batch_inference_job.filter_arn #=> String
    #   resp.data.batch_inference_job.failure_reason #=> String
    #   resp.data.batch_inference_job.solution_version_arn #=> String
    #   resp.data.batch_inference_job.num_results #=> Integer
    #   resp.data.batch_inference_job.job_input #=> Types::BatchInferenceJobInput
    #   resp.data.batch_inference_job.job_input.s3_data_source #=> Types::S3DataConfig
    #   resp.data.batch_inference_job.job_input.s3_data_source.path #=> String
    #   resp.data.batch_inference_job.job_input.s3_data_source.kms_key_arn #=> String
    #   resp.data.batch_inference_job.job_output #=> Types::BatchInferenceJobOutput
    #   resp.data.batch_inference_job.job_output.s3_data_destination #=> Types::S3DataConfig
    #   resp.data.batch_inference_job.batch_inference_job_config #=> Types::BatchInferenceJobConfig
    #   resp.data.batch_inference_job.batch_inference_job_config.item_exploration_config #=> Hash<String, String>
    #   resp.data.batch_inference_job.batch_inference_job_config.item_exploration_config['key'] #=> String
    #   resp.data.batch_inference_job.role_arn #=> String
    #   resp.data.batch_inference_job.status #=> String
    #   resp.data.batch_inference_job.creation_date_time #=> Time
    #   resp.data.batch_inference_job.last_updated_date_time #=> Time
    #
    def describe_batch_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBatchInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBatchInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBatchInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeBatchInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBatchInferenceJob,
        stubs: @stubs,
        params_class: Params::DescribeBatchInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_batch_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties of a batch segment job including name, Amazon Resource Name (ARN),
    #       status, input and output configurations, and the ARN of the solution version used to generate
    #       segments.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBatchSegmentJobInput}.
    #
    # @option params [String] :batch_segment_job_arn
    #   <p>The ARN of the batch segment job to describe.</p>
    #
    # @return [Types::DescribeBatchSegmentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_batch_segment_job(
    #     batch_segment_job_arn: 'batchSegmentJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBatchSegmentJobOutput
    #   resp.data.batch_segment_job #=> Types::BatchSegmentJob
    #   resp.data.batch_segment_job.job_name #=> String
    #   resp.data.batch_segment_job.batch_segment_job_arn #=> String
    #   resp.data.batch_segment_job.filter_arn #=> String
    #   resp.data.batch_segment_job.failure_reason #=> String
    #   resp.data.batch_segment_job.solution_version_arn #=> String
    #   resp.data.batch_segment_job.num_results #=> Integer
    #   resp.data.batch_segment_job.job_input #=> Types::BatchSegmentJobInput
    #   resp.data.batch_segment_job.job_input.s3_data_source #=> Types::S3DataConfig
    #   resp.data.batch_segment_job.job_input.s3_data_source.path #=> String
    #   resp.data.batch_segment_job.job_input.s3_data_source.kms_key_arn #=> String
    #   resp.data.batch_segment_job.job_output #=> Types::BatchSegmentJobOutput
    #   resp.data.batch_segment_job.job_output.s3_data_destination #=> Types::S3DataConfig
    #   resp.data.batch_segment_job.role_arn #=> String
    #   resp.data.batch_segment_job.status #=> String
    #   resp.data.batch_segment_job.creation_date_time #=> Time
    #   resp.data.batch_segment_job.last_updated_date_time #=> Time
    #
    def describe_batch_segment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBatchSegmentJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBatchSegmentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBatchSegmentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeBatchSegmentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBatchSegmentJob,
        stubs: @stubs,
        params_class: Params::DescribeBatchSegmentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_batch_segment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given campaign, including its status.</p>
    #          <p>A campaign can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>When the <code>status</code> is <code>CREATE FAILED</code>, the response includes the
    #       <code>failureReason</code> key, which describes why.</p>
    #          <p>For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCampaignInput}.
    #
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #
    # @return [Types::DescribeCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_campaign(
    #     campaign_arn: 'campaignArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCampaignOutput
    #   resp.data.campaign #=> Types::Campaign
    #   resp.data.campaign.name #=> String
    #   resp.data.campaign.campaign_arn #=> String
    #   resp.data.campaign.solution_version_arn #=> String
    #   resp.data.campaign.min_provisioned_tps #=> Integer
    #   resp.data.campaign.campaign_config #=> Types::CampaignConfig
    #   resp.data.campaign.campaign_config.item_exploration_config #=> Hash<String, String>
    #   resp.data.campaign.campaign_config.item_exploration_config['key'] #=> String
    #   resp.data.campaign.status #=> String
    #   resp.data.campaign.failure_reason #=> String
    #   resp.data.campaign.creation_date_time #=> Time
    #   resp.data.campaign.last_updated_date_time #=> Time
    #   resp.data.campaign.latest_campaign_update #=> Types::CampaignUpdateSummary
    #   resp.data.campaign.latest_campaign_update.solution_version_arn #=> String
    #   resp.data.campaign.latest_campaign_update.min_provisioned_tps #=> Integer
    #   resp.data.campaign.latest_campaign_update.campaign_config #=> Types::CampaignConfig
    #   resp.data.campaign.latest_campaign_update.status #=> String
    #   resp.data.campaign.latest_campaign_update.failure_reason #=> String
    #   resp.data.campaign.latest_campaign_update.creation_date_time #=> Time
    #   resp.data.campaign.latest_campaign_update.last_updated_date_time #=> Time
    #
    def describe_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCampaignInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCampaign,
        stubs: @stubs,
        params_class: Params::DescribeCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given dataset. For more information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to describe.</p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     dataset_arn: 'datasetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset #=> Types::Dataset
    #   resp.data.dataset.name #=> String
    #   resp.data.dataset.dataset_arn #=> String
    #   resp.data.dataset.dataset_group_arn #=> String
    #   resp.data.dataset.dataset_type #=> String
    #   resp.data.dataset.schema_arn #=> String
    #   resp.data.dataset.status #=> String
    #   resp.data.dataset.creation_date_time #=> Time
    #   resp.data.dataset.last_updated_date_time #=> Time
    #
    def describe_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataset,
        stubs: @stubs,
        params_class: Params::DescribeDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the dataset export job created by <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html">CreateDatasetExportJob</a>,
    #       including the export job status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetExportJobInput}.
    #
    # @option params [String] :dataset_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset export job to describe.</p>
    #
    # @return [Types::DescribeDatasetExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_export_job(
    #     dataset_export_job_arn: 'datasetExportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetExportJobOutput
    #   resp.data.dataset_export_job #=> Types::DatasetExportJob
    #   resp.data.dataset_export_job.job_name #=> String
    #   resp.data.dataset_export_job.dataset_export_job_arn #=> String
    #   resp.data.dataset_export_job.dataset_arn #=> String
    #   resp.data.dataset_export_job.ingestion_mode #=> String, one of ["BULK", "PUT", "ALL"]
    #   resp.data.dataset_export_job.role_arn #=> String
    #   resp.data.dataset_export_job.status #=> String
    #   resp.data.dataset_export_job.job_output #=> Types::DatasetExportJobOutput
    #   resp.data.dataset_export_job.job_output.s3_data_destination #=> Types::S3DataConfig
    #   resp.data.dataset_export_job.job_output.s3_data_destination.path #=> String
    #   resp.data.dataset_export_job.job_output.s3_data_destination.kms_key_arn #=> String
    #   resp.data.dataset_export_job.creation_date_time #=> Time
    #   resp.data.dataset_export_job.last_updated_date_time #=> Time
    #   resp.data.dataset_export_job.failure_reason #=> String
    #
    def describe_dataset_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDatasetExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeDatasetExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDatasetExportJob,
        stubs: @stubs,
        params_class: Params::DescribeDatasetExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given dataset group. For more information on dataset groups, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to describe.</p>
    #
    # @return [Types::DescribeDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_group(
    #     dataset_group_arn: 'datasetGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetGroupOutput
    #   resp.data.dataset_group #=> Types::DatasetGroup
    #   resp.data.dataset_group.name #=> String
    #   resp.data.dataset_group.dataset_group_arn #=> String
    #   resp.data.dataset_group.status #=> String
    #   resp.data.dataset_group.role_arn #=> String
    #   resp.data.dataset_group.kms_key_arn #=> String
    #   resp.data.dataset_group.creation_date_time #=> Time
    #   resp.data.dataset_group.last_updated_date_time #=> Time
    #   resp.data.dataset_group.failure_reason #=> String
    #   resp.data.dataset_group.domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #
    def describe_dataset_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDatasetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeDatasetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDatasetGroup,
        stubs: @stubs,
        params_class: Params::DescribeDatasetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the dataset import job created by <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>,
    #       including the import job status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetImportJobInput}.
    #
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to describe.</p>
    #
    # @return [Types::DescribeDatasetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_import_job(
    #     dataset_import_job_arn: 'datasetImportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetImportJobOutput
    #   resp.data.dataset_import_job #=> Types::DatasetImportJob
    #   resp.data.dataset_import_job.job_name #=> String
    #   resp.data.dataset_import_job.dataset_import_job_arn #=> String
    #   resp.data.dataset_import_job.dataset_arn #=> String
    #   resp.data.dataset_import_job.data_source #=> Types::DataSource
    #   resp.data.dataset_import_job.data_source.data_location #=> String
    #   resp.data.dataset_import_job.role_arn #=> String
    #   resp.data.dataset_import_job.status #=> String
    #   resp.data.dataset_import_job.creation_date_time #=> Time
    #   resp.data.dataset_import_job.last_updated_date_time #=> Time
    #   resp.data.dataset_import_job.failure_reason #=> String
    #
    def describe_dataset_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDatasetImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeDatasetImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDatasetImportJob,
        stubs: @stubs,
        params_class: Params::DescribeDatasetImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an event tracker. The response includes the <code>trackingId</code> and
    #       <code>status</code> of the event tracker.
    #       For more information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventTrackerInput}.
    #
    # @option params [String] :event_tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>
    #
    # @return [Types::DescribeEventTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_tracker(
    #     event_tracker_arn: 'eventTrackerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventTrackerOutput
    #   resp.data.event_tracker #=> Types::EventTracker
    #   resp.data.event_tracker.name #=> String
    #   resp.data.event_tracker.event_tracker_arn #=> String
    #   resp.data.event_tracker.account_id #=> String
    #   resp.data.event_tracker.tracking_id #=> String
    #   resp.data.event_tracker.dataset_group_arn #=> String
    #   resp.data.event_tracker.status #=> String
    #   resp.data.event_tracker.creation_date_time #=> Time
    #   resp.data.event_tracker.last_updated_date_time #=> Time
    #
    def describe_event_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeEventTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventTracker,
        stubs: @stubs,
        params_class: Params::DescribeEventTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given feature transformation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFeatureTransformationInput}.
    #
    # @option params [String] :feature_transformation_arn
    #   <p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>
    #
    # @return [Types::DescribeFeatureTransformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_feature_transformation(
    #     feature_transformation_arn: 'featureTransformationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFeatureTransformationOutput
    #   resp.data.feature_transformation #=> Types::FeatureTransformation
    #   resp.data.feature_transformation.name #=> String
    #   resp.data.feature_transformation.feature_transformation_arn #=> String
    #   resp.data.feature_transformation.default_parameters #=> Hash<String, String>
    #   resp.data.feature_transformation.default_parameters['key'] #=> String
    #   resp.data.feature_transformation.creation_date_time #=> Time
    #   resp.data.feature_transformation.last_updated_date_time #=> Time
    #   resp.data.feature_transformation.status #=> String
    #
    def describe_feature_transformation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFeatureTransformationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFeatureTransformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFeatureTransformation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeFeatureTransformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFeatureTransformation,
        stubs: @stubs,
        params_class: Params::DescribeFeatureTransformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_feature_transformation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a filter's properties.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFilterInput}.
    #
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to describe.</p>
    #
    # @return [Types::DescribeFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_filter(
    #     filter_arn: 'filterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFilterOutput
    #   resp.data.filter #=> Types::Filter
    #   resp.data.filter.name #=> String
    #   resp.data.filter.filter_arn #=> String
    #   resp.data.filter.creation_date_time #=> Time
    #   resp.data.filter.last_updated_date_time #=> Time
    #   resp.data.filter.dataset_group_arn #=> String
    #   resp.data.filter.failure_reason #=> String
    #   resp.data.filter.filter_expression #=> String
    #   resp.data.filter.status #=> String
    #
    def describe_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFilter,
        stubs: @stubs,
        params_class: Params::DescribeFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a recipe.</p>
    #          <p>A recipe contains three items:</p>
    #          <ul>
    #             <li>
    #                <p>An algorithm that trains a model.</p>
    #             </li>
    #             <li>
    #                <p>Hyperparameters that govern the training.</p>
    #             </li>
    #             <li>
    #                <p>Feature transformation information for modifying the input data before training.</p>
    #             </li>
    #          </ul>
    #          <p>Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a
    #       solution with the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a> API.
    #       <code>CreateSolution</code> trains a model by using the algorithm
    #       in the specified recipe and a training dataset. The solution, when deployed as a campaign,
    #       can provide recommendations using the
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html">GetRecommendations</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecipeInput}.
    #
    # @option params [String] :recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the recipe to describe.</p>
    #
    # @return [Types::DescribeRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recipe(
    #     recipe_arn: 'recipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecipeOutput
    #   resp.data.recipe #=> Types::Recipe
    #   resp.data.recipe.name #=> String
    #   resp.data.recipe.recipe_arn #=> String
    #   resp.data.recipe.algorithm_arn #=> String
    #   resp.data.recipe.feature_transformation_arn #=> String
    #   resp.data.recipe.status #=> String
    #   resp.data.recipe.description #=> String
    #   resp.data.recipe.creation_date_time #=> Time
    #   resp.data.recipe.recipe_type #=> String
    #   resp.data.recipe.last_updated_date_time #=> Time
    #
    def describe_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecipe
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecipe,
        stubs: @stubs,
        params_class: Params::DescribeRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given recommender, including its status.</p>
    #          <p>A recommender can be in one of the following states:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
    #             </li>
    #             <li>
    #                <p>STOP PENDING > STOP IN_PROGRESS > INACTIVE > START PENDING > START IN_PROGRESS > ACTIVE</p>
    #             </li>
    #             <li>
    #                <p>DELETE PENDING > DELETE IN_PROGRESS</p>
    #             </li>
    #          </ul>
    #          <p>When the <code>status</code> is <code>CREATE FAILED</code>, the response includes the
    #       <code>failureReason</code> key, which describes why.</p>
    #          <p>The <code>modelMetrics</code> key is null when
    #       the recommender is being created or deleted.</p>
    #          <p>For more information on recommenders, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html">CreateRecommender</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecommenderInput}.
    #
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to describe.</p>
    #
    # @return [Types::DescribeRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommender(
    #     recommender_arn: 'recommenderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecommenderOutput
    #   resp.data.recommender #=> Types::Recommender
    #   resp.data.recommender.recommender_arn #=> String
    #   resp.data.recommender.dataset_group_arn #=> String
    #   resp.data.recommender.name #=> String
    #   resp.data.recommender.recipe_arn #=> String
    #   resp.data.recommender.recommender_config #=> Types::RecommenderConfig
    #   resp.data.recommender.recommender_config.item_exploration_config #=> Hash<String, String>
    #   resp.data.recommender.recommender_config.item_exploration_config['key'] #=> String
    #   resp.data.recommender.recommender_config.min_recommendation_requests_per_second #=> Integer
    #   resp.data.recommender.creation_date_time #=> Time
    #   resp.data.recommender.last_updated_date_time #=> Time
    #   resp.data.recommender.status #=> String
    #   resp.data.recommender.failure_reason #=> String
    #   resp.data.recommender.latest_recommender_update #=> Types::RecommenderUpdateSummary
    #   resp.data.recommender.latest_recommender_update.recommender_config #=> Types::RecommenderConfig
    #   resp.data.recommender.latest_recommender_update.creation_date_time #=> Time
    #   resp.data.recommender.latest_recommender_update.last_updated_date_time #=> Time
    #   resp.data.recommender.latest_recommender_update.status #=> String
    #   resp.data.recommender.latest_recommender_update.failure_reason #=> String
    #   resp.data.recommender.model_metrics #=> Hash<String, Float>
    #   resp.data.recommender.model_metrics['key'] #=> Float
    #
    def describe_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecommender,
        stubs: @stubs,
        params_class: Params::DescribeRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recommender
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a schema. For more information on schemas, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSchemaInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>
    #
    # @return [Types::DescribeSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schema(
    #     schema_arn: 'schemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSchemaOutput
    #   resp.data.schema #=> Types::DatasetSchema
    #   resp.data.schema.name #=> String
    #   resp.data.schema.schema_arn #=> String
    #   resp.data.schema.schema #=> String
    #   resp.data.schema.creation_date_time #=> Time
    #   resp.data.schema.last_updated_date_time #=> Time
    #   resp.data.schema.domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #
    def describe_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSchemaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSchema,
        stubs: @stubs,
        params_class: Params::DescribeSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a solution.
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSolutionInput}.
    #
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to describe.</p>
    #
    # @return [Types::DescribeSolutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution(
    #     solution_arn: 'solutionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSolutionOutput
    #   resp.data.solution #=> Types::Solution
    #   resp.data.solution.name #=> String
    #   resp.data.solution.solution_arn #=> String
    #   resp.data.solution.perform_hpo #=> Boolean
    #   resp.data.solution.perform_auto_ml #=> Boolean
    #   resp.data.solution.recipe_arn #=> String
    #   resp.data.solution.dataset_group_arn #=> String
    #   resp.data.solution.event_type #=> String
    #   resp.data.solution.solution_config #=> Types::SolutionConfig
    #   resp.data.solution.solution_config.event_value_threshold #=> String
    #   resp.data.solution.solution_config.hpo_config #=> Types::HPOConfig
    #   resp.data.solution.solution_config.hpo_config.hpo_objective #=> Types::HPOObjective
    #   resp.data.solution.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.data.solution.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.data.solution.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.data.solution.solution_config.hpo_config.hpo_resource_config #=> Types::HPOResourceConfig
    #   resp.data.solution.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.data.solution.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges #=> Types::HyperParameterRanges
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array<IntegerHyperParameterRange>
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0] #=> Types::IntegerHyperParameterRange
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array<ContinuousHyperParameterRange>
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0] #=> Types::ContinuousHyperParameterRange
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array<CategoricalHyperParameterRange>
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0] #=> Types::CategoricalHyperParameterRange
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array<String>
    #   resp.data.solution.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.data.solution.solution_config.algorithm_hyper_parameters #=> Hash<String, String>
    #   resp.data.solution.solution_config.algorithm_hyper_parameters['key'] #=> String
    #   resp.data.solution.solution_config.feature_transformation_parameters #=> Hash<String, String>
    #   resp.data.solution.solution_config.feature_transformation_parameters['key'] #=> String
    #   resp.data.solution.solution_config.auto_ml_config #=> Types::AutoMLConfig
    #   resp.data.solution.solution_config.auto_ml_config.metric_name #=> String
    #   resp.data.solution.solution_config.auto_ml_config.recipe_list #=> Array<String>
    #   resp.data.solution.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.data.solution.solution_config.optimization_objective #=> Types::OptimizationObjective
    #   resp.data.solution.solution_config.optimization_objective.item_attribute #=> String
    #   resp.data.solution.solution_config.optimization_objective.objective_sensitivity #=> String, one of ["LOW", "MEDIUM", "HIGH", "OFF"]
    #   resp.data.solution.auto_ml_result #=> Types::AutoMLResult
    #   resp.data.solution.auto_ml_result.best_recipe_arn #=> String
    #   resp.data.solution.status #=> String
    #   resp.data.solution.creation_date_time #=> Time
    #   resp.data.solution.last_updated_date_time #=> Time
    #   resp.data.solution.latest_solution_version #=> Types::SolutionVersionSummary
    #   resp.data.solution.latest_solution_version.solution_version_arn #=> String
    #   resp.data.solution.latest_solution_version.status #=> String
    #   resp.data.solution.latest_solution_version.creation_date_time #=> Time
    #   resp.data.solution.latest_solution_version.last_updated_date_time #=> Time
    #   resp.data.solution.latest_solution_version.failure_reason #=> String
    #
    def describe_solution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSolutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSolutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSolution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeSolution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSolution,
        stubs: @stubs,
        params_class: Params::DescribeSolutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_solution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a specific version of a solution. For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSolutionVersionInput}.
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version.</p>
    #
    # @return [Types::DescribeSolutionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_solution_version(
    #     solution_version_arn: 'solutionVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSolutionVersionOutput
    #   resp.data.solution_version #=> Types::SolutionVersion
    #   resp.data.solution_version.solution_version_arn #=> String
    #   resp.data.solution_version.solution_arn #=> String
    #   resp.data.solution_version.perform_hpo #=> Boolean
    #   resp.data.solution_version.perform_auto_ml #=> Boolean
    #   resp.data.solution_version.recipe_arn #=> String
    #   resp.data.solution_version.event_type #=> String
    #   resp.data.solution_version.dataset_group_arn #=> String
    #   resp.data.solution_version.solution_config #=> Types::SolutionConfig
    #   resp.data.solution_version.solution_config.event_value_threshold #=> String
    #   resp.data.solution_version.solution_config.hpo_config #=> Types::HPOConfig
    #   resp.data.solution_version.solution_config.hpo_config.hpo_objective #=> Types::HPOObjective
    #   resp.data.solution_version.solution_config.hpo_config.hpo_objective.type #=> String
    #   resp.data.solution_version.solution_config.hpo_config.hpo_objective.metric_name #=> String
    #   resp.data.solution_version.solution_config.hpo_config.hpo_objective.metric_regex #=> String
    #   resp.data.solution_version.solution_config.hpo_config.hpo_resource_config #=> Types::HPOResourceConfig
    #   resp.data.solution_version.solution_config.hpo_config.hpo_resource_config.max_number_of_training_jobs #=> String
    #   resp.data.solution_version.solution_config.hpo_config.hpo_resource_config.max_parallel_training_jobs #=> String
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges #=> Types::HyperParameterRanges
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges #=> Array<IntegerHyperParameterRange>
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0] #=> Types::IntegerHyperParameterRange
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].min_value #=> Integer
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.integer_hyper_parameter_ranges[0].max_value #=> Integer
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges #=> Array<ContinuousHyperParameterRange>
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0] #=> Types::ContinuousHyperParameterRange
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].min_value #=> Float
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.continuous_hyper_parameter_ranges[0].max_value #=> Float
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges #=> Array<CategoricalHyperParameterRange>
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0] #=> Types::CategoricalHyperParameterRange
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].name #=> String
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values #=> Array<String>
    #   resp.data.solution_version.solution_config.hpo_config.algorithm_hyper_parameter_ranges.categorical_hyper_parameter_ranges[0].values[0] #=> String
    #   resp.data.solution_version.solution_config.algorithm_hyper_parameters #=> Hash<String, String>
    #   resp.data.solution_version.solution_config.algorithm_hyper_parameters['key'] #=> String
    #   resp.data.solution_version.solution_config.feature_transformation_parameters #=> Hash<String, String>
    #   resp.data.solution_version.solution_config.feature_transformation_parameters['key'] #=> String
    #   resp.data.solution_version.solution_config.auto_ml_config #=> Types::AutoMLConfig
    #   resp.data.solution_version.solution_config.auto_ml_config.metric_name #=> String
    #   resp.data.solution_version.solution_config.auto_ml_config.recipe_list #=> Array<String>
    #   resp.data.solution_version.solution_config.auto_ml_config.recipe_list[0] #=> String
    #   resp.data.solution_version.solution_config.optimization_objective #=> Types::OptimizationObjective
    #   resp.data.solution_version.solution_config.optimization_objective.item_attribute #=> String
    #   resp.data.solution_version.solution_config.optimization_objective.objective_sensitivity #=> String, one of ["LOW", "MEDIUM", "HIGH", "OFF"]
    #   resp.data.solution_version.training_hours #=> Float
    #   resp.data.solution_version.training_mode #=> String, one of ["FULL", "UPDATE"]
    #   resp.data.solution_version.tuned_hpo_params #=> Types::TunedHPOParams
    #   resp.data.solution_version.tuned_hpo_params.algorithm_hyper_parameters #=> Hash<String, String>
    #   resp.data.solution_version.status #=> String
    #   resp.data.solution_version.failure_reason #=> String
    #   resp.data.solution_version.creation_date_time #=> Time
    #   resp.data.solution_version.last_updated_date_time #=> Time
    #
    def describe_solution_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSolutionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSolutionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSolutionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeSolutionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSolutionVersion,
        stubs: @stubs,
        params_class: Params::DescribeSolutionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_solution_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the metrics for the specified solution version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSolutionMetricsInput}.
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>
    #
    # @return [Types::GetSolutionMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_solution_metrics(
    #     solution_version_arn: 'solutionVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSolutionMetricsOutput
    #   resp.data.solution_version_arn #=> String
    #   resp.data.metrics #=> Hash<String, Float>
    #   resp.data.metrics['key'] #=> Float
    #
    def get_solution_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSolutionMetricsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSolutionMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSolutionMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::GetSolutionMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSolutionMetrics,
        stubs: @stubs,
        params_class: Params::GetSolutionMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_solution_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the batch inference jobs that have been performed off of a solution
    #       version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBatchInferenceJobsInput}.
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs
    #         were created.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch inference job results to return in each page. The default
    #         value is 100.</p>
    #
    # @return [Types::ListBatchInferenceJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_inference_jobs(
    #     solution_version_arn: 'solutionVersionArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBatchInferenceJobsOutput
    #   resp.data.batch_inference_jobs #=> Array<BatchInferenceJobSummary>
    #   resp.data.batch_inference_jobs[0] #=> Types::BatchInferenceJobSummary
    #   resp.data.batch_inference_jobs[0].batch_inference_job_arn #=> String
    #   resp.data.batch_inference_jobs[0].job_name #=> String
    #   resp.data.batch_inference_jobs[0].status #=> String
    #   resp.data.batch_inference_jobs[0].creation_date_time #=> Time
    #   resp.data.batch_inference_jobs[0].last_updated_date_time #=> Time
    #   resp.data.batch_inference_jobs[0].failure_reason #=> String
    #   resp.data.batch_inference_jobs[0].solution_version_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_batch_inference_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBatchInferenceJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBatchInferenceJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBatchInferenceJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListBatchInferenceJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBatchInferenceJobs,
        stubs: @stubs,
        params_class: Params::ListBatchInferenceJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_batch_inference_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the batch segment jobs that have been performed off of a solution
    #       version that you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBatchSegmentJobsInput}.
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version that the batch segment jobs used to generate batch segments.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch segment job results to return in each page. The default
    #         value is 100.</p>
    #
    # @return [Types::ListBatchSegmentJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_segment_jobs(
    #     solution_version_arn: 'solutionVersionArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBatchSegmentJobsOutput
    #   resp.data.batch_segment_jobs #=> Array<BatchSegmentJobSummary>
    #   resp.data.batch_segment_jobs[0] #=> Types::BatchSegmentJobSummary
    #   resp.data.batch_segment_jobs[0].batch_segment_job_arn #=> String
    #   resp.data.batch_segment_jobs[0].job_name #=> String
    #   resp.data.batch_segment_jobs[0].status #=> String
    #   resp.data.batch_segment_jobs[0].creation_date_time #=> Time
    #   resp.data.batch_segment_jobs[0].last_updated_date_time #=> Time
    #   resp.data.batch_segment_jobs[0].failure_reason #=> String
    #   resp.data.batch_segment_jobs[0].solution_version_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_batch_segment_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBatchSegmentJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBatchSegmentJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBatchSegmentJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListBatchSegmentJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBatchSegmentJobs,
        stubs: @stubs,
        params_class: Params::ListBatchSegmentJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_batch_segment_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of campaigns that use the given solution.
    #       When a solution is not specified, all the campaigns associated with the account are listed.
    #       The response provides the properties for each campaign, including the Amazon Resource Name (ARN).
    #       For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCampaignsInput}.
    #
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When
    #           a solution is not specified, all the campaigns associated with the account are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_ListCampaigns.html">ListCampaigns</a> for getting
    #         the next set of campaigns (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of campaigns to return.</p>
    #
    # @return [Types::ListCampaignsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_campaigns(
    #     solution_arn: 'solutionArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCampaignsOutput
    #   resp.data.campaigns #=> Array<CampaignSummary>
    #   resp.data.campaigns[0] #=> Types::CampaignSummary
    #   resp.data.campaigns[0].name #=> String
    #   resp.data.campaigns[0].campaign_arn #=> String
    #   resp.data.campaigns[0].status #=> String
    #   resp.data.campaigns[0].creation_date_time #=> Time
    #   resp.data.campaigns[0].last_updated_date_time #=> Time
    #   resp.data.campaigns[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_campaigns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCampaignsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCampaignsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCampaigns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListCampaigns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCampaigns,
        stubs: @stubs,
        params_class: Params::ListCampaignsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_campaigns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of dataset export jobs that use the given dataset. When a dataset is not
    #       specified, all the dataset export jobs associated with the account are listed. The response
    #       provides the properties for each dataset export job, including the Amazon Resource Name (ARN).
    #       For more information on dataset export jobs, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetExportJob.html">CreateDatasetExportJob</a>. For
    #       more information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetExportJobsInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset export jobs for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListDatasetExportJobs</code> for getting
    #         the next set of dataset export jobs (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset export jobs to return.</p>
    #
    # @return [Types::ListDatasetExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_export_jobs(
    #     dataset_arn: 'datasetArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetExportJobsOutput
    #   resp.data.dataset_export_jobs #=> Array<DatasetExportJobSummary>
    #   resp.data.dataset_export_jobs[0] #=> Types::DatasetExportJobSummary
    #   resp.data.dataset_export_jobs[0].dataset_export_job_arn #=> String
    #   resp.data.dataset_export_jobs[0].job_name #=> String
    #   resp.data.dataset_export_jobs[0].status #=> String
    #   resp.data.dataset_export_jobs[0].creation_date_time #=> Time
    #   resp.data.dataset_export_jobs[0].last_updated_date_time #=> Time
    #   resp.data.dataset_export_jobs[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_dataset_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDatasetExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetExportJobs,
        stubs: @stubs,
        params_class: Params::ListDatasetExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of dataset groups. The response provides the properties for each dataset
    #       group, including the Amazon Resource Name (ARN). For more information on dataset groups, see
    #       <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListDatasetGroups</code> for getting the
    #         next set of dataset groups (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset groups to return.</p>
    #
    # @return [Types::ListDatasetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_groups(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetGroupsOutput
    #   resp.data.dataset_groups #=> Array<DatasetGroupSummary>
    #   resp.data.dataset_groups[0] #=> Types::DatasetGroupSummary
    #   resp.data.dataset_groups[0].name #=> String
    #   resp.data.dataset_groups[0].dataset_group_arn #=> String
    #   resp.data.dataset_groups[0].status #=> String
    #   resp.data.dataset_groups[0].creation_date_time #=> Time
    #   resp.data.dataset_groups[0].last_updated_date_time #=> Time
    #   resp.data.dataset_groups[0].failure_reason #=> String
    #   resp.data.dataset_groups[0].domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   resp.data.next_token #=> String
    #
    def list_dataset_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDatasetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetGroups,
        stubs: @stubs,
        params_class: Params::ListDatasetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of dataset import jobs that use the given dataset. When a dataset is not
    #       specified, all the dataset import jobs associated with the account are listed. The response
    #       provides the properties for each dataset import job, including the Amazon Resource Name (ARN).
    #       For more information on dataset import jobs, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>. For
    #       more information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetImportJobsInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset to list the dataset import jobs for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting
    #         the next set of dataset import jobs (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of dataset import jobs to return.</p>
    #
    # @return [Types::ListDatasetImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_import_jobs(
    #     dataset_arn: 'datasetArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetImportJobsOutput
    #   resp.data.dataset_import_jobs #=> Array<DatasetImportJobSummary>
    #   resp.data.dataset_import_jobs[0] #=> Types::DatasetImportJobSummary
    #   resp.data.dataset_import_jobs[0].dataset_import_job_arn #=> String
    #   resp.data.dataset_import_jobs[0].job_name #=> String
    #   resp.data.dataset_import_jobs[0].status #=> String
    #   resp.data.dataset_import_jobs[0].creation_date_time #=> Time
    #   resp.data.dataset_import_jobs[0].last_updated_date_time #=> Time
    #   resp.data.dataset_import_jobs[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_dataset_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetImportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetImportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDatasetImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetImportJobs,
        stubs: @stubs,
        params_class: Params::ListDatasetImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of datasets contained in the given dataset group. The response provides
    #       the properties for each dataset, including the Amazon Resource Name (ARN). For more
    #       information on datasets, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateDataset.html">CreateDataset</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group that contains the datasets to
    #         list.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting
    #         the next set of dataset import jobs (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of datasets to return.</p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     dataset_group_arn: 'datasetGroupArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.datasets #=> Array<DatasetSummary>
    #   resp.data.datasets[0] #=> Types::DatasetSummary
    #   resp.data.datasets[0].name #=> String
    #   resp.data.datasets[0].dataset_arn #=> String
    #   resp.data.datasets[0].dataset_type #=> String
    #   resp.data.datasets[0].status #=> String
    #   resp.data.datasets[0].creation_date_time #=> Time
    #   resp.data.datasets[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_datasets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDatasets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasets,
        stubs: @stubs,
        params_class: Params::ListDatasetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_datasets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of event trackers associated with the account.
    #       The response provides the properties for each event tracker, including the Amazon Resource
    #       Name (ARN) and tracking ID. For more
    #       information on event trackers, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html">CreateEventTracker</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventTrackersInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of a dataset group used to filter the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListEventTrackers</code> for getting
    #         the next set of event trackers (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of event trackers to return.</p>
    #
    # @return [Types::ListEventTrackersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_trackers(
    #     dataset_group_arn: 'datasetGroupArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventTrackersOutput
    #   resp.data.event_trackers #=> Array<EventTrackerSummary>
    #   resp.data.event_trackers[0] #=> Types::EventTrackerSummary
    #   resp.data.event_trackers[0].name #=> String
    #   resp.data.event_trackers[0].event_tracker_arn #=> String
    #   resp.data.event_trackers[0].status #=> String
    #   resp.data.event_trackers[0].creation_date_time #=> Time
    #   resp.data.event_trackers[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_event_trackers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventTrackersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventTrackersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventTrackers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListEventTrackers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventTrackers,
        stubs: @stubs,
        params_class: Params::ListEventTrackersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_trackers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all filters that belong to a given dataset group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFiltersInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group that contains the filters.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListFilters</code> for getting the
    #               next set of filters (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of filters to return.</p>
    #
    # @return [Types::ListFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters(
    #     dataset_group_arn: 'datasetGroupArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFiltersOutput
    #   resp.data.filters #=> Array<FilterSummary>
    #   resp.data.filters[0] #=> Types::FilterSummary
    #   resp.data.filters[0].name #=> String
    #   resp.data.filters[0].filter_arn #=> String
    #   resp.data.filters[0].creation_date_time #=> Time
    #   resp.data.filters[0].last_updated_date_time #=> Time
    #   resp.data.filters[0].dataset_group_arn #=> String
    #   resp.data.filters[0].failure_reason #=> String
    #   resp.data.filters[0].status #=> String
    #   resp.data.next_token #=> String
    #
    def list_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFilters,
        stubs: @stubs,
        params_class: Params::ListFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of available recipes. The response provides the properties
    #        for each recipe, including the recipe's Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecipesInput}.
    #
    # @option params [String] :recipe_provider
    #   <p>The default is <code>SERVICE</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListRecipes</code> for getting
    #         the next set of recipes (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of recipes to return.</p>
    #
    # @option params [String] :domain
    #   <p>
    #         Filters returned recipes by domain for a Domain dataset group. Only recipes (Domain dataset group use cases)
    #         for this domain are included in the response. If you don't specify a domain, all recipes are returned.
    #       </p>
    #
    # @return [Types::ListRecipesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipes(
    #     recipe_provider: 'SERVICE', # accepts ["SERVICE"]
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     domain: 'ECOMMERCE' # accepts ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecipesOutput
    #   resp.data.recipes #=> Array<RecipeSummary>
    #   resp.data.recipes[0] #=> Types::RecipeSummary
    #   resp.data.recipes[0].name #=> String
    #   resp.data.recipes[0].recipe_arn #=> String
    #   resp.data.recipes[0].status #=> String
    #   resp.data.recipes[0].creation_date_time #=> Time
    #   resp.data.recipes[0].last_updated_date_time #=> Time
    #   resp.data.recipes[0].domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   resp.data.next_token #=> String
    #
    def list_recipes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecipesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecipesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecipes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListRecipes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecipes,
        stubs: @stubs,
        params_class: Params::ListRecipesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recipes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of recommenders in a given Domain dataset group.
    #       When a Domain dataset group is not specified, all the recommenders associated with the account are listed.
    #       The response provides the properties for each recommender, including the Amazon Resource Name (ARN).
    #       For more information on recommenders, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateRecommender.html">CreateRecommender</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendersInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Domain dataset group to list the recommenders for. When
    #         a Domain dataset group is not specified, all the recommenders associated with the account are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListRecommenders</code> for getting
    #         the next set of recommenders (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommenders to return.</p>
    #
    # @return [Types::ListRecommendersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommenders(
    #     dataset_group_arn: 'datasetGroupArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendersOutput
    #   resp.data.recommenders #=> Array<RecommenderSummary>
    #   resp.data.recommenders[0] #=> Types::RecommenderSummary
    #   resp.data.recommenders[0].name #=> String
    #   resp.data.recommenders[0].recommender_arn #=> String
    #   resp.data.recommenders[0].dataset_group_arn #=> String
    #   resp.data.recommenders[0].recipe_arn #=> String
    #   resp.data.recommenders[0].recommender_config #=> Types::RecommenderConfig
    #   resp.data.recommenders[0].recommender_config.item_exploration_config #=> Hash<String, String>
    #   resp.data.recommenders[0].recommender_config.item_exploration_config['key'] #=> String
    #   resp.data.recommenders[0].recommender_config.min_recommendation_requests_per_second #=> Integer
    #   resp.data.recommenders[0].status #=> String
    #   resp.data.recommenders[0].creation_date_time #=> Time
    #   resp.data.recommenders[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_recommenders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommenders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListRecommenders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommenders,
        stubs: @stubs,
        params_class: Params::ListRecommendersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommenders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of schemas associated with the account. The response provides the
    #       properties for each schema, including the Amazon Resource Name (ARN).
    #       For more information on schemas, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSchema.html">CreateSchema</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchemasInput}.
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSchemas</code> for getting
    #         the next set of schemas (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of schemas to return.</p>
    #
    # @return [Types::ListSchemasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchemasOutput
    #   resp.data.schemas #=> Array<DatasetSchemaSummary>
    #   resp.data.schemas[0] #=> Types::DatasetSchemaSummary
    #   resp.data.schemas[0].name #=> String
    #   resp.data.schemas[0].schema_arn #=> String
    #   resp.data.schemas[0].creation_date_time #=> Time
    #   resp.data.schemas[0].last_updated_date_time #=> Time
    #   resp.data.schemas[0].domain #=> String, one of ["ECOMMERCE", "VIDEO_ON_DEMAND"]
    #   resp.data.next_token #=> String
    #
    def list_schemas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchemasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchemasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchemas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListSchemas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchemas,
        stubs: @stubs,
        params_class: Params::ListSchemasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schemas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of solution versions for the given solution. When a solution is not
    #       specified, all the solution versions associated with the account are listed. The response
    #       provides the properties for each solution version, including the Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::ListSolutionVersionsInput}.
    #
    # @option params [String] :solution_arn
    #   <p>The Amazon Resource Name (ARN) of the solution.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting
    #         the next set of solution versions (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of solution versions to return.</p>
    #
    # @return [Types::ListSolutionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solution_versions(
    #     solution_arn: 'solutionArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSolutionVersionsOutput
    #   resp.data.solution_versions #=> Array<SolutionVersionSummary>
    #   resp.data.solution_versions[0] #=> Types::SolutionVersionSummary
    #   resp.data.solution_versions[0].solution_version_arn #=> String
    #   resp.data.solution_versions[0].status #=> String
    #   resp.data.solution_versions[0].creation_date_time #=> Time
    #   resp.data.solution_versions[0].last_updated_date_time #=> Time
    #   resp.data.solution_versions[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_solution_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSolutionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSolutionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSolutionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListSolutionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSolutionVersions,
        stubs: @stubs,
        params_class: Params::ListSolutionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_solution_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of solutions that use the given dataset group.
    #       When a dataset group is not specified, all the solutions associated with the account are listed.
    #       The response provides the properties for each solution, including the Amazon Resource Name (ARN).
    #       For more information on solutions, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateSolution.html">CreateSolution</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSolutionsInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #
    # @option params [String] :next_token
    #   <p>A token returned from the previous call to <code>ListSolutions</code> for getting
    #         the next set of solutions (if they exist).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of solutions to return.</p>
    #
    # @return [Types::ListSolutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_solutions(
    #     dataset_group_arn: 'datasetGroupArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSolutionsOutput
    #   resp.data.solutions #=> Array<SolutionSummary>
    #   resp.data.solutions[0] #=> Types::SolutionSummary
    #   resp.data.solutions[0].name #=> String
    #   resp.data.solutions[0].solution_arn #=> String
    #   resp.data.solutions[0].status #=> String
    #   resp.data.solutions[0].creation_date_time #=> Time
    #   resp.data.solutions[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_solutions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSolutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSolutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSolutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListSolutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSolutions,
        stubs: @stubs,
        params_class: Params::ListSolutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_solutions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> attached to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].tag_key #=> String
    #   resp.data.tags[0].tag_value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
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

    # <p>Starts a recommender that is INACTIVE. Starting a recommender does not
    #       create any new models, but resumes billing and automatic retraining for the recommender.</p>
    #
    # @param [Hash] params
    #   See {Types::StartRecommenderInput}.
    #
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to start.</p>
    #
    # @return [Types::StartRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recommender(
    #     recommender_arn: 'recommenderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRecommenderOutput
    #   resp.data.recommender_arn #=> String
    #
    def start_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::StartRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRecommender,
        stubs: @stubs,
        params_class: Params::StartRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_recommender
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a recommender that is ACTIVE. Stopping a recommender halts billing and automatic retraining for the recommender.</p>
    #
    # @param [Hash] params
    #   See {Types::StopRecommenderInput}.
    #
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to stop.</p>
    #
    # @return [Types::StopRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_recommender(
    #     recommender_arn: 'recommenderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopRecommenderOutput
    #   resp.data.recommender_arn #=> String
    #
    def stop_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::StopRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopRecommender,
        stubs: @stubs,
        params_class: Params::StopRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_recommender
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops creating a solution version that is in a state of CREATE_PENDING or CREATE IN_PROGRESS.
    #       </p>
    #          <p>Depending on the current state of the solution version, the solution version state changes as follows:</p>
    #          <ul>
    #             <li>
    #                <p>CREATE_PENDING > CREATE_STOPPED</p>
    #                <p>or</p>
    #             </li>
    #             <li>
    #                <p>CREATE_IN_PROGRESS > CREATE_STOPPING > CREATE_STOPPED</p>
    #             </li>
    #          </ul>
    #          <p>You are billed for all of the training completed up
    #       until you stop the solution version creation. You cannot resume creating a solution version once it has been stopped.</p>
    #
    # @param [Hash] params
    #   See {Types::StopSolutionVersionCreationInput}.
    #
    # @option params [String] :solution_version_arn
    #   <p>The Amazon Resource Name (ARN) of the solution version you want to stop creating.</p>
    #
    # @return [Types::StopSolutionVersionCreationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_solution_version_creation(
    #     solution_version_arn: 'solutionVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopSolutionVersionCreationOutput
    #
    def stop_solution_version_creation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopSolutionVersionCreationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopSolutionVersionCreationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopSolutionVersionCreation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::StopSolutionVersionCreation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopSolutionVersionCreation,
        stubs: @stubs,
        params_class: Params::StopSolutionVersionCreationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_solution_version_creation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a list of tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to apply to the resource. For more information see <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">Tagging Personalize resources</a>.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         tag_key: 'tagKey', # required
    #         tag_value: 'tagValue' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::TooManyTagsException]),
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

    # <p>Remove <a href="https://docs.aws.amazon.com/personalize/latest/dev/tagging-resources.html">tags</a> that are attached to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys to remove from the resource's tags.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException, Errors::TooManyTagKeysException]),
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

    # <p>Updates a campaign by either deploying a new solution or changing the value of the
    #       campaign's <code>minProvisionedTPS</code> parameter.</p>
    #          <p>To update a campaign, the campaign status must be ACTIVE or CREATE FAILED.
    #       Check the campaign status using the <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeCampaign.html">DescribeCampaign</a> operation.</p>
    #
    #          <note>
    #             <p>You can still get recommendations from a campaign while an update is in progress.
    #       The campaign will use the previous solution version and campaign configuration to generate recommendations until the latest campaign update status is <code>Active</code>.
    #     </p>
    #          </note>
    #
    #          <p>For more information on campaigns, see <a href="https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html">CreateCampaign</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCampaignInput}.
    #
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #
    # @option params [String] :solution_version_arn
    #   <p>The ARN of a new solution version to deploy.</p>
    #
    # @option params [Integer] :min_provisioned_tps
    #   <p>Specifies the requested minimum provisioned transactions (recommendations) per second that
    #         Amazon Personalize will support.</p>
    #
    # @option params [CampaignConfig] :campaign_config
    #   <p>The configuration details of a campaign.</p>
    #
    # @return [Types::UpdateCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign(
    #     campaign_arn: 'campaignArn', # required
    #     solution_version_arn: 'solutionVersionArn',
    #     min_provisioned_tps: 1,
    #     campaign_config: {
    #       item_exploration_config: {
    #         'key' => 'value'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCampaignOutput
    #   resp.data.campaign_arn #=> String
    #
    def update_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCampaignInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCampaign,
        stubs: @stubs,
        params_class: Params::UpdateCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the recommender to modify the recommender configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecommenderInput}.
    #
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to modify.</p>
    #
    # @option params [RecommenderConfig] :recommender_config
    #   <p>The configuration details of the recommender.</p>
    #
    # @return [Types::UpdateRecommenderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommender(
    #     recommender_arn: 'recommenderArn', # required
    #     recommender_config: {
    #       item_exploration_config: {
    #         'key' => 'value'
    #       },
    #       min_recommendation_requests_per_second: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecommenderOutput
    #   resp.data.recommender_arn #=> String
    #
    def update_recommender(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecommenderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecommenderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecommender
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateRecommender
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecommender,
        stubs: @stubs,
        params_class: Params::UpdateRecommenderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recommender
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
