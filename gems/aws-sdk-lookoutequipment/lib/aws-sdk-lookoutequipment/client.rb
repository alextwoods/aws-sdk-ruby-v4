# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LookoutEquipment
  # An API client for AWSLookoutEquipmentFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Lookout for Equipment is a machine learning service that uses advanced analytics to identify
  #          anomalies in machines from sensor data for use in predictive maintenance. </p>
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
    def initialize(config = AWS::SDK::LookoutEquipment::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a container for a collection of data being ingested for analysis. The dataset
    #          contains the metadata describing where the data is and what the data actually looks like.
    #          In other words, it contains the location of the data source, the data schema, and other
    #          information. A dataset also contains any tags associated with the ingested data. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being created. </p>
    #
    # @option params [DatasetSchema] :dataset_schema
    #   <p>A JSON description of the data that is in each time series dataset, including names,
    #            column names, and data types. </p>
    #
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt dataset data by Amazon Lookout for Equipment. </p>
    #
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Any tags associated with the ingested data described in the dataset. </p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     dataset_name: 'DatasetName', # required
    #     dataset_schema: {
    #       inline_data_schema: 'InlineDataSchema'
    #     },
    #     server_side_kms_key_id: 'ServerSideKmsKeyId',
    #     client_token: 'ClientToken', # required
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
    #   resp.data.dataset_name #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.status #=> String, one of ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
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

    # <p> Creates a scheduled inference. Scheduling an inference is setting up a continuous
    #          real-time inference plan to analyze new measurement data. When setting up the schedule, you
    #          provide an S3 bucket location for the input data, assign it a delimiter between separate
    #          entries in the data, set an offset delay if desired, and set the frequency of inferencing.
    #          You must also provide an S3 bucket location for the output data. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateInferenceSchedulerInput}.
    #
    # @option params [String] :model_name
    #   <p>The name of the previously trained ML model being used to create the inference
    #            scheduler. </p>
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler being created. </p>
    #
    # @option params [Integer] :data_delay_offset_in_minutes
    #   <p>A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data. </p>
    #
    # @option params [String] :data_upload_frequency
    #   <p> How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
    #            also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
    #            example, it starts once every 5 minutes. </p>
    #
    # @option params [InferenceInputConfiguration] :data_input_configuration
    #   <p>Specifies configuration information for the input data for the inference scheduler,
    #            including delimiter, format, and dataset location. </p>
    #
    # @option params [InferenceOutputConfiguration] :data_output_configuration
    #   <p>Specifies configuration information for the output results for the inference scheduler,
    #            including the S3 location for the output. </p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the data source being
    #            used for the inference. </p>
    #
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt inference scheduler data by Amazon Lookout for Equipment. </p>
    #
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Any tags associated with the inference scheduler. </p>
    #
    # @return [Types::CreateInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_inference_scheduler(
    #     model_name: 'ModelName', # required
    #     inference_scheduler_name: 'InferenceSchedulerName', # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: 'PT5M', # required - accepts ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     data_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       },
    #       input_time_zone_offset: 'InputTimeZoneOffset',
    #       inference_input_name_configuration: {
    #         timestamp_format: 'TimestampFormat',
    #         component_timestamp_delimiter: 'ComponentTimestampDelimiter'
    #       }
    #     }, # required
    #     data_output_configuration: {
    #       s3_output_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       }, # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     role_arn: 'RoleArn', # required
    #     server_side_kms_key_id: 'ServerSideKmsKeyId',
    #     client_token: 'ClientToken', # required
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
    #   resp.data #=> Types::CreateInferenceSchedulerOutput
    #   resp.data.inference_scheduler_arn #=> String
    #   resp.data.inference_scheduler_name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    def create_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInferenceScheduler,
        stubs: @stubs,
        params_class: Params::CreateInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_inference_scheduler
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an ML model for data inference. </p>
    #          <p>A machine-learning (ML) model is a mathematical model that finds patterns in your data.
    #          In Amazon Lookout for Equipment, the model learns the patterns of normal behavior and detects abnormal
    #          behavior that could be potential equipment failure (or maintenance events). The models are
    #          made by analyzing normal data and abnormalities in machine behavior that have already
    #          occurred.</p>
    #          <p>Your model is trained using a portion of the data from your dataset and uses that data
    #          to learn patterns of normal behavior and abnormal patterns that lead to equipment failure.
    #          Another portion of the data is used to evaluate the model's accuracy. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelInput}.
    #
    # @option params [String] :model_name
    #   <p>The name for the ML model to be created.</p>
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset for the ML model being created. </p>
    #
    # @option params [DatasetSchema] :dataset_schema
    #   <p>The data schema for the ML model being created. </p>
    #
    # @option params [LabelsInputConfiguration] :labels_input_configuration
    #   <p>The input configuration for the labels being used for the ML model that's being created.
    #         </p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    # @option params [Time] :training_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            training data for the ML model. </p>
    #
    # @option params [Time] :training_data_end_time
    #   <p>Indicates the time reference in the dataset that should be used to end the subset of
    #            training data for the ML model. </p>
    #
    # @option params [Time] :evaluation_data_start_time
    #   <p>Indicates the time reference in the dataset that should be used to begin the subset of
    #            evaluation data for the ML model. </p>
    #
    # @option params [Time] :evaluation_data_end_time
    #   <p> Indicates the time reference in the dataset that should be used to end the subset of
    #            evaluation data for the ML model. </p>
    #
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source
    #            being used to create the ML model. </p>
    #
    # @option params [DataPreProcessingConfiguration] :data_pre_processing_configuration
    #   <p>The configuration is the <code>TargetSamplingRate</code>, which is the sampling rate of
    #            the data after post processing by
    #            Amazon Lookout for Equipment. For example, if you provide data that
    #            has been collected at a 1 second level and you want the system to resample
    #            the data at a 1 minute rate before training, the <code>TargetSamplingRate</code> is 1 minute.</p>
    #            <p>When providing a value for the <code>TargetSamplingRate</code>, you must
    #               attach the prefix "PT" to the rate you want.  The value for a 1 second rate
    #               is therefore <i>PT1S</i>, the value for a 15 minute rate
    #               is <i>PT15M</i>, and the value for a 1 hour rate
    #               is <i>PT1H</i>
    #            </p>
    #
    # @option params [String] :server_side_kms_key_id
    #   <p>Provides the identifier of the KMS key used to encrypt model data by Amazon Lookout for Equipment. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p> Any tags associated with the ML model being created. </p>
    #
    # @option params [String] :off_condition
    #   <p>Indicates that the asset associated with this sensor has been shut off. As long as this condition is met, Lookout for Equipment will not use data from this asset for training, evaluation, or inference.</p>
    #
    # @return [Types::CreateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model(
    #     model_name: 'ModelName', # required
    #     dataset_name: 'DatasetName', # required
    #     dataset_schema: {
    #       inline_data_schema: 'InlineDataSchema'
    #     },
    #     labels_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       } # required
    #     },
    #     client_token: 'ClientToken', # required
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     evaluation_data_start_time: Time.now,
    #     evaluation_data_end_time: Time.now,
    #     role_arn: 'RoleArn',
    #     data_pre_processing_configuration: {
    #       target_sampling_rate: 'PT1S' # accepts ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     },
    #     server_side_kms_key_id: 'ServerSideKmsKeyId',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     off_condition: 'OffCondition'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateModelOutput
    #   resp.data.model_arn #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    def create_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateModel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateModel,
        stubs: @stubs,
        params_class: Params::CreateModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a dataset and associated artifacts. The operation will check to see if any
    #          inference scheduler or data ingestion job is currently using the dataset, and if there
    #          isn't, the dataset, its metadata, and any associated data stored in S3 will be deleted.
    #          This does not affect any models that used this dataset for training and evaluation, but
    #          does prevent it from being used in the future. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to be deleted. </p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     dataset_name: 'DatasetName' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
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

    # <p>Deletes an inference scheduler that has been set up. Already processed output results
    #          are not affected. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInferenceSchedulerInput}.
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be deleted. </p>
    #
    # @return [Types::DeleteInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inference_scheduler(
    #     inference_scheduler_name: 'InferenceSchedulerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInferenceSchedulerOutput
    #
    def delete_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInferenceScheduler,
        stubs: @stubs,
        params_class: Params::DeleteInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_inference_scheduler
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an ML model currently available for Amazon Lookout for Equipment. This will prevent it from
    #          being used with an inference scheduler, even one that is already set up. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelInput}.
    #
    # @option params [String] :model_name
    #   <p>The name of the ML model to be deleted. </p>
    #
    # @return [Types::DeleteModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model(
    #     model_name: 'ModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteModelOutput
    #
    def delete_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteModel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteModel,
        stubs: @stubs,
        params_class: Params::DeleteModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information on a specific data ingestion job such as creation time, dataset
    #          ARN, and status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataIngestionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job ID of the data ingestion job. </p>
    #
    # @return [Types::DescribeDataIngestionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_ingestion_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataIngestionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.ingestion_input_configuration #=> Types::IngestionInputConfiguration
    #   resp.data.ingestion_input_configuration.s3_input_configuration #=> Types::IngestionS3InputConfiguration
    #   resp.data.ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.ingestion_input_configuration.s3_input_configuration.key_pattern #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   resp.data.failed_reason #=> String
    #   resp.data.data_quality_summary #=> Types::DataQualitySummary
    #   resp.data.data_quality_summary.insufficient_sensor_data #=> Types::InsufficientSensorData
    #   resp.data.data_quality_summary.insufficient_sensor_data.missing_complete_sensor_data #=> Types::MissingCompleteSensorData
    #   resp.data.data_quality_summary.insufficient_sensor_data.missing_complete_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.insufficient_sensor_data.sensors_with_short_date_range #=> Types::SensorsWithShortDateRange
    #   resp.data.data_quality_summary.insufficient_sensor_data.sensors_with_short_date_range.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.missing_sensor_data #=> Types::MissingSensorData
    #   resp.data.data_quality_summary.missing_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.missing_sensor_data.total_number_of_missing_values #=> Integer
    #   resp.data.data_quality_summary.invalid_sensor_data #=> Types::InvalidSensorData
    #   resp.data.data_quality_summary.invalid_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.invalid_sensor_data.total_number_of_invalid_values #=> Integer
    #   resp.data.data_quality_summary.unsupported_timestamps #=> Types::UnsupportedTimestamps
    #   resp.data.data_quality_summary.unsupported_timestamps.total_number_of_unsupported_timestamps #=> Integer
    #   resp.data.data_quality_summary.duplicate_timestamps #=> Types::DuplicateTimestamps
    #   resp.data.data_quality_summary.duplicate_timestamps.total_number_of_duplicate_timestamps #=> Integer
    #   resp.data.ingested_files_summary #=> Types::IngestedFilesSummary
    #   resp.data.ingested_files_summary.total_number_of_files #=> Integer
    #   resp.data.ingested_files_summary.ingested_number_of_files #=> Integer
    #   resp.data.ingested_files_summary.discarded_files #=> Array<S3Object>
    #   resp.data.ingested_files_summary.discarded_files[0] #=> Types::S3Object
    #   resp.data.ingested_files_summary.discarded_files[0].bucket #=> String
    #   resp.data.ingested_files_summary.discarded_files[0].key #=> String
    #   resp.data.status_detail #=> String
    #   resp.data.ingested_data_size #=> Integer
    #   resp.data.data_start_time #=> Time
    #   resp.data.data_end_time #=> Time
    #
    def describe_data_ingestion_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataIngestionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataIngestionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataIngestionJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeDataIngestionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataIngestionJob,
        stubs: @stubs,
        params_class: Params::DescribeDataIngestionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_ingestion_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a JSON description of the data in each time series dataset, including names, column names, and data types.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to be described. </p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     dataset_name: 'DatasetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset_name #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.status #=> String, one of ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
    #   resp.data.schema #=> String
    #   resp.data.server_side_kms_key_id #=> String
    #   resp.data.ingestion_input_configuration #=> Types::IngestionInputConfiguration
    #   resp.data.ingestion_input_configuration.s3_input_configuration #=> Types::IngestionS3InputConfiguration
    #   resp.data.ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.ingestion_input_configuration.s3_input_configuration.key_pattern #=> String
    #   resp.data.data_quality_summary #=> Types::DataQualitySummary
    #   resp.data.data_quality_summary.insufficient_sensor_data #=> Types::InsufficientSensorData
    #   resp.data.data_quality_summary.insufficient_sensor_data.missing_complete_sensor_data #=> Types::MissingCompleteSensorData
    #   resp.data.data_quality_summary.insufficient_sensor_data.missing_complete_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.insufficient_sensor_data.sensors_with_short_date_range #=> Types::SensorsWithShortDateRange
    #   resp.data.data_quality_summary.insufficient_sensor_data.sensors_with_short_date_range.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.missing_sensor_data #=> Types::MissingSensorData
    #   resp.data.data_quality_summary.missing_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.missing_sensor_data.total_number_of_missing_values #=> Integer
    #   resp.data.data_quality_summary.invalid_sensor_data #=> Types::InvalidSensorData
    #   resp.data.data_quality_summary.invalid_sensor_data.affected_sensor_count #=> Integer
    #   resp.data.data_quality_summary.invalid_sensor_data.total_number_of_invalid_values #=> Integer
    #   resp.data.data_quality_summary.unsupported_timestamps #=> Types::UnsupportedTimestamps
    #   resp.data.data_quality_summary.unsupported_timestamps.total_number_of_unsupported_timestamps #=> Integer
    #   resp.data.data_quality_summary.duplicate_timestamps #=> Types::DuplicateTimestamps
    #   resp.data.data_quality_summary.duplicate_timestamps.total_number_of_duplicate_timestamps #=> Integer
    #   resp.data.ingested_files_summary #=> Types::IngestedFilesSummary
    #   resp.data.ingested_files_summary.total_number_of_files #=> Integer
    #   resp.data.ingested_files_summary.ingested_number_of_files #=> Integer
    #   resp.data.ingested_files_summary.discarded_files #=> Array<S3Object>
    #   resp.data.ingested_files_summary.discarded_files[0] #=> Types::S3Object
    #   resp.data.ingested_files_summary.discarded_files[0].bucket #=> String
    #   resp.data.ingested_files_summary.discarded_files[0].key #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.data_start_time #=> Time
    #   resp.data.data_end_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p> Specifies information about the inference scheduler being used, including name, model,
    #          status, and associated metadata </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInferenceSchedulerInput}.
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler being described. </p>
    #
    # @return [Types::DescribeInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inference_scheduler(
    #     inference_scheduler_name: 'InferenceSchedulerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInferenceSchedulerOutput
    #   resp.data.model_arn #=> String
    #   resp.data.model_name #=> String
    #   resp.data.inference_scheduler_name #=> String
    #   resp.data.inference_scheduler_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   resp.data.data_delay_offset_in_minutes #=> Integer
    #   resp.data.data_upload_frequency #=> String, one of ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.data_input_configuration #=> Types::InferenceInputConfiguration
    #   resp.data.data_input_configuration.s3_input_configuration #=> Types::InferenceS3InputConfiguration
    #   resp.data.data_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.data_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.data_input_configuration.input_time_zone_offset #=> String
    #   resp.data.data_input_configuration.inference_input_name_configuration #=> Types::InferenceInputNameConfiguration
    #   resp.data.data_input_configuration.inference_input_name_configuration.timestamp_format #=> String
    #   resp.data.data_input_configuration.inference_input_name_configuration.component_timestamp_delimiter #=> String
    #   resp.data.data_output_configuration #=> Types::InferenceOutputConfiguration
    #   resp.data.data_output_configuration.s3_output_configuration #=> Types::InferenceS3OutputConfiguration
    #   resp.data.data_output_configuration.s3_output_configuration.bucket #=> String
    #   resp.data.data_output_configuration.s3_output_configuration.prefix #=> String
    #   resp.data.data_output_configuration.kms_key_id #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.server_side_kms_key_id #=> String
    #
    def describe_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInferenceScheduler,
        stubs: @stubs,
        params_class: Params::DescribeInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_inference_scheduler
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a JSON containing the overall information about a specific ML model, including model name and ARN,
    #          dataset, training and evaluation information, status, and so on. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeModelInput}.
    #
    # @option params [String] :model_name
    #   <p>The name of the ML model to be described. </p>
    #
    # @return [Types::DescribeModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model(
    #     model_name: 'ModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeModelOutput
    #   resp.data.model_name #=> String
    #   resp.data.model_arn #=> String
    #   resp.data.dataset_name #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.schema #=> String
    #   resp.data.labels_input_configuration #=> Types::LabelsInputConfiguration
    #   resp.data.labels_input_configuration.s3_input_configuration #=> Types::LabelsS3InputConfiguration
    #   resp.data.labels_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.labels_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.training_data_start_time #=> Time
    #   resp.data.training_data_end_time #=> Time
    #   resp.data.evaluation_data_start_time #=> Time
    #   resp.data.evaluation_data_end_time #=> Time
    #   resp.data.role_arn #=> String
    #   resp.data.data_pre_processing_configuration #=> Types::DataPreProcessingConfiguration
    #   resp.data.data_pre_processing_configuration.target_sampling_rate #=> String, one of ["PT1S", "PT5S", "PT10S", "PT15S", "PT30S", "PT1M", "PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   resp.data.training_execution_start_time #=> Time
    #   resp.data.training_execution_end_time #=> Time
    #   resp.data.failed_reason #=> String
    #   resp.data.model_metrics #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_at #=> Time
    #   resp.data.server_side_kms_key_id #=> String
    #   resp.data.off_condition #=> String
    #
    def describe_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeModel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeModel,
        stubs: @stubs,
        params_class: Params::DescribeModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location
    #          of the input data, status, and so on. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDataIngestionJobsInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being used for the data ingestion job. </p>
    #
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of data ingestion
    #            jobs. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of data ingestion jobs to list. </p>
    #
    # @option params [String] :status
    #   <p>Indicates the status of the data ingestion job. </p>
    #
    # @return [Types::ListDataIngestionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_ingestion_jobs(
    #     dataset_name: 'DatasetName',
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     status: 'IN_PROGRESS' # accepts ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataIngestionJobsOutput
    #   resp.data.next_token #=> String
    #   resp.data.data_ingestion_job_summaries #=> Array<DataIngestionJobSummary>
    #   resp.data.data_ingestion_job_summaries[0] #=> Types::DataIngestionJobSummary
    #   resp.data.data_ingestion_job_summaries[0].job_id #=> String
    #   resp.data.data_ingestion_job_summaries[0].dataset_name #=> String
    #   resp.data.data_ingestion_job_summaries[0].dataset_arn #=> String
    #   resp.data.data_ingestion_job_summaries[0].ingestion_input_configuration #=> Types::IngestionInputConfiguration
    #   resp.data.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration #=> Types::IngestionS3InputConfiguration
    #   resp.data.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.data_ingestion_job_summaries[0].ingestion_input_configuration.s3_input_configuration.key_pattern #=> String
    #   resp.data.data_ingestion_job_summaries[0].status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    def list_data_ingestion_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataIngestionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataIngestionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataIngestionJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDataIngestionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataIngestionJobs,
        stubs: @stubs,
        params_class: Params::ListDataIngestionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_ingestion_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all datasets currently available in your account, filtering on the dataset name.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of datasets.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of datasets to list. </p>
    #
    # @option params [String] :dataset_name_begins_with
    #   <p>The beginning of the name of the datasets to be listed. </p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     dataset_name_begins_with: 'DatasetNameBeginsWith'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.next_token #=> String
    #   resp.data.dataset_summaries #=> Array<DatasetSummary>
    #   resp.data.dataset_summaries[0] #=> Types::DatasetSummary
    #   resp.data.dataset_summaries[0].dataset_name #=> String
    #   resp.data.dataset_summaries[0].dataset_arn #=> String
    #   resp.data.dataset_summaries[0].status #=> String, one of ["CREATED", "INGESTION_IN_PROGRESS", "ACTIVE"]
    #   resp.data.dataset_summaries[0].created_at #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p> Lists all inference executions that have been performed by the specified inference
    #          scheduler. </p>
    #
    # @param [Hash] params
    #   See {Types::ListInferenceExecutionsInput}.
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token indicating where to continue the listing of inference
    #            executions.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of inference executions to list. </p>
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler for the inference execution listed. </p>
    #
    # @option params [Time] :data_start_time_after
    #   <p>The time reference in the inferenced dataset after which Amazon Lookout for Equipment started the
    #            inference execution. </p>
    #
    # @option params [Time] :data_end_time_before
    #   <p>The time reference in the inferenced dataset before which Amazon Lookout for Equipment stopped the
    #            inference execution. </p>
    #
    # @option params [String] :status
    #   <p>The status of the inference execution. </p>
    #
    # @return [Types::ListInferenceExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inference_executions(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     inference_scheduler_name: 'InferenceSchedulerName', # required
    #     data_start_time_after: Time.now,
    #     data_end_time_before: Time.now,
    #     status: 'IN_PROGRESS' # accepts ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInferenceExecutionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.inference_execution_summaries #=> Array<InferenceExecutionSummary>
    #   resp.data.inference_execution_summaries[0] #=> Types::InferenceExecutionSummary
    #   resp.data.inference_execution_summaries[0].model_name #=> String
    #   resp.data.inference_execution_summaries[0].model_arn #=> String
    #   resp.data.inference_execution_summaries[0].inference_scheduler_name #=> String
    #   resp.data.inference_execution_summaries[0].inference_scheduler_arn #=> String
    #   resp.data.inference_execution_summaries[0].scheduled_start_time #=> Time
    #   resp.data.inference_execution_summaries[0].data_start_time #=> Time
    #   resp.data.inference_execution_summaries[0].data_end_time #=> Time
    #   resp.data.inference_execution_summaries[0].data_input_configuration #=> Types::InferenceInputConfiguration
    #   resp.data.inference_execution_summaries[0].data_input_configuration.s3_input_configuration #=> Types::InferenceS3InputConfiguration
    #   resp.data.inference_execution_summaries[0].data_input_configuration.s3_input_configuration.bucket #=> String
    #   resp.data.inference_execution_summaries[0].data_input_configuration.s3_input_configuration.prefix #=> String
    #   resp.data.inference_execution_summaries[0].data_input_configuration.input_time_zone_offset #=> String
    #   resp.data.inference_execution_summaries[0].data_input_configuration.inference_input_name_configuration #=> Types::InferenceInputNameConfiguration
    #   resp.data.inference_execution_summaries[0].data_input_configuration.inference_input_name_configuration.timestamp_format #=> String
    #   resp.data.inference_execution_summaries[0].data_input_configuration.inference_input_name_configuration.component_timestamp_delimiter #=> String
    #   resp.data.inference_execution_summaries[0].data_output_configuration #=> Types::InferenceOutputConfiguration
    #   resp.data.inference_execution_summaries[0].data_output_configuration.s3_output_configuration #=> Types::InferenceS3OutputConfiguration
    #   resp.data.inference_execution_summaries[0].data_output_configuration.s3_output_configuration.bucket #=> String
    #   resp.data.inference_execution_summaries[0].data_output_configuration.s3_output_configuration.prefix #=> String
    #   resp.data.inference_execution_summaries[0].data_output_configuration.kms_key_id #=> String
    #   resp.data.inference_execution_summaries[0].customer_result_object #=> Types::S3Object
    #   resp.data.inference_execution_summaries[0].customer_result_object.bucket #=> String
    #   resp.data.inference_execution_summaries[0].customer_result_object.key #=> String
    #   resp.data.inference_execution_summaries[0].status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   resp.data.inference_execution_summaries[0].failed_reason #=> String
    #
    def list_inference_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInferenceExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInferenceExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInferenceExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListInferenceExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInferenceExecutions,
        stubs: @stubs,
        params_class: Params::ListInferenceExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_inference_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all inference schedulers currently available for your account.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListInferenceSchedulersInput}.
    #
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of inference
    #            schedulers. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of inference schedulers to list. </p>
    #
    # @option params [String] :inference_scheduler_name_begins_with
    #   <p>The beginning of the name of the inference schedulers to be listed. </p>
    #
    # @option params [String] :model_name
    #   <p>The name of the ML model used by the inference scheduler to be listed. </p>
    #
    # @return [Types::ListInferenceSchedulersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inference_schedulers(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     inference_scheduler_name_begins_with: 'InferenceSchedulerNameBeginsWith',
    #     model_name: 'ModelName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInferenceSchedulersOutput
    #   resp.data.next_token #=> String
    #   resp.data.inference_scheduler_summaries #=> Array<InferenceSchedulerSummary>
    #   resp.data.inference_scheduler_summaries[0] #=> Types::InferenceSchedulerSummary
    #   resp.data.inference_scheduler_summaries[0].model_name #=> String
    #   resp.data.inference_scheduler_summaries[0].model_arn #=> String
    #   resp.data.inference_scheduler_summaries[0].inference_scheduler_name #=> String
    #   resp.data.inference_scheduler_summaries[0].inference_scheduler_arn #=> String
    #   resp.data.inference_scheduler_summaries[0].status #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #   resp.data.inference_scheduler_summaries[0].data_delay_offset_in_minutes #=> Integer
    #   resp.data.inference_scheduler_summaries[0].data_upload_frequency #=> String, one of ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #
    def list_inference_schedulers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInferenceSchedulersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInferenceSchedulersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInferenceSchedulers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListInferenceSchedulers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInferenceSchedulers,
        stubs: @stubs,
        params_class: Params::ListInferenceSchedulersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_inference_schedulers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a list of all models in the account, including model name and ARN, dataset,
    #          and status. </p>
    #
    # @param [Hash] params
    #   See {Types::ListModelsInput}.
    #
    # @option params [String] :next_token
    #   <p> An opaque pagination token indicating where to continue the listing of ML models.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of ML models to list. </p>
    #
    # @option params [String] :status
    #   <p>The status of the ML model. </p>
    #
    # @option params [String] :model_name_begins_with
    #   <p>The beginning of the name of the ML models being listed. </p>
    #
    # @option params [String] :dataset_name_begins_with
    #   <p>The beginning of the name of the dataset of the ML models to be listed. </p>
    #
    # @return [Types::ListModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     status: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #     model_name_begins_with: 'ModelNameBeginsWith',
    #     dataset_name_begins_with: 'DatasetNameBeginsWith'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListModelsOutput
    #   resp.data.next_token #=> String
    #   resp.data.model_summaries #=> Array<ModelSummary>
    #   resp.data.model_summaries[0] #=> Types::ModelSummary
    #   resp.data.model_summaries[0].model_name #=> String
    #   resp.data.model_summaries[0].model_arn #=> String
    #   resp.data.model_summaries[0].dataset_name #=> String
    #   resp.data.model_summaries[0].dataset_arn #=> String
    #   resp.data.model_summaries[0].status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #   resp.data.model_summaries[0].created_at #=> Time
    #
    def list_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListModels
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListModels,
        stubs: @stubs,
        params_class: Params::ListModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Lists statistics about the data collected for each of the sensors that have been successfully ingested in the particular dataset. Can also be used to retreive Sensor Statistics for a previous ingestion job.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::ListSensorStatisticsInput}.
    #
    # @option params [String] :dataset_name
    #   <p>
    #   The name of the dataset associated with the list of Sensor Statistics.
    #   </p>
    #
    # @option params [String] :ingestion_job_id
    #   <p>
    #   The ingestion job id associated with the list of Sensor Statistics. To get sensor statistics for a particular ingestion job id, both dataset name and ingestion job id must be submitted as inputs.
    #   </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #   Specifies the maximum number of sensors for which to retrieve statistics.
    #   </p>
    #
    # @option params [String] :next_token
    #   <p>
    #   An opaque pagination token indicating where to continue the listing of sensor statistics.
    #   </p>
    #
    # @return [Types::ListSensorStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sensor_statistics(
    #     dataset_name: 'DatasetName', # required
    #     ingestion_job_id: 'IngestionJobId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSensorStatisticsOutput
    #   resp.data.sensor_statistics_summaries #=> Array<SensorStatisticsSummary>
    #   resp.data.sensor_statistics_summaries[0] #=> Types::SensorStatisticsSummary
    #   resp.data.sensor_statistics_summaries[0].component_name #=> String
    #   resp.data.sensor_statistics_summaries[0].sensor_name #=> String
    #   resp.data.sensor_statistics_summaries[0].data_exists #=> Boolean
    #   resp.data.sensor_statistics_summaries[0].missing_values #=> Types::CountPercent
    #   resp.data.sensor_statistics_summaries[0].missing_values.count #=> Integer
    #   resp.data.sensor_statistics_summaries[0].missing_values.percentage #=> Float
    #   resp.data.sensor_statistics_summaries[0].invalid_values #=> Types::CountPercent
    #   resp.data.sensor_statistics_summaries[0].invalid_date_entries #=> Types::CountPercent
    #   resp.data.sensor_statistics_summaries[0].duplicate_timestamps #=> Types::CountPercent
    #   resp.data.sensor_statistics_summaries[0].categorical_values #=> Types::CategoricalValues
    #   resp.data.sensor_statistics_summaries[0].categorical_values.status #=> String, one of ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #   resp.data.sensor_statistics_summaries[0].categorical_values.number_of_category #=> Integer
    #   resp.data.sensor_statistics_summaries[0].multiple_operating_modes #=> Types::MultipleOperatingModes
    #   resp.data.sensor_statistics_summaries[0].multiple_operating_modes.status #=> String, one of ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #   resp.data.sensor_statistics_summaries[0].large_timestamp_gaps #=> Types::LargeTimestampGaps
    #   resp.data.sensor_statistics_summaries[0].large_timestamp_gaps.status #=> String, one of ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #   resp.data.sensor_statistics_summaries[0].large_timestamp_gaps.number_of_large_timestamp_gaps #=> Integer
    #   resp.data.sensor_statistics_summaries[0].large_timestamp_gaps.max_timestamp_gap_in_days #=> Integer
    #   resp.data.sensor_statistics_summaries[0].monotonic_values #=> Types::MonotonicValues
    #   resp.data.sensor_statistics_summaries[0].monotonic_values.status #=> String, one of ["POTENTIAL_ISSUE_DETECTED", "NO_ISSUE_DETECTED"]
    #   resp.data.sensor_statistics_summaries[0].monotonic_values.monotonicity #=> String, one of ["DECREASING", "INCREASING", "STATIC"]
    #   resp.data.sensor_statistics_summaries[0].data_start_time #=> Time
    #   resp.data.sensor_statistics_summaries[0].data_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_sensor_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSensorStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSensorStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSensorStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListSensorStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSensorStatistics,
        stubs: @stubs,
        params_class: Params::ListSensorStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sensor_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the tags for a specified resource, including key and value. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource (such as the dataset or model) that is
    #            the focus of the <code>ListTagsForResource</code> operation. </p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Starts a data ingestion job. Amazon Lookout for Equipment returns the job status. </p>
    #
    # @param [Hash] params
    #   See {Types::StartDataIngestionJobInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset being used by the data ingestion job. </p>
    #
    # @option params [IngestionInputConfiguration] :ingestion_input_configuration
    #   <p> Specifies information for the input data for the data ingestion job, including dataset
    #            S3 location. </p>
    #
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the data ingestion job. </p>
    #
    # @option params [String] :client_token
    #   <p> A unique identifier for the request. If you do not set the client request token, Amazon
    #            Lookout for Equipment generates one. </p>
    #
    # @return [Types::StartDataIngestionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_ingestion_job(
    #     dataset_name: 'DatasetName', # required
    #     ingestion_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix',
    #         key_pattern: 'KeyPattern'
    #       } # required
    #     }, # required
    #     role_arn: 'RoleArn', # required
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDataIngestionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    def start_data_ingestion_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDataIngestionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDataIngestionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDataIngestionJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartDataIngestionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDataIngestionJob,
        stubs: @stubs,
        params_class: Params::StartDataIngestionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_data_ingestion_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an inference scheduler. </p>
    #
    # @param [Hash] params
    #   See {Types::StartInferenceSchedulerInput}.
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be started. </p>
    #
    # @return [Types::StartInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_inference_scheduler(
    #     inference_scheduler_name: 'InferenceSchedulerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartInferenceSchedulerOutput
    #   resp.data.model_arn #=> String
    #   resp.data.model_name #=> String
    #   resp.data.inference_scheduler_name #=> String
    #   resp.data.inference_scheduler_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    def start_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::StartInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartInferenceScheduler,
        stubs: @stubs,
        params_class: Params::StartInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_inference_scheduler
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an inference scheduler. </p>
    #
    # @param [Hash] params
    #   See {Types::StopInferenceSchedulerInput}.
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be stopped. </p>
    #
    # @return [Types::StopInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_inference_scheduler(
    #     inference_scheduler_name: 'InferenceSchedulerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopInferenceSchedulerOutput
    #   resp.data.model_arn #=> String
    #   resp.data.model_name #=> String
    #   resp.data.inference_scheduler_name #=> String
    #   resp.data.inference_scheduler_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED"]
    #
    def stop_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::StopInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopInferenceScheduler,
        stubs: @stubs,
        params_class: Params::StopInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_inference_scheduler
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a given tag to a resource in your account. A tag is a key-value pair which
    #          can be added to an Amazon Lookout for Equipment resource as metadata. Tags can be used for organizing your
    #          resources as well as helping you to search and filter by tag. Multiple tags can be added to
    #          a resource, either when you create it, or later. Up to 50 tags can be associated with each
    #          resource. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the specific resource to which the tag should be
    #            associated. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag or tags to be associated with a specific resource. Both the tag key and value
    #            are specified. </p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
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

    # <p>Removes a specific tag from a given resource. The tag is specified by its key. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tag is currently associated.
    #         </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the key of the tag to be removed from a specified resource. </p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Updates an inference scheduler. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInferenceSchedulerInput}.
    #
    # @option params [String] :inference_scheduler_name
    #   <p>The name of the inference scheduler to be updated. </p>
    #
    # @option params [Integer] :data_delay_offset_in_minutes
    #   <p> A period of time (in minutes) by which inference on the data is delayed after the data
    #            starts. For instance, if you select an offset delay time of five minutes, inference will
    #            not begin on the data until the first data measurement after the five minute mark. For example, if
    #            five minutes is selected, the inference scheduler will wake up at the configured frequency with the
    #            additional five minute delay time to check the customer S3 bucket. The customer can upload data at
    #            the same frequency and they don't need to stop and restart the scheduler when uploading new data.</p>
    #
    # @option params [String] :data_upload_frequency
    #   <p>How often data is uploaded to the source S3 bucket for the input data. The value chosen
    #            is the length of time between data uploads. For instance, if you select 5 minutes, Amazon
    #            Lookout for Equipment will upload the real-time data to the source bucket once every 5 minutes. This frequency
    #            also determines how often Amazon Lookout for Equipment starts a scheduled inference on your data. In this
    #            example, it starts once every 5 minutes. </p>
    #
    # @option params [InferenceInputConfiguration] :data_input_configuration
    #   <p> Specifies information for the input data for the inference scheduler, including
    #            delimiter, format, and dataset location. </p>
    #
    # @option params [InferenceOutputConfiguration] :data_output_configuration
    #   <p> Specifies information for the output results from the inference scheduler, including the output S3 location. </p>
    #
    # @option params [String] :role_arn
    #   <p> The Amazon Resource Name (ARN) of a role with permission to access the data source for
    #            the inference scheduler. </p>
    #
    # @return [Types::UpdateInferenceSchedulerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_inference_scheduler(
    #     inference_scheduler_name: 'InferenceSchedulerName', # required
    #     data_delay_offset_in_minutes: 1,
    #     data_upload_frequency: 'PT5M', # accepts ["PT5M", "PT10M", "PT15M", "PT30M", "PT1H"]
    #     data_input_configuration: {
    #       s3_input_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       },
    #       input_time_zone_offset: 'InputTimeZoneOffset',
    #       inference_input_name_configuration: {
    #         timestamp_format: 'TimestampFormat',
    #         component_timestamp_delimiter: 'ComponentTimestampDelimiter'
    #       }
    #     },
    #     data_output_configuration: {
    #       s3_output_configuration: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       }, # required
    #       kms_key_id: 'KmsKeyId'
    #     },
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInferenceSchedulerOutput
    #
    def update_inference_scheduler(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInferenceSchedulerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInferenceSchedulerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInferenceScheduler
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::UpdateInferenceScheduler
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInferenceScheduler,
        stubs: @stubs,
        params_class: Params::UpdateInferenceSchedulerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_inference_scheduler
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
