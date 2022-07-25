# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Forecast
  # An API client for AmazonForecast
  # See {#initialize} for a full list of supported configuration options
  # <p>Provides APIs for creating and managing Amazon Forecast resources.</p>
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
    def initialize(config = AWS::SDK::Forecast::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Amazon Forecast predictor.</p>
    #         <p>Amazon Forecast creates predictors with AutoPredictor, which involves applying the
    #             optimal combination of algorithms to each time series in your datasets. You can use
    #                 <a>CreateAutoPredictor</a> to create new predictors or upgrade/retrain
    #             existing predictors.</p>
    #
    #         <p>
    #             <b>Creating new predictors</b>
    #          </p>
    #
    #         <p>The following parameters are required when creating a new predictor:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>PredictorName</code> - A unique name for the predictor.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DatasetGroupArn</code> - The ARN of the dataset group used to train the
    #                     predictor.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ForecastFrequency</code> - The granularity of your forecasts (hourly,
    #                     daily, weekly, etc).</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ForecastHorizon</code> - The number of time-steps that the model
    #                     predicts. The forecast horizon is also called the prediction length.</p>
    #             </li>
    #          </ul>
    #         <p>When creating a new predictor, do not specify a value for
    #                 <code>ReferencePredictorArn</code>.</p>
    #         <p>
    #             <b>Upgrading and retraining predictors</b>
    #         </p>
    #         <p>The following parameters are required when retraining or upgrading a predictor:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>PredictorName</code> - A unique name for the predictor.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ReferencePredictorArn</code> - The ARN of the predictor to retrain or
    #                     upgrade.</p>
    #             </li>
    #          </ul>
    #         <p>When upgrading or retraining a predictor, only specify values for the
    #                 <code>ReferencePredictorArn</code> and <code>PredictorName</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAutoPredictorInput}.
    #
    # @option params [String] :predictor_name
    #   <p>A unique name for the predictor</p>
    #
    # @option params [Integer] :forecast_horizon
    #   <p>The number of time-steps that the model predicts. The forecast horizon is also called
    #               the prediction length.</p>
    #           <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/4 of the
    #               TARGET_TIME_SERIES dataset length. If you are retraining an existing AutoPredictor, then
    #               the maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #               TARGET_TIME_SERIES dataset length.</p>
    #           <p>If you are upgrading to an AutoPredictor or retraining an existing AutoPredictor, you
    #               cannot update the forecast horizon parameter. You can meet this requirement by providing
    #               longer time-series in the dataset.</p>
    #
    # @option params [Array<String>] :forecast_types
    #   <p>The forecast types used to train a predictor. You can specify up to five forecast
    #               types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #               higher. You can also specify the mean forecast with <code>mean</code>.</p>
    #
    # @option params [Array<String>] :forecast_dimensions
    #   <p>An array of dimension (field) names that specify how to group the generated
    #               forecast.</p>
    #           <p>For example, if you are generating forecasts for item sales across all your stores,
    #               and your dataset contains a <code>store_id</code> field, you would specify
    #                   <code>store_id</code> as a dimension to group sales forecasts for each store.</p>
    #
    # @option params [String] :forecast_frequency
    #   <p>The frequency of predictions in a forecast.</p>
    #           <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30
    #               minutes), 15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute).
    #               For example, "Y" indicates every year and "5min" indicates every five minutes.</p>
    #           <p>The frequency must be greater than or equal to the TARGET_TIME_SERIES dataset
    #               frequency.</p>
    #           <p>When a RELATED_TIME_SERIES dataset is provided, the frequency must be equal to the
    #               RELATED_TIME_SERIES dataset frequency.</p>
    #
    # @option params [DataConfig] :data_config
    #   <p>The data configuration for your dataset group and any additional datasets.</p>
    #
    # @option params [EncryptionConfig] :encryption_config
    #   <p>An AWS Key Management Service (KMS) key and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to
    #         access the key. You can specify this optional object in the
    #         <a>CreateDataset</a> and <a>CreatePredictor</a> requests.</p>
    #
    # @option params [String] :reference_predictor_arn
    #   <p>The ARN of the predictor to retrain or upgrade. This parameter is only used when
    #               retraining or upgrading a predictor. When creating a new predictor, do not specify a
    #               value for this parameter.</p>
    #           <p>When upgrading or retraining a predictor, only specify values for the
    #                   <code>ReferencePredictorArn</code> and <code>PredictorName</code>. The value for
    #                   <code>PredictorName</code> must be a unique predictor name.</p>
    #
    # @option params [String] :optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #
    # @option params [Boolean] :explain_predictor
    #   <p>Create an Explainability resource for the predictor.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your predictors. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #           <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                   <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #
    # @option params [MonitorConfig] :monitor_config
    #   <p>The configuration details for predictor monitoring. Provide a name for the monitor resource to enable predictor monitoring.</p>
    #            <p>Predictor monitoring allows you to see how your predictor's performance changes over time.
    #            For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor Monitoring</a>.</p>
    #
    # @option params [TimeAlignmentBoundary] :time_alignment_boundary
    #   <p>The time boundary Forecast uses to align and aggregate any data that doesn't align with your forecast frequency. Provide the unit of time and the time boundary as a key value pair.
    #               For more information on specifying a time boundary, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary">Specifying a Time Boundary</a>.
    #               If you
    #               don't provide a time boundary, Forecast uses a set of <a href="https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries">Default Time Boundaries</a>.</p>
    #
    # @return [Types::CreateAutoPredictorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_predictor(
    #     predictor_name: 'PredictorName', # required
    #     forecast_horizon: 1,
    #     forecast_types: [
    #       'member'
    #     ],
    #     forecast_dimensions: [
    #       'member'
    #     ],
    #     forecast_frequency: 'ForecastFrequency',
    #     data_config: {
    #       dataset_group_arn: 'DatasetGroupArn', # required
    #       attribute_configs: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           transformations: {
    #             'key' => 'value'
    #           } # required
    #         }
    #       ],
    #       additional_datasets: [
    #         {
    #           name: 'Name', # required
    #           configuration: {
    #             'key' => [
    #               'member'
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     encryption_config: {
    #       role_arn: 'RoleArn', # required
    #       kms_key_arn: 'KMSKeyArn' # required
    #     },
    #     reference_predictor_arn: 'ReferencePredictorArn',
    #     optimization_metric: 'WAPE', # accepts ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #     explain_predictor: false,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     monitor_config: {
    #       monitor_name: 'MonitorName' # required
    #     },
    #     time_alignment_boundary: {
    #       month: 'JANUARY', # accepts ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #       day_of_month: 1,
    #       day_of_week: 'MONDAY', # accepts ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #       hour: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAutoPredictorOutput
    #   resp.data.predictor_arn #=> String
    #
    def create_auto_predictor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAutoPredictorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAutoPredictorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAutoPredictor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateAutoPredictor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAutoPredictor,
        stubs: @stubs,
        params_class: Params::CreateAutoPredictorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_auto_predictor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Forecast dataset. The information about the dataset that you provide helps
    #       Forecast understand how to consume the data for model training. This includes the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>DataFrequency</code>
    #                   </i> - How frequently your historical
    #           time-series data is collected.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>Domain</code>
    #                   </i> and
    #             <i>
    #                      <code>DatasetType</code>
    #                   </i> - Each dataset has an associated dataset
    #           domain and a type within the domain. Amazon Forecast provides a list of predefined domains and
    #           types within each domain. For each unique dataset domain and type within the domain,
    #           Amazon Forecast requires your data to include a minimum set of predefined fields.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>
    #                      <code>Schema</code>
    #                   </i> - A schema specifies the fields in the dataset,
    #           including the field name and data type.</p>
    #             </li>
    #          </ul>
    #          <p>After creating a dataset, you import your training data into it and add the dataset to a
    #       dataset group. You use the dataset group to create a predictor. For more information, see
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing datasets</a>.</p>
    #          <p>To get a list of all your datasets, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html">ListDatasets</a> operation.</p>
    #          <p>For example Forecast datasets, see the <a href="https://github.com/aws-samples/amazon-forecast-samples">Amazon Forecast Sample GitHub
    #         repository</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of a dataset must be <code>ACTIVE</code> before you can import
    #         training data. Use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation to get
    #         the status.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>A name for the dataset.</p>
    #
    # @option params [String] :domain
    #   <p>The domain associated with the dataset. When you add a dataset to a dataset group, this
    #         value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in the training data that you import to the dataset. For example, if you
    #         choose the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires <code>item_id</code>, <code>timestamp</code>,
    #         and <code>demand</code> fields to be present in your data. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Importing
    #           datasets</a>.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The dataset type. Valid values depend on the chosen <code>Domain</code>.</p>
    #
    # @option params [String] :data_frequency
    #   <p>The frequency of data collection. This parameter is required for RELATED_TIME_SERIES
    #         datasets.</p>
    #            <p>Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour), 30min (30 minutes),
    #         15min (15 minutes), 10min (10 minutes), 5min (5 minutes), and 1min (1 minute). For example,
    #         "D" indicates every day and "15min" indicates every 15 minutes.</p>
    #
    # @option params [Schema] :schema
    #   <p>The schema for the dataset. The schema attributes and their order must match the fields in
    #         your data. The dataset <code>Domain</code> and <code>DatasetType</code> that you choose
    #         determine the minimum required fields in your training data. For information about the
    #         required fields for a specific dataset domain and type, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-domains-ds-types.html">Dataset Domains and Dataset
    #           Types</a>.</p>
    #
    # @option params [EncryptionConfig] :encryption_config
    #   <p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     dataset_name: 'DatasetName', # required
    #     domain: 'RETAIL', # required - accepts ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"]
    #     dataset_type: 'TARGET_TIME_SERIES', # required - accepts ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"]
    #     data_frequency: 'DataFrequency',
    #     schema: {
    #       attributes: [
    #         {
    #           attribute_name: 'AttributeName',
    #           attribute_type: 'string' # accepts ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     }, # required
    #     encryption_config: {
    #       role_arn: 'RoleArn', # required
    #       kms_key_arn: 'KMSKeyArn' # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException]),
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

    # <p>Creates a dataset group, which holds a collection of related datasets. You can add
    #       datasets to the dataset group when you create the dataset group, or later by using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation.</p>
    #          <p>After creating a dataset group and adding datasets, you use the dataset group when you
    #       create a predictor. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset groups</a>.</p>
    #          <p>To get a list of all your datasets groups, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html">ListDatasetGroups</a>
    #       operation.</p>
    #          <note>
    #             <p>The <code>Status</code> of a dataset group must be <code>ACTIVE</code> before you can
    #         use the dataset group to create a predictor. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a> operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_name
    #   <p>A name for the dataset group.</p>
    #
    # @option params [String] :domain
    #   <p>The domain associated with the dataset group. When you add a dataset to a dataset group,
    #         this value and the value specified for the <code>Domain</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation must match.</p>
    #            <p>The <code>Domain</code> and <code>DatasetType</code> that you choose determine the fields
    #         that must be present in training data that you import to a dataset. For example, if you choose
    #         the <code>RETAIL</code> domain and <code>TARGET_TIME_SERIES</code> as the
    #           <code>DatasetType</code>, Amazon Forecast requires that <code>item_id</code>,
    #           <code>timestamp</code>, and <code>demand</code> fields are present in your data. For more
    #         information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html">Dataset groups</a>.</p>
    #
    # @option params [Array<String>] :dataset_arns
    #   <p>An array of Amazon Resource Names (ARNs) of the datasets that you want to include in the
    #         dataset group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset group to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_group(
    #     dataset_group_name: 'DatasetGroupName', # required
    #     domain: 'RETAIL', # required - accepts ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"]
    #     dataset_arns: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetGroupOutput
    #   resp.data.dataset_group_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
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

    # <p>Imports your training data to an Amazon Forecast dataset. You provide the location of your
    #       training data in an Amazon Simple Storage Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
    #       that you want to import the data to.</p>
    #          <p>You must specify a <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html">DataSource</a> object that includes an
    #       AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data, as Amazon Forecast makes a copy
    #       of your data and processes it in an internal AWS system. For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html">Set up
    #         permissions</a>.</p>
    #          <p>The training data must be in CSV or Parquet format. The delimiter must be a comma (,).</p>
    #          <p>You can specify the path to a specific file, the S3 bucket, or to a folder in the S3
    #       bucket. For the latter two cases, Amazon Forecast imports all files up to the limit of 10,000
    #       files.</p>
    #          <p>Because dataset imports are not aggregated, your most recent dataset import is the one
    #       that is used when training a predictor or generating a forecast. Make sure that your most
    #       recent dataset import contains all of the data you want to model off of, and not just the new
    #       data collected since the previous import.</p>
    #          <p>To get a list of all your dataset import jobs, filtered by specified criteria, use the
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html">ListDatasetImportJobs</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetImportJobInput}.
    #
    # @option params [String] :dataset_import_job_name
    #   <p>The name for the dataset import job. We recommend including the current timestamp in the
    #         name, for example, <code>20190721DatasetImport</code>. This can help you avoid getting a
    #           <code>ResourceAlreadyExistsException</code> exception.</p>
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Forecast dataset that you want to import data
    #         to.</p>
    #
    # @option params [DataSource] :data_source
    #   <p>The location of the training data to import and an AWS Identity and Access Management (IAM) role that Amazon Forecast
    #         can assume to access the data. The training data must be stored in an Amazon S3 bucket.</p>
    #            <p>If encryption is used, <code>DataSource</code> must include an AWS Key Management Service (KMS) key and the
    #         IAM role must allow Amazon Forecast permission to access the key. The KMS key and IAM role must
    #         match those specified in the <code>EncryptionConfig</code> parameter of the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a>
    #         operation.</p>
    #
    # @option params [String] :timestamp_format
    #   <p>The format of timestamps in the dataset. The format that you specify depends on the
    #           <code>DataFrequency</code> specified when the dataset was created. The following formats are
    #         supported</p>
    #            <ul>
    #               <li>
    #                  <p>"yyyy-MM-dd"</p>
    #                  <p>For the following data frequencies: Y, M, W, and D</p>
    #               </li>
    #               <li>
    #                  <p>"yyyy-MM-dd HH:mm:ss"</p>
    #                  <p>For the following data frequencies: H, 30min, 15min, and 1min; and optionally, for: Y,
    #             M, W, and D</p>
    #               </li>
    #            </ul>
    #            <p>If the format isn't specified, Amazon Forecast expects the format to be "yyyy-MM-dd
    #         HH:mm:ss".</p>
    #
    # @option params [String] :time_zone
    #   <p>A single time zone for every item in your dataset. This option is ideal for datasets
    #               with all timestamps within a single time zone, or if all timestamps are normalized to a
    #               single time zone. </p>
    #           <p>Refer to the <a href="http://joda-time.sourceforge.net/timezones.html">Joda-Time
    #                   API</a> for a complete list of valid time zone names.</p>
    #
    # @option params [Boolean] :use_geolocation_for_time_zone
    #   <p>Automatically derive time zone information from the geolocation attribute. This option
    #               is ideal for datasets that contain timestamps in multiple time zones and those
    #               timestamps are expressed in local time.</p>
    #
    # @option params [String] :geolocation_format
    #   <p>The format of the geolocation attribute. The geolocation attribute can be formatted in
    #               one of two ways:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>LAT_LONG</code> - the latitude and longitude in decimal format (Example: 47.61_-122.33).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CC_POSTALCODE</code> (US Only) - the country code (US), followed by the 5-digit ZIP code (Example: US_98121).</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the dataset import job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :format
    #   <p>The format of the imported data, CSV or PARQUET. The default value is CSV.</p>
    #
    # @return [Types::CreateDatasetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_import_job(
    #     dataset_import_job_name: 'DatasetImportJobName', # required
    #     dataset_arn: 'DatasetArn', # required
    #     data_source: {
    #       s3_config: {
    #         path: 'Path', # required
    #         role_arn: 'RoleArn', # required
    #         kms_key_arn: 'KMSKeyArn'
    #       } # required
    #     }, # required
    #     timestamp_format: 'TimestampFormat',
    #     time_zone: 'TimeZone',
    #     use_geolocation_for_time_zone: false,
    #     geolocation_format: 'GeolocationFormat',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     format: 'Format'
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
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

    # <note>
    #             <p>Explainability is only available for Forecasts and Predictors generated from an
    #                 AutoPredictor (<a>CreateAutoPredictor</a>)</p>
    #         </note>
    #         <p>Creates an Amazon Forecast Explainability.</p>
    #         <p>Explainability helps you better understand how the attributes in your datasets impact
    #             forecast. Amazon Forecast uses a metric called Impact scores to quantify the relative
    #             impact of each attribute and determine whether they increase or decrease forecast
    #             values.</p>
    #         <p>To enable Forecast Explainability, your predictor must include at least one of the
    #             following: related time series, item metadata, or additional datasets like Holidays and
    #             the Weather Index.</p>
    #         <p>CreateExplainability accepts either a Predictor ARN or Forecast ARN. To receive
    #             aggregated Impact scores for all time series and time points in your datasets, provide a
    #             Predictor ARN. To receive Impact scores for specific time series and time points,
    #             provide a Forecast ARN.</p>
    #         <p>
    #             <b>CreateExplainability with a Predictor ARN</b>
    #         </p>
    #         <note>
    #             <p>You can only have one Explainability resource per predictor. If you already
    #                 enabled <code>ExplainPredictor</code> in <a>CreateAutoPredictor</a>, that
    #                 predictor already has an Explainability resource.</p>
    #         </note>
    #         <p>The following parameters are required when providing a Predictor ARN:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>ExplainabilityName</code> - A unique name for the Explainability.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ResourceArn</code> - The Arn of the predictor.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>TimePointGranularity</code> - Must be set to “ALL”.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>TimeSeriesGranularity</code> - Must be set to “ALL”.</p>
    #             </li>
    #          </ul>
    #         <p>Do not specify a value for the following parameters:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DataSource</code> - Only valid when TimeSeriesGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Schema</code> - Only valid when TimeSeriesGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>StartDateTime</code> - Only valid when TimePointGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>EndDateTime</code> - Only valid when TimePointGranularity is
    #                     “SPECIFIC”.</p>
    #             </li>
    #          </ul>
    #         <p>
    #             <b>CreateExplainability with a Forecast ARN</b>
    #         </p>
    #         <note>
    #             <p>You can specify a maximum of 50 time series and 500 time points.</p>
    #         </note>
    #         <p>The following parameters are required when providing a Predictor ARN:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>ExplainabilityName</code> - A unique name for the Explainability.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ResourceArn</code> - The Arn of the forecast.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>TimePointGranularity</code> - Either “ALL” or “SPECIFIC”.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>TimeSeriesGranularity</code> - Either “ALL” or “SPECIFIC”.</p>
    #             </li>
    #          </ul>
    #         <p>If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DataSource</code> - The S3 location of the CSV file specifying your time
    #                     series.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Schema</code> - The Schema defines the attributes and attribute types
    #                     listed in the Data Source.</p>
    #             </li>
    #          </ul>
    #         <p>If you set TimePointGranularity to “SPECIFIC”, you must also provide the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>StartDateTime</code> - The first timestamp in the range of time
    #                     points.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>EndDateTime</code> - The last timestamp in the range of time
    #                     points.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateExplainabilityInput}.
    #
    # @option params [String] :explainability_name
    #   <p>A unique name for the Explainability.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Predictor or Forecast used to create the
    #               Explainability.</p>
    #
    # @option params [ExplainabilityConfig] :explainability_config
    #   <p>The configuration settings that define the granularity of time series and time points
    #               for the Explainability.</p>
    #
    # @option params [DataSource] :data_source
    #   <p>The source of your data, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast to
    #         access the data and, optionally, an AWS Key Management Service (KMS) key.</p>
    #
    # @option params [Schema] :schema
    #   <p>Defines the fields of a dataset.</p>
    #
    # @option params [Boolean] :enable_visualization
    #   <p>Create an Explainability visualization that is viewable within the AWS console.</p>
    #
    # @option params [String] :start_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the first
    #               point for the Explainability.</p>
    #           <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    #
    # @option params [String] :end_date_time
    #   <p>If <code>TimePointGranularity</code> is set to <code>SPECIFIC</code>, define the last
    #               time point for the Explainability.</p>
    #           <p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
    #               2015-01-01T20:00:00)</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #           <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                   <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateExplainabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_explainability(
    #     explainability_name: 'ExplainabilityName', # required
    #     resource_arn: 'ResourceArn', # required
    #     explainability_config: {
    #       time_series_granularity: 'ALL', # required - accepts ["ALL", "SPECIFIC"]
    #       time_point_granularity: 'ALL' # required - accepts ["ALL", "SPECIFIC"]
    #     }, # required
    #     data_source: {
    #       s3_config: {
    #         path: 'Path', # required
    #         role_arn: 'RoleArn', # required
    #         kms_key_arn: 'KMSKeyArn'
    #       } # required
    #     },
    #     schema: {
    #       attributes: [
    #         {
    #           attribute_name: 'AttributeName',
    #           attribute_type: 'string' # accepts ["string", "integer", "float", "timestamp", "geolocation"]
    #         }
    #       ]
    #     },
    #     enable_visualization: false,
    #     start_date_time: 'StartDateTime',
    #     end_date_time: 'EndDateTime',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExplainabilityOutput
    #   resp.data.explainability_arn #=> String
    #
    def create_explainability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExplainabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExplainabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExplainability
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateExplainability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExplainability,
        stubs: @stubs,
        params_class: Params::CreateExplainabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_explainability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports an Explainability resource created by the <a>CreateExplainability</a> operation. Exported files are exported to an Amazon Simple Storage Service (Amazon
    #             S3) bucket.</p>
    #         <p>You must specify a <a>DataDestination</a> object that includes an Amazon S3
    #             bucket and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
    #             bucket. For more information, see <a>aws-forecast-iam-roles</a>.</p>
    #         <note>
    #             <p>The <code>Status</code> of the export job must be <code>ACTIVE</code> before you
    #                 can access the export in your Amazon S3 bucket. To get the status, use the <a>DescribeExplainabilityExport</a> operation.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateExplainabilityExportInput}.
    #
    # @option params [String] :explainability_export_name
    #   <p>A unique name for the Explainability export.</p>
    #
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability to export.</p>
    #
    # @option params [DataDestination] :destination
    #   <p>The destination for an export job. Provide an S3 path, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an AWS Key Management Service (KMS) key (optional). </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your resources. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #           <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                   <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET.</p>
    #
    # @return [Types::CreateExplainabilityExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_explainability_export(
    #     explainability_export_name: 'ExplainabilityExportName', # required
    #     explainability_arn: 'ExplainabilityArn', # required
    #     destination: {
    #       s3_config: {
    #         path: 'Path', # required
    #         role_arn: 'RoleArn', # required
    #         kms_key_arn: 'KMSKeyArn'
    #       } # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     format: 'Format'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExplainabilityExportOutput
    #   resp.data.explainability_export_arn #=> String
    #
    def create_explainability_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExplainabilityExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExplainabilityExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExplainabilityExport
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateExplainabilityExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExplainabilityExport,
        stubs: @stubs,
        params_class: Params::CreateExplainabilityExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_explainability_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a forecast for each item in the <code>TARGET_TIME_SERIES</code> dataset that was
    #       used to train the predictor. This is known as inference. To retrieve the forecast for a single
    #       item at low latency, use the  operation. To
    #       export the complete forecast into your Amazon Simple Storage Service (Amazon S3) bucket, use the <a>CreateForecastExportJob</a> operation.</p>
    #          <p>The range of the forecast is determined by the <code>ForecastHorizon</code> value, which
    #       you specify in the <a>CreatePredictor</a> request. When you query a forecast, you
    #       can request a specific date range within the forecast.</p>
    #          <p>To get a list of all your forecasts, use the <a>ListForecasts</a>
    #       operation.</p>
    #          <note>
    #             <p>The forecasts generated by Amazon Forecast are in the same time zone as the dataset that was
    #         used to create the predictor.</p>
    #          </note>
    #          <p>For more information, see <a>howitworks-forecast</a>.</p>
    #          <note>
    #             <p>The <code>Status</code> of the forecast must be <code>ACTIVE</code> before you can query
    #         or export the forecast. Use the <a>DescribeForecast</a> operation to get the
    #         status.</p>
    #          </note>
    #          <p>By default, a forecast includes predictions for every item (<code>item_id</code>) in the dataset group that was used to train the predictor.
    #       However, you can use the <code>TimeSeriesSelector</code> object to generate a forecast on a subset of time series. Forecast creation is skipped for any time series that you specify that are not in the input dataset. The forecast export file will not contain these time series or their forecasted values.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateForecastInput}.
    #
    # @option params [String] :forecast_name
    #   <p>A name for the forecast.</p>
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to use to generate the forecast.</p>
    #
    # @option params [Array<String>] :forecast_types
    #   <p>The quantiles at which probabilistic forecasts are generated. <b>You
    #           can currently specify up to 5 quantiles per forecast</b>. Accepted values include
    #           <code>0.01 to 0.99</code> (increments of .01 only) and <code>mean</code>. The mean forecast
    #         is different from the median (0.50) when the distribution is not symmetric (for example, Beta
    #         and Negative Binomial).
    #         </p>
    #            <p>The default quantiles are the quantiles you specified during predictor creation.
    #         If you didn't specify quantiles, the default values are <code>["0.1", "0.5", "0.9"]</code>.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the forecast to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @option params [TimeSeriesSelector] :time_series_selector
    #   <p>Defines the set of time series that are used to create the forecasts in a <code>TimeSeriesIdentifiers</code> object.</p>
    #            <p>The <code>TimeSeriesIdentifiers</code> object needs the following information:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DataSource</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Format</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Schema</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_forecast(
    #     forecast_name: 'ForecastName', # required
    #     predictor_arn: 'PredictorArn', # required
    #     forecast_types: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     time_series_selector: {
    #       time_series_identifiers: {
    #         data_source: {
    #           s3_config: {
    #             path: 'Path', # required
    #             role_arn: 'RoleArn', # required
    #             kms_key_arn: 'KMSKeyArn'
    #           } # required
    #         },
    #         schema: {
    #           attributes: [
    #             {
    #               attribute_name: 'AttributeName',
    #               attribute_type: 'string' # accepts ["string", "integer", "float", "timestamp", "geolocation"]
    #             }
    #           ]
    #         },
    #         format: 'Format'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateForecastOutput
    #   resp.data.forecast_arn #=> String
    #
    def create_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateForecast
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateForecast,
        stubs: @stubs,
        params_class: Params::CreateForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports a forecast created by the <a>CreateForecast</a> operation to your
    #       Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will match the following conventions:</p>
    #          <p><ForecastExportJobName>_<ExportTimestamp>_<PartNumber></p>
    #          <p>where the <ExportTimestamp> component is in Java SimpleDateFormat
    #       (yyyy-MM-ddTHH-mm-ssZ).</p>
    #          <p>You must specify a <a>DataDestination</a> object that includes an AWS Identity and Access Management
    #       (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For more information, see
    #         <a>aws-forecast-iam-roles</a>.</p>
    #          <p>For more information, see <a>howitworks-forecast</a>.</p>
    #          <p>To get a list of all your forecast export jobs, use the <a>ListForecastExportJobs</a> operation.</p>
    #          <note>
    #             <p>The <code>Status</code> of the forecast export job must be <code>ACTIVE</code> before
    #         you can access the forecast in your Amazon S3 bucket. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateForecastExportJobInput}.
    #
    # @option params [String] :forecast_export_job_name
    #   <p>The name for the forecast export job.</p>
    #
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast that you want to export.</p>
    #
    # @option params [DataDestination] :destination
    #   <p>The location where you want to save the forecast and an AWS Identity and Access Management (IAM) role that
    #         Amazon Forecast can assume to access the location. The forecast must be exported to an Amazon S3
    #         bucket.</p>
    #            <p>If encryption is used, <code>Destination</code> must include an AWS Key Management Service (KMS) key. The
    #         IAM role must allow Amazon Forecast permission to access the key.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the forecast export job to help you categorize and
    #         organize them. Each tag consists of a key and an optional value, both of which you
    #         define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    #
    # @return [Types::CreateForecastExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_forecast_export_job(
    #     forecast_export_job_name: 'ForecastExportJobName', # required
    #     forecast_arn: 'ForecastArn', # required
    #     destination: {
    #       s3_config: {
    #         path: 'Path', # required
    #         role_arn: 'RoleArn', # required
    #         kms_key_arn: 'KMSKeyArn'
    #       } # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     format: 'Format'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateForecastExportJobOutput
    #   resp.data.forecast_export_job_arn #=> String
    #
    def create_forecast_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateForecastExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateForecastExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateForecastExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateForecastExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateForecastExportJob,
        stubs: @stubs,
        params_class: Params::CreateForecastExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_forecast_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a predictor monitor resource for an existing auto predictor. Predictor monitoring allows you to see how your predictor's performance changes over time.
    #            For more information, see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html">Predictor Monitoring</a>.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMonitorInput}.
    #
    # @option params [String] :monitor_name
    #   <p>The name of the monitor resource.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to monitor.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a> to apply to the monitor resource.</p>
    #
    # @return [Types::CreateMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitor(
    #     monitor_name: 'MonitorName', # required
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMonitorOutput
    #   resp.data.monitor_arn #=> String
    #
    def create_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMonitor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMonitor,
        stubs: @stubs,
        params_class: Params::CreateMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p> This operation creates a legacy predictor that does not include all the predictor
    #         functionalities provided by Amazon Forecast. To create a predictor that is compatible with all
    #         aspects of Forecast, use <a>CreateAutoPredictor</a>.</p>
    #          </note>
    #          <p>Creates an Amazon Forecast predictor.</p>
    #          <p>In the request, provide a dataset group and either specify an algorithm or let Amazon Forecast
    #       choose an algorithm for you using AutoML. If you specify an algorithm, you also can override
    #       algorithm-specific hyperparameters.</p>
    #          <p>Amazon Forecast uses the algorithm to train a predictor using the latest version of the datasets
    #       in the specified dataset group. You can then generate a forecast using the <a>CreateForecast</a> operation.</p>
    #          <p> To see the evaluation metrics, use the <a>GetAccuracyMetrics</a> operation. </p>
    #          <p>You can specify a featurization configuration to fill and aggregate the data fields in the
    #         <code>TARGET_TIME_SERIES</code> dataset to improve model training. For more information, see
    #         <a>FeaturizationConfig</a>.</p>
    #          <p>For RELATED_TIME_SERIES datasets, <code>CreatePredictor</code> verifies that the
    #         <code>DataFrequency</code> specified when the dataset was created matches the
    #         <code>ForecastFrequency</code>. TARGET_TIME_SERIES datasets don't have this restriction.
    #       Amazon Forecast also verifies the delimiter and timestamp format. For more information, see <a>howitworks-datasets-groups</a>.</p>
    #          <p>By default, predictors are trained and evaluated at the 0.1 (P10), 0.5 (P50), and 0.9
    #       (P90) quantiles. You can choose custom forecast types to train and evaluate your predictor by
    #       setting the <code>ForecastTypes</code>. </p>
    #          <p>
    #             <b>AutoML</b>
    #          </p>
    #          <p>If you want Amazon Forecast to evaluate each algorithm and choose the one that minimizes the
    #         <code>objective function</code>, set <code>PerformAutoML</code> to <code>true</code>. The
    #         <code>objective function</code> is defined as the mean of the weighted losses over the
    #       forecast types. By default, these are the p10, p50, and p90 quantile losses. For more
    #       information, see <a>EvaluationResult</a>.</p>
    #          <p>When AutoML is enabled, the following properties are disallowed:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AlgorithmArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HPOConfig</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PerformHPO</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TrainingParameters</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    #
    #
    #          <p>To get a list of all of your predictors, use the <a>ListPredictors</a>
    #       operation.</p>
    #          <note>
    #             <p>Before you can use the predictor to create a forecast, the <code>Status</code> of the
    #         predictor must be <code>ACTIVE</code>, signifying that training has completed. To get the
    #         status, use the <a>DescribePredictor</a> operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePredictorInput}.
    #
    # @option params [String] :predictor_name
    #   <p>A name for the predictor.</p>
    #
    # @option params [String] :algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if
    #           <code>PerformAutoML</code> is not set to <code>true</code>.</p>
    #            <p class="title">
    #               <b>Supported algorithms:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ARIMA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/CNN-QR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/ETS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/NPTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:forecast:::algorithm/Prophet</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :forecast_horizon
    #   <p>Specifies the number of time-steps that the model is trained to predict. The forecast
    #         horizon is also called the prediction length.</p>
    #            <p>For example, if you configure a dataset for daily data collection (using the
    #           <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and
    #         set the forecast horizon to 10, the model returns predictions for 10 days.</p>
    #            <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    #         TARGET_TIME_SERIES dataset length.</p>
    #
    # @option params [Array<String>] :forecast_types
    #   <p>Specifies the forecast types used to train a predictor. You can specify up to five
    #         forecast types. Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or
    #         higher. You can also specify the mean forecast with <code>mean</code>. </p>
    #            <p>The default value is <code>["0.10", "0.50", "0.9"]</code>.</p>
    #
    # @option params [Boolean] :perform_auto_ml
    #   <p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it
    #         provides and chooses the best algorithm and configuration for your training dataset.</p>
    #            <p>The default value is <code>false</code>. In this case, you are required to specify an
    #         algorithm.</p>
    #            <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This
    #         is a good option if you aren't sure which algorithm is suitable for your training data. In
    #         this case, <code>PerformHPO</code> must be false.</p>
    #
    # @option params [String] :auto_ml_override_strategy
    #   <note>
    #               <p> The <code>LatencyOptimized</code> AutoML override strategy is only available in private beta.
    #                   Contact AWS Support or your account manager to learn more about access privileges.
    #               </p>
    #           </note>
    #           <p>Used to overide the default AutoML strategy, which is to optimize predictor accuracy.
    #               To apply an AutoML strategy that minimizes training time, use
    #                   <code>LatencyOptimized</code>.</p>
    #           <p>This parameter is only valid for predictors trained using AutoML.</p>
    #
    # @option params [Boolean] :perform_hpo
    #   <p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter
    #         values for your training data. The process of performing HPO is known as running a
    #         hyperparameter tuning job.</p>
    #            <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default
    #         hyperparameter values from the chosen algorithm.</p>
    #            <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and,
    #         optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job
    #         specifies a metric to optimize, which hyperparameters participate in tuning, and the valid
    #         range for each tunable hyperparameter. In this case, you are required to specify an algorithm
    #         and <code>PerformAutoML</code> must be false.</p>
    #            <p>The following algorithms support HPO:</p>
    #            <ul>
    #               <li>
    #                  <p>DeepAR+</p>
    #               </li>
    #               <li>
    #                  <p>CNN-QR</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :training_parameters
    #   <p>The hyperparameters to override for model training. The hyperparameters that you can
    #         override are listed in the individual algorithms. For the list of supported algorithms, see
    #           <a>aws-forecast-choosing-recipes</a>.</p>
    #
    # @option params [EvaluationParameters] :evaluation_parameters
    #   <p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
    #         evaluates a predictor by splitting a dataset into training data and testing data. The
    #         evaluation parameters define how to perform the split and the number of iterations.</p>
    #
    # @option params [HyperParameterTuningJobConfig] :hpo_config
    #   <p>Provides hyperparameter override values for the algorithm. If you don't provide this
    #         parameter, Amazon Forecast uses default values. The individual algorithms specify which
    #         hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
    #            <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to
    #         true.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Describes the dataset group that contains the data to use to train the predictor.</p>
    #
    # @option params [FeaturizationConfig] :featurization_config
    #   <p>The featurization configuration.</p>
    #
    # @option params [EncryptionConfig] :encryption_config
    #   <p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    #         the key.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The optional metadata that you apply to the predictor to help you categorize and organize
    #         them. Each tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :optimization_metric
    #   <p>The accuracy metric used to optimize the predictor.</p>
    #
    # @return [Types::CreatePredictorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_predictor(
    #     predictor_name: 'PredictorName', # required
    #     algorithm_arn: 'AlgorithmArn',
    #     forecast_horizon: 1, # required
    #     forecast_types: [
    #       'member'
    #     ],
    #     perform_auto_ml: false,
    #     auto_ml_override_strategy: 'LatencyOptimized', # accepts ["LatencyOptimized", "AccuracyOptimized"]
    #     perform_hpo: false,
    #     training_parameters: {
    #       'key' => 'value'
    #     },
    #     evaluation_parameters: {
    #       number_of_backtest_windows: 1,
    #       back_test_window_offset: 1
    #     },
    #     hpo_config: {
    #       parameter_ranges: {
    #         categorical_parameter_ranges: [
    #           {
    #             name: 'Name', # required
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ],
    #         continuous_parameter_ranges: [
    #           {
    #             name: 'Name', # required
    #             max_value: 1.0, # required
    #             min_value: 1.0, # required
    #             scaling_type: 'Auto' # accepts ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ],
    #         integer_parameter_ranges: [
    #           {
    #             name: 'Name', # required
    #             max_value: 1, # required
    #             min_value: 1, # required
    #             scaling_type: 'Auto' # accepts ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #           }
    #         ]
    #       }
    #     },
    #     input_data_config: {
    #       dataset_group_arn: 'DatasetGroupArn', # required
    #       supplementary_features: [
    #         {
    #           name: 'Name', # required
    #           value: 'Value' # required
    #         }
    #       ]
    #     }, # required
    #     featurization_config: {
    #       forecast_frequency: 'ForecastFrequency', # required
    #       forecast_dimensions: [
    #         'member'
    #       ],
    #       featurizations: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           featurization_pipeline: [
    #             {
    #               featurization_method_name: 'filling', # required - accepts ["filling"]
    #               featurization_method_parameters: {
    #                 'key' => 'value'
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     }, # required
    #     encryption_config: {
    #       role_arn: 'RoleArn', # required
    #       kms_key_arn: 'KMSKeyArn' # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     optimization_metric: 'WAPE' # accepts ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePredictorOutput
    #   resp.data.predictor_arn #=> String
    #
    def create_predictor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePredictorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePredictorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePredictor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreatePredictor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePredictor,
        stubs: @stubs,
        params_class: Params::CreatePredictorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_predictor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports backtest forecasts and accuracy metrics generated by the <a>CreateAutoPredictor</a> or <a>CreatePredictor</a> operations. Two
    #             folders containing CSV or Parquet files are exported to your specified S3 bucket.</p>
    #         <p> The export file names will match the following conventions:</p>
    #         <p>
    #             <code><ExportJobName>_<ExportTimestamp>_<PartNumber>.csv</code>
    #          </p>
    #         <p>The <ExportTimestamp> component is in Java SimpleDate format
    #             (yyyy-MM-ddTHH-mm-ssZ).</p>
    #         <p>You must specify a <a>DataDestination</a> object that includes an Amazon S3
    #             bucket and an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
    #             bucket. For more information, see <a>aws-forecast-iam-roles</a>.</p>
    #         <note>
    #             <p>The <code>Status</code> of the export job must be <code>ACTIVE</code> before you
    #                 can access the export in your Amazon S3 bucket. To get the status, use the <a>DescribePredictorBacktestExportJob</a> operation.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePredictorBacktestExportJobInput}.
    #
    # @option params [String] :predictor_backtest_export_job_name
    #   <p>The name for the backtest export job.</p>
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want to export.</p>
    #
    # @option params [DataDestination] :destination
    #   <p>The destination for an export job. Provide an S3 path, an AWS Identity and Access Management (IAM) role that allows Amazon Forecast
    #         to access the location, and an AWS Key Management Service (KMS) key (optional). </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata to help you categorize and organize your backtests. Each tag
    #               consists of a key and an optional value, both of which you define. Tag keys and values
    #               are case sensitive.</p>
    #           <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>For each resource, each tag key must be unique and each tag key must have one
    #                       value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum number of tags per resource: 50.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Accepted characters: all letters and numbers, spaces representable in UTF-8,
    #                       and + - = . _ : / @. If your tagging schema is used across other services and
    #                       resources, the character restrictions of those services also apply. </p>
    #               </li>
    #               <li>
    #                   <p>Key prefixes cannot include any upper or lowercase combination of
    #                           <code>aws:</code> or <code>AWS:</code>. Values can have this prefix. If a
    #                       tag value has <code>aws</code> as its prefix but the key does not, Forecast
    #                       considers it to be a user tag and will count against the limit of 50 tags. Tags
    #                       with only the key prefix of <code>aws</code> do not count against your tags per
    #                       resource limit. You cannot edit or delete tag keys with this prefix.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :format
    #   <p>The format of the exported data, CSV or PARQUET. The default value is CSV.</p>
    #
    # @return [Types::CreatePredictorBacktestExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_predictor_backtest_export_job(
    #     predictor_backtest_export_job_name: 'PredictorBacktestExportJobName', # required
    #     predictor_arn: 'PredictorArn', # required
    #     destination: {
    #       s3_config: {
    #         path: 'Path', # required
    #         role_arn: 'RoleArn', # required
    #         kms_key_arn: 'KMSKeyArn'
    #       } # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     format: 'Format'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePredictorBacktestExportJobOutput
    #   resp.data.predictor_backtest_export_job_arn #=> String
    #
    def create_predictor_backtest_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePredictorBacktestExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePredictorBacktestExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePredictorBacktestExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreatePredictorBacktestExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePredictorBacktestExportJob,
        stubs: @stubs,
        params_class: Params::CreatePredictorBacktestExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_predictor_backtest_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Forecast dataset that was created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation. You can
    #       only delete datasets that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>.
    #       To get the status use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation.</p>
    #          <note>
    #             <p>Forecast does not automatically update any dataset groups that contain the deleted dataset.
    #         In order to update the dataset group, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html">UpdateDatasetGroup</a> operation,
    #         omitting the deleted dataset's ARN.</p>
    #          </note>
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
    #     dataset_arn: 'DatasetArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
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

    # <p>Deletes a dataset group created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation.
    #       You can only delete dataset groups that have a status of <code>ACTIVE</code>,
    #         <code>CREATE_FAILED</code>, or <code>UPDATE_FAILED</code>. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a> operation.</p>
    #          <p>This operation deletes only the dataset group, not the datasets in the group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group to delete.</p>
    #
    # @return [Types::DeleteDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_group(
    #     dataset_group_arn: 'DatasetGroupArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
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

    # <p>Deletes a dataset import job created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation. You can delete only dataset import jobs that have a status of <code>ACTIVE</code>
    #       or <code>CREATE_FAILED</code>. To get the status, use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #       operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetImportJobInput}.
    #
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job to delete.</p>
    #
    # @return [Types::DeleteDatasetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_import_job(
    #     dataset_import_job_arn: 'DatasetImportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetImportJobOutput
    #
    def delete_dataset_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDatasetImportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteDatasetImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDatasetImportJob,
        stubs: @stubs,
        params_class: Params::DeleteDatasetImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Explainability resource.</p>
    #         <p>You can delete only predictor that have a status of <code>ACTIVE</code> or
    #                 <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeExplainability</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExplainabilityInput}.
    #
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability resource to delete.</p>
    #
    # @return [Types::DeleteExplainabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_explainability(
    #     explainability_arn: 'ExplainabilityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExplainabilityOutput
    #
    def delete_explainability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExplainabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExplainabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExplainability
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteExplainability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExplainability,
        stubs: @stubs,
        params_class: Params::DeleteExplainabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_explainability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Explainability export.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExplainabilityExportInput}.
    #
    # @option params [String] :explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export to delete. </p>
    #
    # @return [Types::DeleteExplainabilityExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_explainability_export(
    #     explainability_export_arn: 'ExplainabilityExportArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExplainabilityExportOutput
    #
    def delete_explainability_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExplainabilityExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExplainabilityExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExplainabilityExport
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteExplainabilityExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExplainabilityExport,
        stubs: @stubs,
        params_class: Params::DeleteExplainabilityExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_explainability_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a forecast created using the <a>CreateForecast</a> operation. You can
    #       delete only forecasts that have a status of <code>ACTIVE</code> or <code>CREATE_FAILED</code>.
    #       To get the status, use the <a>DescribeForecast</a> operation.</p>
    #          <p>You can't delete a forecast while it is being exported. After a forecast is deleted, you
    #       can no longer query the forecast.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteForecastInput}.
    #
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast to delete.</p>
    #
    # @return [Types::DeleteForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_forecast(
    #     forecast_arn: 'ForecastArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteForecastOutput
    #
    def delete_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteForecast
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteForecast,
        stubs: @stubs,
        params_class: Params::DeleteForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a forecast export job created using the <a>CreateForecastExportJob</a>
    #       operation. You can delete only export jobs that have a status of <code>ACTIVE</code> or
    #         <code>CREATE_FAILED</code>. To get the status, use the <a>DescribeForecastExportJob</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteForecastExportJobInput}.
    #
    # @option params [String] :forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job to delete.</p>
    #
    # @return [Types::DeleteForecastExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_forecast_export_job(
    #     forecast_export_job_arn: 'ForecastExportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteForecastExportJobOutput
    #
    def delete_forecast_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteForecastExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteForecastExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteForecastExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteForecastExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteForecastExportJob,
        stubs: @stubs,
        params_class: Params::DeleteForecastExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_forecast_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a monitor resource. You can only delete a monitor resource with a status of <code>ACTIVE</code>, <code>ACTIVE_STOPPED</code>, <code>CREATE_FAILED</code>, or <code>CREATE_STOPPED</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMonitorInput}.
    #
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to delete.</p>
    #
    # @return [Types::DeleteMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_monitor(
    #     monitor_arn: 'MonitorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMonitorOutput
    #
    def delete_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMonitor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMonitor,
        stubs: @stubs,
        params_class: Params::DeleteMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a predictor created using the <a>DescribePredictor</a> or <a>CreatePredictor</a> operations. You can delete only predictor that have a status of
    #         <code>ACTIVE</code> or <code>CREATE_FAILED</code>. To get the status, use the <a>DescribePredictor</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePredictorInput}.
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to delete.</p>
    #
    # @return [Types::DeletePredictorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_predictor(
    #     predictor_arn: 'PredictorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePredictorOutput
    #
    def delete_predictor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePredictorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePredictorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePredictor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeletePredictor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePredictor,
        stubs: @stubs,
        params_class: Params::DeletePredictorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_predictor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a predictor backtest export job.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePredictorBacktestExportJobInput}.
    #
    # @option params [String] :predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job to delete.</p>
    #
    # @return [Types::DeletePredictorBacktestExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_predictor_backtest_export_job(
    #     predictor_backtest_export_job_arn: 'PredictorBacktestExportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePredictorBacktestExportJobOutput
    #
    def delete_predictor_backtest_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePredictorBacktestExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePredictorBacktestExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePredictorBacktestExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeletePredictorBacktestExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePredictorBacktestExportJob,
        stubs: @stubs,
        params_class: Params::DeletePredictorBacktestExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_predictor_backtest_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an entire resource tree. This operation will delete the parent resource and
    #             its child resources.</p>
    #         <p>Child resources are resources that were created from another resource. For example,
    #             when a forecast is generated from a predictor, the forecast is the child resource and
    #             the predictor is the parent resource.</p>
    #         <p>Amazon Forecast resources possess the following parent-child resource hierarchies:</p>
    #
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Dataset</b>: dataset import jobs</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Dataset Group</b>: predictors, predictor backtest
    #                     export jobs, forecasts, forecast export jobs</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Predictor</b>: predictor backtest export jobs,
    #                     forecasts, forecast export jobs</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Forecast</b>: forecast export jobs</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>
    #                <code>DeleteResourceTree</code> will only delete Amazon Forecast resources, and will not
    #                 delete datasets or exported files stored in Amazon S3. </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceTreeInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the parent resource to delete. All child resources
    #               of the parent resource will also be deleted.</p>
    #
    # @return [Types::DeleteResourceTreeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_tree(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceTreeOutput
    #
    def delete_resource_tree(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceTreeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceTreeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceTree
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteResourceTree
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceTree,
        stubs: @stubs,
        params_class: Params::DeleteResourceTreeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_tree
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a predictor created using the CreateAutoPredictor operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutoPredictorInput}.
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor.</p>
    #
    # @return [Types::DescribeAutoPredictorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_predictor(
    #     predictor_arn: 'PredictorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutoPredictorOutput
    #   resp.data.predictor_arn #=> String
    #   resp.data.predictor_name #=> String
    #   resp.data.forecast_horizon #=> Integer
    #   resp.data.forecast_types #=> Array<String>
    #   resp.data.forecast_types[0] #=> String
    #   resp.data.forecast_frequency #=> String
    #   resp.data.forecast_dimensions #=> Array<String>
    #   resp.data.forecast_dimensions[0] #=> String
    #   resp.data.dataset_import_job_arns #=> Array<String>
    #   resp.data.dataset_import_job_arns[0] #=> String
    #   resp.data.data_config #=> Types::DataConfig
    #   resp.data.data_config.dataset_group_arn #=> String
    #   resp.data.data_config.attribute_configs #=> Array<AttributeConfig>
    #   resp.data.data_config.attribute_configs[0] #=> Types::AttributeConfig
    #   resp.data.data_config.attribute_configs[0].attribute_name #=> String
    #   resp.data.data_config.attribute_configs[0].transformations #=> Hash<String, String>
    #   resp.data.data_config.attribute_configs[0].transformations['key'] #=> String
    #   resp.data.data_config.additional_datasets #=> Array<AdditionalDataset>
    #   resp.data.data_config.additional_datasets[0] #=> Types::AdditionalDataset
    #   resp.data.data_config.additional_datasets[0].name #=> String
    #   resp.data.data_config.additional_datasets[0].configuration #=> Hash<String, Array<String>>
    #   resp.data.data_config.additional_datasets[0].configuration['key'] #=> Array<String>
    #   resp.data.data_config.additional_datasets[0].configuration['key'][0] #=> String
    #   resp.data.encryption_config #=> Types::EncryptionConfig
    #   resp.data.encryption_config.role_arn #=> String
    #   resp.data.encryption_config.kms_key_arn #=> String
    #   resp.data.reference_predictor_summary #=> Types::ReferencePredictorSummary
    #   resp.data.reference_predictor_summary.arn #=> String
    #   resp.data.reference_predictor_summary.state #=> String, one of ["Active", "Deleted"]
    #   resp.data.estimated_time_remaining_in_minutes #=> Integer
    #   resp.data.status #=> String
    #   resp.data.message #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.optimization_metric #=> String, one of ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #   resp.data.explainability_info #=> Types::ExplainabilityInfo
    #   resp.data.explainability_info.explainability_arn #=> String
    #   resp.data.explainability_info.status #=> String
    #   resp.data.monitor_info #=> Types::MonitorInfo
    #   resp.data.monitor_info.monitor_arn #=> String
    #   resp.data.monitor_info.status #=> String
    #   resp.data.time_alignment_boundary #=> Types::TimeAlignmentBoundary
    #   resp.data.time_alignment_boundary.month #=> String, one of ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
    #   resp.data.time_alignment_boundary.day_of_month #=> Integer
    #   resp.data.time_alignment_boundary.day_of_week #=> String, one of ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #   resp.data.time_alignment_boundary.hour #=> Integer
    #
    def describe_auto_predictor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutoPredictorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutoPredictorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutoPredictor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeAutoPredictor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutoPredictor,
        stubs: @stubs,
        params_class: Params::DescribeAutoPredictorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_auto_predictor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an Amazon Forecast dataset created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation.</p>
    #          <p>In addition to listing the parameters specified in the <code>CreateDataset</code> request,
    #       this operation includes the following dataset properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset.</p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     dataset_arn: 'DatasetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset_arn #=> String
    #   resp.data.dataset_name #=> String
    #   resp.data.domain #=> String, one of ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"]
    #   resp.data.dataset_type #=> String, one of ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"]
    #   resp.data.data_frequency #=> String
    #   resp.data.schema #=> Types::Schema
    #   resp.data.schema.attributes #=> Array<SchemaAttribute>
    #   resp.data.schema.attributes[0] #=> Types::SchemaAttribute
    #   resp.data.schema.attributes[0].attribute_name #=> String
    #   resp.data.schema.attributes[0].attribute_type #=> String, one of ["string", "integer", "float", "timestamp", "geolocation"]
    #   resp.data.encryption_config #=> Types::EncryptionConfig
    #   resp.data.encryption_config.role_arn #=> String
    #   resp.data.encryption_config.kms_key_arn #=> String
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Describes a dataset group created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a>
    #       operation.</p>
    #          <p>In addition to listing the parameters provided in the <code>CreateDatasetGroup</code>
    #       request, this operation includes the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetArns</code> - The datasets belonging to the group.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset group.</p>
    #
    # @return [Types::DescribeDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_group(
    #     dataset_group_arn: 'DatasetGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetGroupOutput
    #   resp.data.dataset_group_name #=> String
    #   resp.data.dataset_group_arn #=> String
    #   resp.data.dataset_arns #=> Array<String>
    #   resp.data.dataset_arns[0] #=> String
    #   resp.data.domain #=> String, one of ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"]
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Describes a dataset import job created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation.</p>
    #          <p>In addition to listing the parameters provided in the <code>CreateDatasetImportJob</code>
    #       request, this operation includes the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataSize</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldStatistics</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetImportJobInput}.
    #
    # @option params [String] :dataset_import_job_arn
    #   <p>The Amazon Resource Name (ARN) of the dataset import job.</p>
    #
    # @return [Types::DescribeDatasetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset_import_job(
    #     dataset_import_job_arn: 'DatasetImportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetImportJobOutput
    #   resp.data.dataset_import_job_name #=> String
    #   resp.data.dataset_import_job_arn #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.timestamp_format #=> String
    #   resp.data.time_zone #=> String
    #   resp.data.use_geolocation_for_time_zone #=> Boolean
    #   resp.data.geolocation_format #=> String
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.s3_config #=> Types::S3Config
    #   resp.data.data_source.s3_config.path #=> String
    #   resp.data.data_source.s3_config.role_arn #=> String
    #   resp.data.data_source.s3_config.kms_key_arn #=> String
    #   resp.data.estimated_time_remaining_in_minutes #=> Integer
    #   resp.data.field_statistics #=> Hash<String, Statistics>
    #   resp.data.field_statistics['key'] #=> Types::Statistics
    #   resp.data.field_statistics['key'].count #=> Integer
    #   resp.data.field_statistics['key'].count_distinct #=> Integer
    #   resp.data.field_statistics['key'].count_null #=> Integer
    #   resp.data.field_statistics['key'].count_nan #=> Integer
    #   resp.data.field_statistics['key'].min #=> String
    #   resp.data.field_statistics['key'].max #=> String
    #   resp.data.field_statistics['key'].avg #=> Float
    #   resp.data.field_statistics['key'].stddev #=> Float
    #   resp.data.field_statistics['key'].count_long #=> Integer
    #   resp.data.field_statistics['key'].count_distinct_long #=> Integer
    #   resp.data.field_statistics['key'].count_null_long #=> Integer
    #   resp.data.field_statistics['key'].count_nan_long #=> Integer
    #   resp.data.data_size #=> Float
    #   resp.data.status #=> String
    #   resp.data.message #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.format #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Describes an Explainability resource created using the <a>CreateExplainability</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExplainabilityInput}.
    #
    # @option params [String] :explainability_arn
    #   <p>The Amazon Resource Name (ARN) of the Explaianability to describe.</p>
    #
    # @return [Types::DescribeExplainabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_explainability(
    #     explainability_arn: 'ExplainabilityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExplainabilityOutput
    #   resp.data.explainability_arn #=> String
    #   resp.data.explainability_name #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.explainability_config #=> Types::ExplainabilityConfig
    #   resp.data.explainability_config.time_series_granularity #=> String, one of ["ALL", "SPECIFIC"]
    #   resp.data.explainability_config.time_point_granularity #=> String, one of ["ALL", "SPECIFIC"]
    #   resp.data.enable_visualization #=> Boolean
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.s3_config #=> Types::S3Config
    #   resp.data.data_source.s3_config.path #=> String
    #   resp.data.data_source.s3_config.role_arn #=> String
    #   resp.data.data_source.s3_config.kms_key_arn #=> String
    #   resp.data.schema #=> Types::Schema
    #   resp.data.schema.attributes #=> Array<SchemaAttribute>
    #   resp.data.schema.attributes[0] #=> Types::SchemaAttribute
    #   resp.data.schema.attributes[0].attribute_name #=> String
    #   resp.data.schema.attributes[0].attribute_type #=> String, one of ["string", "integer", "float", "timestamp", "geolocation"]
    #   resp.data.start_date_time #=> String
    #   resp.data.end_date_time #=> String
    #   resp.data.estimated_time_remaining_in_minutes #=> Integer
    #   resp.data.message #=> String
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #
    def describe_explainability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExplainabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExplainabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExplainability
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeExplainability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExplainability,
        stubs: @stubs,
        params_class: Params::DescribeExplainabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_explainability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an Explainability export created using the <a>CreateExplainabilityExport</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExplainabilityExportInput}.
    #
    # @option params [String] :explainability_export_arn
    #   <p>The Amazon Resource Name (ARN) of the Explainability export.</p>
    #
    # @return [Types::DescribeExplainabilityExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_explainability_export(
    #     explainability_export_arn: 'ExplainabilityExportArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExplainabilityExportOutput
    #   resp.data.explainability_export_arn #=> String
    #   resp.data.explainability_export_name #=> String
    #   resp.data.explainability_arn #=> String
    #   resp.data.destination #=> Types::DataDestination
    #   resp.data.destination.s3_config #=> Types::S3Config
    #   resp.data.destination.s3_config.path #=> String
    #   resp.data.destination.s3_config.role_arn #=> String
    #   resp.data.destination.s3_config.kms_key_arn #=> String
    #   resp.data.message #=> String
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.format #=> String
    #
    def describe_explainability_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExplainabilityExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExplainabilityExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExplainabilityExport
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeExplainabilityExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExplainabilityExport,
        stubs: @stubs,
        params_class: Params::DescribeExplainabilityExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_explainability_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a forecast created using the <a>CreateForecast</a> operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreateForecast</code> request,
    #       this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetGroupArn</code> - The dataset group that provided the training
    #           data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeForecastInput}.
    #
    # @option params [String] :forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast.</p>
    #
    # @return [Types::DescribeForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_forecast(
    #     forecast_arn: 'ForecastArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeForecastOutput
    #   resp.data.forecast_arn #=> String
    #   resp.data.forecast_name #=> String
    #   resp.data.forecast_types #=> Array<String>
    #   resp.data.forecast_types[0] #=> String
    #   resp.data.predictor_arn #=> String
    #   resp.data.dataset_group_arn #=> String
    #   resp.data.estimated_time_remaining_in_minutes #=> Integer
    #   resp.data.status #=> String
    #   resp.data.message #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.time_series_selector #=> Types::TimeSeriesSelector
    #   resp.data.time_series_selector.time_series_identifiers #=> Types::TimeSeriesIdentifiers
    #   resp.data.time_series_selector.time_series_identifiers.data_source #=> Types::DataSource
    #   resp.data.time_series_selector.time_series_identifiers.data_source.s3_config #=> Types::S3Config
    #   resp.data.time_series_selector.time_series_identifiers.data_source.s3_config.path #=> String
    #   resp.data.time_series_selector.time_series_identifiers.data_source.s3_config.role_arn #=> String
    #   resp.data.time_series_selector.time_series_identifiers.data_source.s3_config.kms_key_arn #=> String
    #   resp.data.time_series_selector.time_series_identifiers.schema #=> Types::Schema
    #   resp.data.time_series_selector.time_series_identifiers.schema.attributes #=> Array<SchemaAttribute>
    #   resp.data.time_series_selector.time_series_identifiers.schema.attributes[0] #=> Types::SchemaAttribute
    #   resp.data.time_series_selector.time_series_identifiers.schema.attributes[0].attribute_name #=> String
    #   resp.data.time_series_selector.time_series_identifiers.schema.attributes[0].attribute_type #=> String, one of ["string", "integer", "float", "timestamp", "geolocation"]
    #   resp.data.time_series_selector.time_series_identifiers.format #=> String
    #
    def describe_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeForecast
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeForecast,
        stubs: @stubs,
        params_class: Params::DescribeForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a forecast export job created using the <a>CreateForecastExportJob</a> operation.</p>
    #          <p>In addition to listing the properties provided by the user in the
    #         <code>CreateForecastExportJob</code> request, this operation lists the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeForecastExportJobInput}.
    #
    # @option params [String] :forecast_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast export job.</p>
    #
    # @return [Types::DescribeForecastExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_forecast_export_job(
    #     forecast_export_job_arn: 'ForecastExportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeForecastExportJobOutput
    #   resp.data.forecast_export_job_arn #=> String
    #   resp.data.forecast_export_job_name #=> String
    #   resp.data.forecast_arn #=> String
    #   resp.data.destination #=> Types::DataDestination
    #   resp.data.destination.s3_config #=> Types::S3Config
    #   resp.data.destination.s3_config.path #=> String
    #   resp.data.destination.s3_config.role_arn #=> String
    #   resp.data.destination.s3_config.kms_key_arn #=> String
    #   resp.data.message #=> String
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.format #=> String
    #
    def describe_forecast_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeForecastExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeForecastExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeForecastExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeForecastExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeForecastExportJob,
        stubs: @stubs,
        params_class: Params::DescribeForecastExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_forecast_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a monitor resource. In addition to listing the properties provided in the <a>CreateMonitor</a> request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Baseline</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastEvaluationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastEvaluationState</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeMonitorInput}.
    #
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to describe.</p>
    #
    # @return [Types::DescribeMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_monitor(
    #     monitor_arn: 'MonitorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMonitorOutput
    #   resp.data.monitor_name #=> String
    #   resp.data.monitor_arn #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.status #=> String
    #   resp.data.last_evaluation_time #=> Time
    #   resp.data.last_evaluation_state #=> String
    #   resp.data.baseline #=> Types::Baseline
    #   resp.data.baseline.predictor_baseline #=> Types::PredictorBaseline
    #   resp.data.baseline.predictor_baseline.baseline_metrics #=> Array<BaselineMetric>
    #   resp.data.baseline.predictor_baseline.baseline_metrics[0] #=> Types::BaselineMetric
    #   resp.data.baseline.predictor_baseline.baseline_metrics[0].name #=> String
    #   resp.data.baseline.predictor_baseline.baseline_metrics[0].value #=> Float
    #   resp.data.message #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.estimated_evaluation_time_remaining_in_minutes #=> Integer
    #
    def describe_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMonitor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMonitor,
        stubs: @stubs,
        params_class: Params::DescribeMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p> This operation is only valid for legacy predictors created with CreatePredictor. If you
    #         are not using a legacy predictor, use <a>DescribeAutoPredictor</a>.</p>
    #          </note>
    #          <p>Describes a predictor created using the <a>CreatePredictor</a>
    #       operation.</p>
    #          <p>In addition to listing the properties provided in the <code>CreatePredictor</code>
    #       request, this operation lists the following properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DatasetImportJobArns</code> - The dataset import jobs used to import training
    #           data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutoMLAlgorithmArns</code> - If AutoML is performed, the algorithms that were
    #           evaluated.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastModificationTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Status</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Message</code> - If an error occurred, information about the error.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribePredictorInput}.
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor that you want information about.</p>
    #
    # @return [Types::DescribePredictorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_predictor(
    #     predictor_arn: 'PredictorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePredictorOutput
    #   resp.data.predictor_arn #=> String
    #   resp.data.predictor_name #=> String
    #   resp.data.algorithm_arn #=> String
    #   resp.data.auto_ml_algorithm_arns #=> Array<String>
    #   resp.data.auto_ml_algorithm_arns[0] #=> String
    #   resp.data.forecast_horizon #=> Integer
    #   resp.data.forecast_types #=> Array<String>
    #   resp.data.forecast_types[0] #=> String
    #   resp.data.perform_auto_ml #=> Boolean
    #   resp.data.auto_ml_override_strategy #=> String, one of ["LatencyOptimized", "AccuracyOptimized"]
    #   resp.data.perform_hpo #=> Boolean
    #   resp.data.training_parameters #=> Hash<String, String>
    #   resp.data.training_parameters['key'] #=> String
    #   resp.data.evaluation_parameters #=> Types::EvaluationParameters
    #   resp.data.evaluation_parameters.number_of_backtest_windows #=> Integer
    #   resp.data.evaluation_parameters.back_test_window_offset #=> Integer
    #   resp.data.hpo_config #=> Types::HyperParameterTuningJobConfig
    #   resp.data.hpo_config.parameter_ranges #=> Types::ParameterRanges
    #   resp.data.hpo_config.parameter_ranges.categorical_parameter_ranges #=> Array<CategoricalParameterRange>
    #   resp.data.hpo_config.parameter_ranges.categorical_parameter_ranges[0] #=> Types::CategoricalParameterRange
    #   resp.data.hpo_config.parameter_ranges.categorical_parameter_ranges[0].name #=> String
    #   resp.data.hpo_config.parameter_ranges.categorical_parameter_ranges[0].values #=> Array<String>
    #   resp.data.hpo_config.parameter_ranges.categorical_parameter_ranges[0].values[0] #=> String
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges #=> Array<ContinuousParameterRange>
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges[0] #=> Types::ContinuousParameterRange
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges[0].name #=> String
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges[0].max_value #=> Float
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges[0].min_value #=> Float
    #   resp.data.hpo_config.parameter_ranges.continuous_parameter_ranges[0].scaling_type #=> String, one of ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges #=> Array<IntegerParameterRange>
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges[0] #=> Types::IntegerParameterRange
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges[0].name #=> String
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges[0].max_value #=> Integer
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges[0].min_value #=> Integer
    #   resp.data.hpo_config.parameter_ranges.integer_parameter_ranges[0].scaling_type #=> String, one of ["Auto", "Linear", "Logarithmic", "ReverseLogarithmic"]
    #   resp.data.input_data_config #=> Types::InputDataConfig
    #   resp.data.input_data_config.dataset_group_arn #=> String
    #   resp.data.input_data_config.supplementary_features #=> Array<SupplementaryFeature>
    #   resp.data.input_data_config.supplementary_features[0] #=> Types::SupplementaryFeature
    #   resp.data.input_data_config.supplementary_features[0].name #=> String
    #   resp.data.input_data_config.supplementary_features[0].value #=> String
    #   resp.data.featurization_config #=> Types::FeaturizationConfig
    #   resp.data.featurization_config.forecast_frequency #=> String
    #   resp.data.featurization_config.forecast_dimensions #=> Array<String>
    #   resp.data.featurization_config.forecast_dimensions[0] #=> String
    #   resp.data.featurization_config.featurizations #=> Array<Featurization>
    #   resp.data.featurization_config.featurizations[0] #=> Types::Featurization
    #   resp.data.featurization_config.featurizations[0].attribute_name #=> String
    #   resp.data.featurization_config.featurizations[0].featurization_pipeline #=> Array<FeaturizationMethod>
    #   resp.data.featurization_config.featurizations[0].featurization_pipeline[0] #=> Types::FeaturizationMethod
    #   resp.data.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_name #=> String, one of ["filling"]
    #   resp.data.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_parameters #=> Hash<String, String>
    #   resp.data.featurization_config.featurizations[0].featurization_pipeline[0].featurization_method_parameters['key'] #=> String
    #   resp.data.encryption_config #=> Types::EncryptionConfig
    #   resp.data.encryption_config.role_arn #=> String
    #   resp.data.encryption_config.kms_key_arn #=> String
    #   resp.data.predictor_execution_details #=> Types::PredictorExecutionDetails
    #   resp.data.predictor_execution_details.predictor_executions #=> Array<PredictorExecution>
    #   resp.data.predictor_execution_details.predictor_executions[0] #=> Types::PredictorExecution
    #   resp.data.predictor_execution_details.predictor_executions[0].algorithm_arn #=> String
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows #=> Array<TestWindowSummary>
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows[0] #=> Types::TestWindowSummary
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows[0].test_window_start #=> Time
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows[0].test_window_end #=> Time
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows[0].status #=> String
    #   resp.data.predictor_execution_details.predictor_executions[0].test_windows[0].message #=> String
    #   resp.data.estimated_time_remaining_in_minutes #=> Integer
    #   resp.data.is_auto_predictor #=> Boolean
    #   resp.data.dataset_import_job_arns #=> Array<String>
    #   resp.data.status #=> String
    #   resp.data.message #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.optimization_metric #=> String, one of ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #
    def describe_predictor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePredictorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePredictorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePredictor
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePredictor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePredictor,
        stubs: @stubs,
        params_class: Params::DescribePredictorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_predictor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a predictor backtest export job created using the <a>CreatePredictorBacktestExportJob</a> operation.</p>
    #         <p>In addition to listing the properties provided by the user in the
    #                 <code>CreatePredictorBacktestExportJob</code> request, this operation lists the
    #             following properties:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <code>CreationTime</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>LastModificationTime</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>Status</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Message</code> (if an error occurred)</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribePredictorBacktestExportJobInput}.
    #
    # @option params [String] :predictor_backtest_export_job_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor backtest export job.</p>
    #
    # @return [Types::DescribePredictorBacktestExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_predictor_backtest_export_job(
    #     predictor_backtest_export_job_arn: 'PredictorBacktestExportJobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePredictorBacktestExportJobOutput
    #   resp.data.predictor_backtest_export_job_arn #=> String
    #   resp.data.predictor_backtest_export_job_name #=> String
    #   resp.data.predictor_arn #=> String
    #   resp.data.destination #=> Types::DataDestination
    #   resp.data.destination.s3_config #=> Types::S3Config
    #   resp.data.destination.s3_config.path #=> String
    #   resp.data.destination.s3_config.role_arn #=> String
    #   resp.data.destination.s3_config.kms_key_arn #=> String
    #   resp.data.message #=> String
    #   resp.data.status #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.format #=> String
    #
    def describe_predictor_backtest_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePredictorBacktestExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePredictorBacktestExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePredictorBacktestExportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePredictorBacktestExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePredictorBacktestExportJob,
        stubs: @stubs,
        params_class: Params::DescribePredictorBacktestExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_predictor_backtest_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides metrics on the accuracy of the models that were trained by the <a>CreatePredictor</a> operation. Use metrics to see how well the model performed and
    #       to decide whether to use the predictor to generate a forecast. For more information, see
    #         <a href="https://docs.aws.amazon.com/forecast/latest/dg/metrics.html">Predictor
    #         Metrics</a>.</p>
    #          <p>This operation generates metrics for each backtest window that was evaluated. The number
    #       of backtest windows (<code>NumberOfBacktestWindows</code>) is specified using the <a>EvaluationParameters</a> object, which is optionally included in the
    #         <code>CreatePredictor</code> request. If <code>NumberOfBacktestWindows</code> isn't
    #       specified, the number defaults to one.</p>
    #          <p>The parameters of the <code>filling</code> method determine which items contribute to the
    #       metrics. If you want all items to contribute, specify <code>zero</code>. If you want only
    #       those items that have complete data in the range being evaluated to contribute, specify
    #         <code>nan</code>. For more information, see <a>FeaturizationMethod</a>.</p>
    #
    #          <note>
    #             <p>Before you can get accuracy metrics, the <code>Status</code> of the predictor must be
    #           <code>ACTIVE</code>, signifying that training has completed. To get the status, use the
    #           <a>DescribePredictor</a> operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetAccuracyMetricsInput}.
    #
    # @option params [String] :predictor_arn
    #   <p>The Amazon Resource Name (ARN) of the predictor to get metrics for.</p>
    #
    # @return [Types::GetAccuracyMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_accuracy_metrics(
    #     predictor_arn: 'PredictorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccuracyMetricsOutput
    #   resp.data.predictor_evaluation_results #=> Array<EvaluationResult>
    #   resp.data.predictor_evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.predictor_evaluation_results[0].algorithm_arn #=> String
    #   resp.data.predictor_evaluation_results[0].test_windows #=> Array<WindowSummary>
    #   resp.data.predictor_evaluation_results[0].test_windows[0] #=> Types::WindowSummary
    #   resp.data.predictor_evaluation_results[0].test_windows[0].test_window_start #=> Time
    #   resp.data.predictor_evaluation_results[0].test_windows[0].test_window_end #=> Time
    #   resp.data.predictor_evaluation_results[0].test_windows[0].item_count #=> Integer
    #   resp.data.predictor_evaluation_results[0].test_windows[0].evaluation_type #=> String, one of ["SUMMARY", "COMPUTED"]
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics #=> Types::Metrics
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.rmse #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses #=> Array<WeightedQuantileLoss>
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses[0] #=> Types::WeightedQuantileLoss
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses[0].quantile #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.weighted_quantile_losses[0].loss_value #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics #=> Array<ErrorMetric>
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0] #=> Types::ErrorMetric
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0].forecast_type #=> String
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0].wape #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0].rmse #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0].mase #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.error_metrics[0].mape #=> Float
    #   resp.data.predictor_evaluation_results[0].test_windows[0].metrics.average_weighted_quantile_loss #=> Float
    #   resp.data.is_auto_predictor #=> Boolean
    #   resp.data.auto_ml_override_strategy #=> String, one of ["LatencyOptimized", "AccuracyOptimized"]
    #   resp.data.optimization_metric #=> String, one of ["WAPE", "RMSE", "AverageWeightedQuantileLoss", "MASE", "MAPE"]
    #
    def get_accuracy_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccuracyMetricsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccuracyMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccuracyMetrics
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::GetAccuracyMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccuracyMetrics,
        stubs: @stubs,
        params_class: Params::GetAccuracyMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_accuracy_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of dataset groups created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html">CreateDatasetGroup</a> operation.
    #       For each dataset group, this operation returns a summary of its properties, including its
    #       Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the
    #       dataset group ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #       operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @return [Types::ListDatasetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetGroupsOutput
    #   resp.data.dataset_groups #=> Array<DatasetGroupSummary>
    #   resp.data.dataset_groups[0] #=> Types::DatasetGroupSummary
    #   resp.data.dataset_groups[0].dataset_group_arn #=> String
    #   resp.data.dataset_groups[0].dataset_group_name #=> String
    #   resp.data.dataset_groups[0].creation_time #=> Time
    #   resp.data.dataset_groups[0].last_modification_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
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

    # <p>Returns a list of dataset import jobs created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html">CreateDatasetImportJob</a>
    #       operation. For each import job, this operation returns a summary of its properties, including
    #       its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the
    #       ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html">DescribeDatasetImportJob</a>
    #       operation. You can filter the list by providing an array of <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html">Filter</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetImportJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the datasets that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the datasets that match the statement, specify
    #               <code>IS</code>. To exclude matching datasets, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all dataset import jobs whose status is ACTIVE, you specify the
    #         following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    #
    # @return [Types::ListDatasetImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_import_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetImportJobsOutput
    #   resp.data.dataset_import_jobs #=> Array<DatasetImportJobSummary>
    #   resp.data.dataset_import_jobs[0] #=> Types::DatasetImportJobSummary
    #   resp.data.dataset_import_jobs[0].dataset_import_job_arn #=> String
    #   resp.data.dataset_import_jobs[0].dataset_import_job_name #=> String
    #   resp.data.dataset_import_jobs[0].data_source #=> Types::DataSource
    #   resp.data.dataset_import_jobs[0].data_source.s3_config #=> Types::S3Config
    #   resp.data.dataset_import_jobs[0].data_source.s3_config.path #=> String
    #   resp.data.dataset_import_jobs[0].data_source.s3_config.role_arn #=> String
    #   resp.data.dataset_import_jobs[0].data_source.s3_config.kms_key_arn #=> String
    #   resp.data.dataset_import_jobs[0].status #=> String
    #   resp.data.dataset_import_jobs[0].message #=> String
    #   resp.data.dataset_import_jobs[0].creation_time #=> Time
    #   resp.data.dataset_import_jobs[0].last_modification_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
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

    # <p>Returns a list of datasets created using the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html">CreateDataset</a> operation. For each
    #       dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned.
    #       To retrieve the complete set of properties, use the ARN with the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html">DescribeDataset</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.datasets #=> Array<DatasetSummary>
    #   resp.data.datasets[0] #=> Types::DatasetSummary
    #   resp.data.datasets[0].dataset_arn #=> String
    #   resp.data.datasets[0].dataset_name #=> String
    #   resp.data.datasets[0].dataset_type #=> String, one of ["TARGET_TIME_SERIES", "RELATED_TIME_SERIES", "ITEM_METADATA"]
    #   resp.data.datasets[0].domain #=> String, one of ["RETAIL", "CUSTOM", "INVENTORY_PLANNING", "EC2_CAPACITY", "WORK_FORCE", "WEB_TRAFFIC", "METRICS"]
    #   resp.data.datasets[0].creation_time #=> Time
    #   resp.data.datasets[0].last_modification_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
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

    # <p>Returns a list of Explainability resources created using the <a>CreateExplainability</a> operation. This operation returns a summary for
    #             each Explainability. You can filter the list using an array of <a>Filter</a>
    #             objects.</p>
    #         <p>To retrieve the complete set of properties for a particular Explainability resource,
    #             use the ARN with the <a>DescribeExplainability</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExplainabilitiesInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items returned in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the resources that match the statement from the list. The match
    #               statement consists of a key and a value.</p>
    #           <p>
    #               <b>Filter properties</b>
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListExplainabilitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_explainabilities(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExplainabilitiesOutput
    #   resp.data.explainabilities #=> Array<ExplainabilitySummary>
    #   resp.data.explainabilities[0] #=> Types::ExplainabilitySummary
    #   resp.data.explainabilities[0].explainability_arn #=> String
    #   resp.data.explainabilities[0].explainability_name #=> String
    #   resp.data.explainabilities[0].resource_arn #=> String
    #   resp.data.explainabilities[0].explainability_config #=> Types::ExplainabilityConfig
    #   resp.data.explainabilities[0].explainability_config.time_series_granularity #=> String, one of ["ALL", "SPECIFIC"]
    #   resp.data.explainabilities[0].explainability_config.time_point_granularity #=> String, one of ["ALL", "SPECIFIC"]
    #   resp.data.explainabilities[0].status #=> String
    #   resp.data.explainabilities[0].message #=> String
    #   resp.data.explainabilities[0].creation_time #=> Time
    #   resp.data.explainabilities[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_explainabilities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExplainabilitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExplainabilitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExplainabilities
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListExplainabilities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExplainabilities,
        stubs: @stubs,
        params_class: Params::ListExplainabilitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_explainabilities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Explainability exports created using the <a>CreateExplainabilityExport</a> operation. This operation returns a summary
    #             for each Explainability export. You can filter the list using an array of <a>Filter</a> objects.</p>
    #         <p>To retrieve the complete set of properties for a particular Explainability export, use
    #             the ARN with the <a>DescribeExplainability</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExplainabilityExportsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude resources that match the statement from the list. The match statement
    #               consists of a key and a value.</p>
    #           <p>
    #               <b>Filter properties</b>
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>ResourceArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListExplainabilityExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_explainability_exports(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExplainabilityExportsOutput
    #   resp.data.explainability_exports #=> Array<ExplainabilityExportSummary>
    #   resp.data.explainability_exports[0] #=> Types::ExplainabilityExportSummary
    #   resp.data.explainability_exports[0].explainability_export_arn #=> String
    #   resp.data.explainability_exports[0].explainability_export_name #=> String
    #   resp.data.explainability_exports[0].destination #=> Types::DataDestination
    #   resp.data.explainability_exports[0].destination.s3_config #=> Types::S3Config
    #   resp.data.explainability_exports[0].destination.s3_config.path #=> String
    #   resp.data.explainability_exports[0].destination.s3_config.role_arn #=> String
    #   resp.data.explainability_exports[0].destination.s3_config.kms_key_arn #=> String
    #   resp.data.explainability_exports[0].status #=> String
    #   resp.data.explainability_exports[0].message #=> String
    #   resp.data.explainability_exports[0].creation_time #=> Time
    #   resp.data.explainability_exports[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_explainability_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExplainabilityExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExplainabilityExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExplainabilityExports
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListExplainabilityExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExplainabilityExports,
        stubs: @stubs,
        params_class: Params::ListExplainabilityExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_explainability_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of forecast export jobs created using the <a>CreateForecastExportJob</a> operation. For each forecast export job, this operation
    #       returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the
    #       complete set of properties, use the ARN with the <a>DescribeForecastExportJob</a>
    #       operation. You can filter the list using an array of <a>Filter</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListForecastExportJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecast export jobs that match the statement from the list, respectively. The
    #         match statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecast export jobs that match the statement,
    #             specify <code>IS</code>. To exclude matching forecast export jobs, specify
    #               <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>ForecastArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all jobs that export a forecast named
    #           <i>electricityforecast</i>, specify the following filter:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "ForecastArn", "Value":
    #           "arn:aws:forecast:us-west-2:<acct-id>:forecast/electricityforecast" } ]</code>
    #            </p>
    #
    # @return [Types::ListForecastExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_forecast_export_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListForecastExportJobsOutput
    #   resp.data.forecast_export_jobs #=> Array<ForecastExportJobSummary>
    #   resp.data.forecast_export_jobs[0] #=> Types::ForecastExportJobSummary
    #   resp.data.forecast_export_jobs[0].forecast_export_job_arn #=> String
    #   resp.data.forecast_export_jobs[0].forecast_export_job_name #=> String
    #   resp.data.forecast_export_jobs[0].destination #=> Types::DataDestination
    #   resp.data.forecast_export_jobs[0].destination.s3_config #=> Types::S3Config
    #   resp.data.forecast_export_jobs[0].destination.s3_config.path #=> String
    #   resp.data.forecast_export_jobs[0].destination.s3_config.role_arn #=> String
    #   resp.data.forecast_export_jobs[0].destination.s3_config.kms_key_arn #=> String
    #   resp.data.forecast_export_jobs[0].status #=> String
    #   resp.data.forecast_export_jobs[0].message #=> String
    #   resp.data.forecast_export_jobs[0].creation_time #=> Time
    #   resp.data.forecast_export_jobs[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_forecast_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListForecastExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListForecastExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListForecastExportJobs
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListForecastExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListForecastExportJobs,
        stubs: @stubs,
        params_class: Params::ListForecastExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_forecast_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of forecasts created using the <a>CreateForecast</a> operation.
    #       For each forecast, this operation returns a summary of its properties, including its Amazon
    #       Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the
    #         <a>DescribeForecast</a> operation. You can filter the list using an array of
    #         <a>Filter</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListForecastsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the forecasts that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the forecasts that match the statement, specify
    #               <code>IS</code>. To exclude matching forecasts, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code>, <code>PredictorArn</code>, and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all forecasts whose status is not ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS_NOT", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    #
    # @return [Types::ListForecastsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_forecasts(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListForecastsOutput
    #   resp.data.forecasts #=> Array<ForecastSummary>
    #   resp.data.forecasts[0] #=> Types::ForecastSummary
    #   resp.data.forecasts[0].forecast_arn #=> String
    #   resp.data.forecasts[0].forecast_name #=> String
    #   resp.data.forecasts[0].predictor_arn #=> String
    #   resp.data.forecasts[0].created_using_auto_predictor #=> Boolean
    #   resp.data.forecasts[0].dataset_group_arn #=> String
    #   resp.data.forecasts[0].status #=> String
    #   resp.data.forecasts[0].message #=> String
    #   resp.data.forecasts[0].creation_time #=> Time
    #   resp.data.forecasts[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_forecasts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListForecastsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListForecastsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListForecasts
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListForecasts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListForecasts,
        stubs: @stubs,
        params_class: Params::ListForecastsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_forecasts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the monitoring evaluation results and predictor events collected by
    #          the monitor resource during different windows of time.</p>
    #          <p>For information about monitoring see <a>predictor-monitoring</a>. For
    #          more information about retrieving monitoring results see <a href="https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html">Viewing Monitoring Results</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMonitorEvaluationsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of monitoring results to return.</p>
    #
    # @option params [String] :monitor_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to get results from.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is
    #                  <code>EvaluationState</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match. Valid values are only <code>SUCCESS</code> or <code>FAILURE</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list only successful monitor evaluations, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "EvaluationState", "Value": "SUCCESS" } ]</code>
    #            </p>
    #
    # @return [Types::ListMonitorEvaluationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitor_evaluations(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     monitor_arn: 'MonitorArn', # required
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMonitorEvaluationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.predictor_monitor_evaluations #=> Array<PredictorMonitorEvaluation>
    #   resp.data.predictor_monitor_evaluations[0] #=> Types::PredictorMonitorEvaluation
    #   resp.data.predictor_monitor_evaluations[0].resource_arn #=> String
    #   resp.data.predictor_monitor_evaluations[0].monitor_arn #=> String
    #   resp.data.predictor_monitor_evaluations[0].evaluation_time #=> Time
    #   resp.data.predictor_monitor_evaluations[0].evaluation_state #=> String
    #   resp.data.predictor_monitor_evaluations[0].window_start_datetime #=> Time
    #   resp.data.predictor_monitor_evaluations[0].window_end_datetime #=> Time
    #   resp.data.predictor_monitor_evaluations[0].predictor_event #=> Types::PredictorEvent
    #   resp.data.predictor_monitor_evaluations[0].predictor_event.detail #=> String
    #   resp.data.predictor_monitor_evaluations[0].predictor_event.datetime #=> Time
    #   resp.data.predictor_monitor_evaluations[0].monitor_data_source #=> Types::MonitorDataSource
    #   resp.data.predictor_monitor_evaluations[0].monitor_data_source.dataset_import_job_arn #=> String
    #   resp.data.predictor_monitor_evaluations[0].monitor_data_source.forecast_arn #=> String
    #   resp.data.predictor_monitor_evaluations[0].monitor_data_source.predictor_arn #=> String
    #   resp.data.predictor_monitor_evaluations[0].metric_results #=> Array<MetricResult>
    #   resp.data.predictor_monitor_evaluations[0].metric_results[0] #=> Types::MetricResult
    #   resp.data.predictor_monitor_evaluations[0].metric_results[0].metric_name #=> String
    #   resp.data.predictor_monitor_evaluations[0].metric_results[0].metric_value #=> Float
    #   resp.data.predictor_monitor_evaluations[0].num_items_evaluated #=> Integer
    #   resp.data.predictor_monitor_evaluations[0].message #=> String
    #
    def list_monitor_evaluations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMonitorEvaluationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMonitorEvaluationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMonitorEvaluations
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListMonitorEvaluations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMonitorEvaluations,
        stubs: @stubs,
        params_class: Params::ListMonitorEvaluationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_monitor_evaluations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of monitors created with the <a>CreateMonitor</a> operation and <a>CreateAutoPredictor</a> operation. For each monitor resource, this operation returns of a summary of its properties, including its Amazon Resource Name (ARN). You
    #          can retrieve a complete set of properties of a monitor resource by specify the monitor's ARN in the <a>DescribeMonitor</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMonitorsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #            <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #            request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of monitors to include in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #            condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #            include or exclude the resources that match the statement from the list. The match
    #            statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                  <code>IS</code> and <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. The only valid value is
    #                  <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all monitors who's status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]</code>
    #            </p>
    #
    # @return [Types::ListMonitorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitors(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMonitorsOutput
    #   resp.data.monitors #=> Array<MonitorSummary>
    #   resp.data.monitors[0] #=> Types::MonitorSummary
    #   resp.data.monitors[0].monitor_arn #=> String
    #   resp.data.monitors[0].monitor_name #=> String
    #   resp.data.monitors[0].resource_arn #=> String
    #   resp.data.monitors[0].status #=> String
    #   resp.data.monitors[0].creation_time #=> Time
    #   resp.data.monitors[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_monitors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMonitorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMonitorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMonitors
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListMonitors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMonitors,
        stubs: @stubs,
        params_class: Params::ListMonitorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_monitors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of predictor backtest export jobs created using the <a>CreatePredictorBacktestExportJob</a> operation. This operation returns a
    #             summary for each backtest export job. You can filter the list using an array of <a>Filter</a> objects.</p>
    #         <p>To retrieve the complete set of properties for a particular backtest export job, use
    #             the ARN with the <a>DescribePredictorBacktestExportJob</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPredictorBacktestExportJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #               NextToken. To retrieve the next set of results, use the token in the next request.
    #               Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, provide a condition and a match statement. The
    #               condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to
    #               include or exclude the predictor backtest export jobs that match the statement from the
    #               list. The match statement consists of a key and a value.</p>
    #           <p>
    #               <b>Filter properties</b>
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are
    #                           <code>IS</code> and <code>IS_NOT</code>. To include the predictor backtest
    #                       export jobs that match the statement, specify <code>IS</code>. To exclude
    #                       matching predictor backtest export jobs, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #                           <code>PredictorArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListPredictorBacktestExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_predictor_backtest_export_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPredictorBacktestExportJobsOutput
    #   resp.data.predictor_backtest_export_jobs #=> Array<PredictorBacktestExportJobSummary>
    #   resp.data.predictor_backtest_export_jobs[0] #=> Types::PredictorBacktestExportJobSummary
    #   resp.data.predictor_backtest_export_jobs[0].predictor_backtest_export_job_arn #=> String
    #   resp.data.predictor_backtest_export_jobs[0].predictor_backtest_export_job_name #=> String
    #   resp.data.predictor_backtest_export_jobs[0].destination #=> Types::DataDestination
    #   resp.data.predictor_backtest_export_jobs[0].destination.s3_config #=> Types::S3Config
    #   resp.data.predictor_backtest_export_jobs[0].destination.s3_config.path #=> String
    #   resp.data.predictor_backtest_export_jobs[0].destination.s3_config.role_arn #=> String
    #   resp.data.predictor_backtest_export_jobs[0].destination.s3_config.kms_key_arn #=> String
    #   resp.data.predictor_backtest_export_jobs[0].status #=> String
    #   resp.data.predictor_backtest_export_jobs[0].message #=> String
    #   resp.data.predictor_backtest_export_jobs[0].creation_time #=> Time
    #   resp.data.predictor_backtest_export_jobs[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_predictor_backtest_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPredictorBacktestExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPredictorBacktestExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPredictorBacktestExportJobs
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListPredictorBacktestExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPredictorBacktestExportJobs,
        stubs: @stubs,
        params_class: Params::ListPredictorBacktestExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_predictor_backtest_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of predictors created using the <a>CreateAutoPredictor</a> or
    #         <a>CreatePredictor</a> operations. For each predictor, this operation returns a
    #       summary of its properties, including its Amazon Resource Name (ARN). </p>
    #          <p>You can retrieve the complete set of properties by using the ARN with the <a>DescribeAutoPredictor</a> and <a>DescribePredictor</a> operations. You
    #       can filter the list using an array of <a>Filter</a> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPredictorsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of filters. For each filter, you provide a condition and a match statement. The
    #         condition is either <code>IS</code> or <code>IS_NOT</code>, which specifies whether to include
    #         or exclude the predictors that match the statement from the list, respectively. The match
    #         statement consists of a key and a value.</p>
    #            <p>
    #               <b>Filter properties</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Condition</code> - The condition to apply. Valid values are <code>IS</code> and
    #               <code>IS_NOT</code>. To include the predictors that match the statement, specify
    #               <code>IS</code>. To exclude matching predictors, specify <code>IS_NOT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key</code> - The name of the parameter to filter on. Valid values are
    #               <code>DatasetGroupArn</code> and <code>Status</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Value</code> - The value to match.</p>
    #               </li>
    #            </ul>
    #            <p>For example, to list all predictors whose status is ACTIVE, you would specify:</p>
    #            <p>
    #               <code>"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" }
    #         ]</code>
    #            </p>
    #
    # @return [Types::ListPredictorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_predictors(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         condition: 'IS' # required - accepts ["IS", "IS_NOT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPredictorsOutput
    #   resp.data.predictors #=> Array<PredictorSummary>
    #   resp.data.predictors[0] #=> Types::PredictorSummary
    #   resp.data.predictors[0].predictor_arn #=> String
    #   resp.data.predictors[0].predictor_name #=> String
    #   resp.data.predictors[0].dataset_group_arn #=> String
    #   resp.data.predictors[0].is_auto_predictor #=> Boolean
    #   resp.data.predictors[0].reference_predictor_summary #=> Types::ReferencePredictorSummary
    #   resp.data.predictors[0].reference_predictor_summary.arn #=> String
    #   resp.data.predictors[0].reference_predictor_summary.state #=> String, one of ["Active", "Deleted"]
    #   resp.data.predictors[0].status #=> String
    #   resp.data.predictors[0].message #=> String
    #   resp.data.predictors[0].creation_time #=> Time
    #   resp.data.predictors[0].last_modification_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_predictors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPredictorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPredictorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPredictors
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListPredictors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPredictors,
        stubs: @stubs,
        params_class: Params::ListPredictorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_predictors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for an Amazon Forecast resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Resumes a stopped monitor resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ResumeResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the monitor resource to resume.</p>
    #
    # @return [Types::ResumeResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeResourceOutput
    #
    def resume_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeResource
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::ResumeResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeResource,
        stubs: @stubs,
        params_class: Params::ResumeResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a resource.</p>
    #          <p>The resource undergoes the following states: <code>CREATE_STOPPING</code> and
    #             <code>CREATE_STOPPED</code>. You cannot resume a resource once it has been
    #          stopped.</p>
    #          <p>This operation can be applied to the following resources (and their corresponding child
    #          resources):</p>
    #          <ul>
    #             <li>
    #                <p>Dataset Import Job</p>
    #             </li>
    #             <li>
    #                <p>Predictor Job</p>
    #             </li>
    #             <li>
    #                <p>Forecast Job</p>
    #             </li>
    #             <li>
    #                <p>Forecast Export Job</p>
    #             </li>
    #             <li>
    #                <p>Predictor Backtest Export Job</p>
    #             </li>
    #             <li>
    #                <p>Explainability Job</p>
    #             </li>
    #             <li>
    #                <p>Explainability Export Job</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StopResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to stop. The supported ARNs
    #            are <code>DatasetImportJobArn</code>, <code>PredictorArn</code>,
    #               <code>PredictorBacktestExportJobArn</code>, <code>ForecastArn</code>,
    #               <code>ForecastExportJobArn</code>, <code>ExplainabilityArn</code>, and
    #               <code>ExplainabilityExportArn</code>. </p>
    #
    # @return [Types::StopResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopResourceOutput
    #
    def stop_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopResource
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::LimitExceededException]),
        data_parser: Parsers::StopResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopResource,
        stubs: @stubs,
        params_class: Params::StopResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #       If existing tags on a resource are not specified in the request parameters, they are not
    #       changed. When a resource is deleted, the tags associated with that resource are also
    #       deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50.</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only one
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources, remember that
    #             other services may have restrictions on allowed characters. Generally allowed characters
    #             are: letters, numbers, and spaces representable in UTF-8, and the following characters: +
    #             - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination
    #             of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag
    #             keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as
    #             its prefix but the key does not, then Forecast considers it to be a user tag and will
    #             count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do
    #             not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::LimitExceededException]),
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

    # <p>Deletes the specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags.
    #       </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Replaces the datasets in a dataset group with the specified datasets.</p>
    #          <note>
    #             <p>The <code>Status</code> of the dataset group must be <code>ACTIVE</code> before you can
    #         use the dataset group to create a predictor. Use the <a href="https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html">DescribeDatasetGroup</a>
    #         operation to get the status.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetGroupInput}.
    #
    # @option params [String] :dataset_group_arn
    #   <p>The ARN of the dataset group.</p>
    #
    # @option params [Array<String>] :dataset_arns
    #   <p>An array of the Amazon Resource Names (ARNs) of the datasets to add to the dataset
    #         group.</p>
    #
    # @return [Types::UpdateDatasetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_group(
    #     dataset_group_arn: 'DatasetGroupArn', # required
    #     dataset_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetGroupOutput
    #
    def update_dataset_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDatasetGroup
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateDatasetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDatasetGroup,
        stubs: @stubs,
        params_class: Params::UpdateDatasetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset_group
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
