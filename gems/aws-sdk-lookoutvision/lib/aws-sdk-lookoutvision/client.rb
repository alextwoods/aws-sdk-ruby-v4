# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LookoutVision
  # An API client for LookoutVisionService
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the Amazon Lookout for Vision API Reference. It provides descriptions of actions,
  #       data types, common parameters, and common errors.</p>
  #          <p>Amazon Lookout for Vision enables you to find visual defects in industrial products,
  #          accurately and at scale. It uses computer vision to identify missing components in an industrial product,
  #          damage to vehicles or structures, irregularities in production lines, and even minuscule defects in
  #          silicon wafers — or any other physical item where quality is important such as a missing capacitor
  #          on printed circuit boards.</p>
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
    def initialize(config = AWS::SDK::LookoutVision::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new dataset  in an Amazon Lookout for Vision project. <code>CreateDataset</code> can create a
    #       training or a test dataset from a valid dataset source (<code>DatasetSource</code>).</p>
    #          <p>If you want a single dataset project, specify <code>train</code> for the value of
    #          <code>DatasetType</code>.</p>
    #         <p>To have a project with separate training and test datasets, call <code>CreateDataset</code> twice.
    #            On the first call, specify <code>train</code> for the value of
    #            <code>DatasetType</code>. On the second call, specify <code>test</code> for the value of
    #            <code>DatasetType</code>. </p>
    #         <p>This operation requires permissions to perform the
    #            <code>lookoutvision:CreateDataset</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project in which you want to create a dataset.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of the dataset. Specify <code>train</code> for a training dataset.
    #         Specify <code>test</code> for a test dataset.</p>
    #
    # @option params [DatasetSource] :dataset_source
    #   <p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>
    #            <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation
    #         synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.
    #        </p>
    #            <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location
    #        is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous
    #        and might take a while to complete. To find out the current status, Check the value of <code>Status</code>
    #        returned in a call to <a>DescribeDataset</a>.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>CreateDataset</code>.
    #         In this case, safely retry your call
    #          to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency
    #          token is active for 8 hours.
    #       </p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     project_name: 'ProjectName', # required
    #     dataset_type: 'DatasetType', # required
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: 'Bucket', # required
    #           key: 'Key', # required
    #           version_id: 'VersionId'
    #         }
    #       }
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.dataset_metadata #=> Types::DatasetMetadata
    #   resp.data.dataset_metadata.dataset_type #=> String
    #   resp.data.dataset_metadata.creation_timestamp #=> Time
    #   resp.data.dataset_metadata.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #   resp.data.dataset_metadata.status_message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Creates a new version of a model within an an Amazon Lookout for Vision project.
    #       <code>CreateModel</code> is an asynchronous operation in which Amazon Lookout for Vision trains, tests,
    #        and evaluates a new version of a model. </p>
    #          <p>To get the current status, check the <code>Status</code> field returned
    #       in the response from <a>DescribeModel</a>.</p>
    #          <p>If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset
    #        to create a training and a test dataset.
    #        If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test
    #        the model. </p>
    #          <p>After training completes, the evaluation metrics are stored at the location specified in
    #         <code>OutputConfig</code>.  </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:CreateModel</code> operation. If you want to tag your model, you also require
    #          permission to the <code>lookoutvision:TagResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project in which you want to create a model version.</p>
    #
    # @option params [String] :description
    #   <p>A description for the version of the model.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
    #         completes only once.  You choose the value to pass. For example, An issue
    #         might prevent you from getting a response from <code>CreateModel</code>.
    #         In this case, safely retry your call
    #          to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #               This prevents retries after a network error from starting multiple training jobs. You'll need to
    #               provide your own value for other use cases. </p>
    #           <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    # @option params [OutputConfig] :output_config
    #   <p>The location where Amazon Lookout for Vision saves the training results.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS KMS key.
    #            The key is used to encrypt training and test images copied into the service for model training. Your
    #            source images are unaffected.
    #            If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the model.</p>
    #
    # @return [Types::CreateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model(
    #     project_name: 'ProjectName', # required
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     output_config: {
    #       s3_location: {
    #         bucket: 'Bucket', # required
    #         prefix: 'Prefix'
    #       } # required
    #     }, # required
    #     kms_key_id: 'KmsKeyId',
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
    #   resp.data #=> Types::CreateModelOutput
    #   resp.data.model_metadata #=> Types::ModelMetadata
    #   resp.data.model_metadata.creation_timestamp #=> Time
    #   resp.data.model_metadata.model_version #=> String
    #   resp.data.model_metadata.model_arn #=> String
    #   resp.data.model_metadata.description #=> String
    #   resp.data.model_metadata.status #=> String, one of ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"]
    #   resp.data.model_metadata.status_message #=> String
    #   resp.data.model_metadata.performance #=> Types::ModelPerformance
    #   resp.data.model_metadata.performance.f1_score #=> Float
    #   resp.data.model_metadata.performance.recall #=> Float
    #   resp.data.model_metadata.performance.precision #=> Float
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling
    #          <a>CreateDataset</a>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:CreateProject</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name for the project.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from
    #         getting a response from <code>CreateProject</code>.
    #         In this case, safely retry your call
    #          to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #             This prevents retries after a network error from making multiple project creation requests. You'll need to
    #              provide your own value for other use cases. </p>
    #            <p>An error occurs
    #          if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     project_name: 'ProjectName', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project_metadata #=> Types::ProjectMetadata
    #   resp.data.project_metadata.project_arn #=> String
    #   resp.data.project_metadata.project_name #=> String
    #   resp.data.project_metadata.creation_timestamp #=> Time
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::CreateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProject,
        stubs: @stubs,
        params_class: Params::CreateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing Amazon Lookout for Vision <code>dataset</code>. </p>
    #          <p>If your the project has a single
    #       dataset, you must create a new dataset before you can create a model.</p>
    #          <p>If you project has a training dataset and a test dataset consider the following. </p>
    #          <ul>
    #             <li>
    #                <p>If you delete the test dataset, your project reverts to a single dataset project. If you then
    #       train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.</p>
    #             </li>
    #             <li>
    #                <p>If you delete the training dataset, you must create a training dataset before you can create a model.</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteDataset</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to delete.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.
    #         Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project,
    #            specify <code>train</code>.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you from getting a response from <code>DeleteDataset</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #                    This prevents retries after a network error from making multiple deletetion requests. You'll need to
    #                    provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     project_name: 'ProjectName', # required
    #     dataset_type: 'DatasetType', # required
    #     client_token: 'ClientToken'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model,
    #       use the <a>StopModel</a> operation.</p>
    #          <p>It might take a few seconds to delete a model. To determine if a model has been deleted, call
    #          <a>ListModels</a> and check if the version of the model (<code>ModelVersion</code>) is in the
    #          <code>Models</code> array. </p>
    #          <p></p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteModel</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to delete.</p>
    #
    # @option params [String] :model_version
    #   <p>The version of the model that you want to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>
    #         completes only once.  You choose the value to pass. For example, an issue might prevent
    #         you from getting a response from <code>DeleteModel</code>.
    #         In this case, safely retry your call
    #          to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for ClientToken, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple model deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #          value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency
    #          token is active for 8 hours.</p>
    #
    # @return [Types::DeleteModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteModelOutput
    #   resp.data.model_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Deletes an Amazon Lookout for Vision project.</p>
    #          <p>To delete a project, you must first delete each version of the model associated with
    #          the project. To delete a model use the <a>DeleteModel</a> operation.</p>
    #          <p>You also have to delete the dataset(s) associated with the model. For more information, see
    #          <a>DeleteDataset</a>.  The images referenced by the training and test datasets aren't deleted.
    #       </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DeleteProject</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>DeleteProject</code>.
    #            In this case, safely retry your call
    #            to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple project deletion requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency
    #            token is active for 8 hours.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project_name: 'ProjectName', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.project_arn #=> String
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProject,
        stubs: @stubs,
        params_class: Params::DeleteProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an Amazon Lookout for Vision dataset.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeDataset</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to describe.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of the dataset to describe. Specify <code>train</code> to describe the
    #         training dataset. Specify <code>test</code> to describe the test dataset.
    #         If you have a single dataset project, specify <code>train</code>
    #            </p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     project_name: 'ProjectName', # required
    #     dataset_type: 'DatasetType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset_description #=> Types::DatasetDescription
    #   resp.data.dataset_description.project_name #=> String
    #   resp.data.dataset_description.dataset_type #=> String
    #   resp.data.dataset_description.creation_timestamp #=> Time
    #   resp.data.dataset_description.last_updated_timestamp #=> Time
    #   resp.data.dataset_description.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #   resp.data.dataset_description.status_message #=> String
    #   resp.data.dataset_description.image_stats #=> Types::DatasetImageStats
    #   resp.data.dataset_description.image_stats.total #=> Integer
    #   resp.data.dataset_description.image_stats.labeled #=> Integer
    #   resp.data.dataset_description.image_stats.normal #=> Integer
    #   resp.data.dataset_description.image_stats.anomaly #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Describes a version of an Amazon Lookout for Vision model.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeModel</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeModelInput}.
    #
    # @option params [String] :project_name
    #   <p>The project that contains the version of a model that you want to describe.</p>
    #
    # @option params [String] :model_version
    #   <p>The version of the model that you want to describe.</p>
    #
    # @return [Types::DescribeModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeModelOutput
    #   resp.data.model_description #=> Types::ModelDescription
    #   resp.data.model_description.model_version #=> String
    #   resp.data.model_description.model_arn #=> String
    #   resp.data.model_description.creation_timestamp #=> Time
    #   resp.data.model_description.description #=> String
    #   resp.data.model_description.status #=> String, one of ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"]
    #   resp.data.model_description.status_message #=> String
    #   resp.data.model_description.performance #=> Types::ModelPerformance
    #   resp.data.model_description.performance.f1_score #=> Float
    #   resp.data.model_description.performance.recall #=> Float
    #   resp.data.model_description.performance.precision #=> Float
    #   resp.data.model_description.output_config #=> Types::OutputConfig
    #   resp.data.model_description.output_config.s3_location #=> Types::S3Location
    #   resp.data.model_description.output_config.s3_location.bucket #=> String
    #   resp.data.model_description.output_config.s3_location.prefix #=> String
    #   resp.data.model_description.evaluation_manifest #=> Types::OutputS3Object
    #   resp.data.model_description.evaluation_manifest.bucket #=> String
    #   resp.data.model_description.evaluation_manifest.key #=> String
    #   resp.data.model_description.evaluation_result #=> Types::OutputS3Object
    #   resp.data.model_description.evaluation_end_timestamp #=> Time
    #   resp.data.model_description.kms_key_id #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Describes an Amazon Lookout for Vision model packaging job.
    # </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeModelPackagingJob</code> operation.</p>
    #
    #          <p>For more information, see
    #          <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeModelPackagingJobInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model packaging job that you want to describe.
    #   </p>
    #
    # @option params [String] :job_name
    #   <p>The job name for the model packaging job.
    #
    #   </p>
    #
    # @return [Types::DescribeModelPackagingJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_packaging_job(
    #     project_name: 'ProjectName', # required
    #     job_name: 'JobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeModelPackagingJobOutput
    #   resp.data.model_packaging_description #=> Types::ModelPackagingDescription
    #   resp.data.model_packaging_description.job_name #=> String
    #   resp.data.model_packaging_description.project_name #=> String
    #   resp.data.model_packaging_description.model_version #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration #=> Types::ModelPackagingConfiguration
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass #=> Types::GreengrassConfiguration
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.compiler_options #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.target_device #=> String, one of ["jetson_xavier"]
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.target_platform #=> Types::TargetPlatform
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.target_platform.os #=> String, one of ["LINUX"]
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.target_platform.arch #=> String, one of ["ARM64", "X86_64"]
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.target_platform.accelerator #=> String, one of ["NVIDIA"]
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.s3_output_location #=> Types::S3Location
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.s3_output_location.bucket #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.s3_output_location.prefix #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.component_name #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.component_version #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.component_description #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.tags #=> Array<Tag>
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.tags[0] #=> Types::Tag
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.tags[0].key #=> String
    #   resp.data.model_packaging_description.model_packaging_configuration.greengrass.tags[0].value #=> String
    #   resp.data.model_packaging_description.model_packaging_job_description #=> String
    #   resp.data.model_packaging_description.model_packaging_method #=> String
    #   resp.data.model_packaging_description.model_packaging_output_details #=> Types::ModelPackagingOutputDetails
    #   resp.data.model_packaging_description.model_packaging_output_details.greengrass #=> Types::GreengrassOutputDetails
    #   resp.data.model_packaging_description.model_packaging_output_details.greengrass.component_version_arn #=> String
    #   resp.data.model_packaging_description.model_packaging_output_details.greengrass.component_name #=> String
    #   resp.data.model_packaging_description.model_packaging_output_details.greengrass.component_version #=> String
    #   resp.data.model_packaging_description.status #=> String, one of ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"]
    #   resp.data.model_packaging_description.status_message #=> String
    #   resp.data.model_packaging_description.creation_timestamp #=> Time
    #   resp.data.model_packaging_description.last_updated_timestamp #=> Time
    #
    def describe_model_packaging_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeModelPackagingJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeModelPackagingJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeModelPackagingJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeModelPackagingJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeModelPackagingJob,
        stubs: @stubs,
        params_class: Params::DescribeModelPackagingJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_model_packaging_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an Amazon Lookout for Vision project.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DescribeProject</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that you want to describe.</p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     project_name: 'ProjectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.project_description #=> Types::ProjectDescription
    #   resp.data.project_description.project_arn #=> String
    #   resp.data.project_description.project_name #=> String
    #   resp.data.project_description.creation_timestamp #=> Time
    #   resp.data.project_description.datasets #=> Array<DatasetMetadata>
    #   resp.data.project_description.datasets[0] #=> Types::DatasetMetadata
    #   resp.data.project_description.datasets[0].dataset_type #=> String
    #   resp.data.project_description.datasets[0].creation_timestamp #=> Time
    #   resp.data.project_description.datasets[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #   resp.data.project_description.datasets[0].status_message #=> String
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProject,
        stubs: @stubs,
        params_class: Params::DescribeProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects anomalies in an image that you supply. </p>
    #          <p>The response from <code>DetectAnomalies</code> includes a boolean prediction
    #          that the image contains one or more anomalies and a confidence value for the prediction.</p>
    #          <note>
    #             <p>Before calling <code>DetectAnomalies</code>, you must first start your model with the <a>StartModel</a> operation.
    #          You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your
    #          model uses. If you are not using a model, use the <a>StopModel</a> operation to stop your model. </p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:DetectAnomalies</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectAnomaliesInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model version that you want to use.</p>
    #
    # @option params [String] :model_version
    #   <p>The version of the model that you want to use.</p>
    #
    # @option params [String] :body
    #   <p>The unencrypted image bytes that you want to analyze. </p>
    #
    # @option params [String] :content_type
    #   <p>The type of the image passed in <code>Body</code>.
    #            Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>
    #
    # @return [Types::DetectAnomaliesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_anomalies(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion', # required
    #     body: 'Body', # required
    #     content_type: 'ContentType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectAnomaliesOutput
    #   resp.data.detect_anomaly_result #=> Types::DetectAnomalyResult
    #   resp.data.detect_anomaly_result.source #=> Types::ImageSource
    #   resp.data.detect_anomaly_result.source.type #=> String
    #   resp.data.detect_anomaly_result.is_anomalous #=> Boolean
    #   resp.data.detect_anomaly_result.confidence #=> Float
    #
    def detect_anomalies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectAnomaliesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectAnomaliesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectAnomalies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DetectAnomalies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectAnomalies,
        stubs: @stubs,
        params_class: Params::DetectAnomaliesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_anomalies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly
    #       information for a single image, including the image location and the assigned label.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListDatasetEntries</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetEntriesInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to list.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of the dataset that you want to list.  Specify <code>train</code> to list
    #            the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset
    #         project, specify <code>train</code>.</p>
    #
    # @option params [Boolean] :labeled
    #   <p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you
    #         don't specify a value, Lookout for Vision returns all entries.</p>
    #
    # @option params [String] :anomaly_class
    #   <p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include
    #            anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>
    #
    # @option params [Time] :before_creation_date
    #   <p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #
    # @option params [Time] :after_creation_date
    #   <p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of dataset entries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    # @option params [String] :source_ref_contains
    #   <p>Perform a "contains" search on the  values of the <code>source-ref</code> key within the dataset.
    #            For example a value of "IMG_17"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>
    #
    # @return [Types::ListDatasetEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_entries(
    #     project_name: 'ProjectName', # required
    #     dataset_type: 'DatasetType', # required
    #     labeled: false,
    #     anomaly_class: 'AnomalyClass',
    #     before_creation_date: Time.now,
    #     after_creation_date: Time.now,
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     source_ref_contains: 'SourceRefContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetEntriesOutput
    #   resp.data.dataset_entries #=> Array<String>
    #   resp.data.dataset_entries[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_dataset_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetEntriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetEntries
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListDatasetEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetEntries,
        stubs: @stubs,
        params_class: Params::ListDatasetEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_entries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Lists the model packaging jobs created for an Amazon Lookout for Vision project.
    # </p>
    #          <p>This operation requires permissions to perform the
    #     <code>lookoutvision:ListModelPackagingJobs</code> operation.
    # </p>
    #
    #          <p>For more information, see
    #       <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::ListModelPackagingJobsInput}.
    #
    # @option params [String] :project_name
    #   <p>
    #   The name of the project for which you want to list the model packaging jobs.
    #   </p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    # @return [Types::ListModelPackagingJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_packaging_jobs(
    #     project_name: 'ProjectName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListModelPackagingJobsOutput
    #   resp.data.model_packaging_jobs #=> Array<ModelPackagingJobMetadata>
    #   resp.data.model_packaging_jobs[0] #=> Types::ModelPackagingJobMetadata
    #   resp.data.model_packaging_jobs[0].job_name #=> String
    #   resp.data.model_packaging_jobs[0].project_name #=> String
    #   resp.data.model_packaging_jobs[0].model_version #=> String
    #   resp.data.model_packaging_jobs[0].model_packaging_job_description #=> String
    #   resp.data.model_packaging_jobs[0].model_packaging_method #=> String
    #   resp.data.model_packaging_jobs[0].status #=> String, one of ["CREATED", "RUNNING", "SUCCEEDED", "FAILED"]
    #   resp.data.model_packaging_jobs[0].status_message #=> String
    #   resp.data.model_packaging_jobs[0].creation_timestamp #=> Time
    #   resp.data.model_packaging_jobs[0].last_updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_model_packaging_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListModelPackagingJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListModelPackagingJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListModelPackagingJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListModelPackagingJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListModelPackagingJobs,
        stubs: @stubs,
        params_class: Params::ListModelPackagingJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_model_packaging_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the versions of a model in an Amazon Lookout for Vision project.</p>
    #          <p>The <code>ListModels</code> operation is eventually consistent.
    #          Recent calls to <code>CreateModel</code> might
    #          take a while to appear in the response from <code>ListProjects</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListModels</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListModelsInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model versions that you want to list.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of models.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    # @return [Types::ListModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models(
    #     project_name: 'ProjectName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListModelsOutput
    #   resp.data.models #=> Array<ModelMetadata>
    #   resp.data.models[0] #=> Types::ModelMetadata
    #   resp.data.models[0].creation_timestamp #=> Time
    #   resp.data.models[0].model_version #=> String
    #   resp.data.models[0].model_arn #=> String
    #   resp.data.models[0].description #=> String
    #   resp.data.models[0].status #=> String, one of ["TRAINING", "TRAINED", "TRAINING_FAILED", "STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING", "DELETING"]
    #   resp.data.models[0].status_message #=> String
    #   resp.data.models[0].performance #=> Types::ModelPerformance
    #   resp.data.models[0].performance.f1_score #=> Float
    #   resp.data.models[0].performance.recall #=> Float
    #   resp.data.models[0].performance.precision #=> Float
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Lists the Amazon Lookout for Vision projects in your AWS account.</p>
    #          <p>The <code>ListProjects</code> operation is eventually consistent.
    #          Recent calls to <code>CreateProject</code> and <code>DeleteProject</code> might
    #          take a while to appear in the response from <code>ListProjects</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListProjects</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of projects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<ProjectMetadata>
    #   resp.data.projects[0] #=> Types::ProjectMetadata
    #   resp.data.projects[0].project_arn #=> String
    #   resp.data.projects[0].project_name #=> String
    #   resp.data.projects[0].creation_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProjects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProjects,
        stubs: @stubs,
        params_class: Params::ListProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags attached to the specified Amazon Lookout for Vision model.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:ListTagsForResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while
    #          to complete. To check the current state of the model, use <a>DescribeModel</a>.</p>
    #          <p>A model is ready to use when its status is <code>HOSTED</code>.</p>
    #          <p>Once the model is running, you can detect custom labels in new images by calling
    #          <a>DetectAnomalies</a>.</p>
    #          <note>
    #             <p>You are charged for the amount of time that the model is running. To stop a running
    #          model, call <a>StopModel</a>.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:StartModel</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::StartModelInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to start.</p>
    #
    # @option params [String] :model_version
    #   <p>The version of the model that you want to start.</p>
    #
    # @option params [Integer] :min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #            inference unit represents 1 hour of processing.
    #            Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #            of inference units that you use.
    #         </p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue might prevent
    #            you from getting a response from <code>StartModel</code>.
    #            In this case, safely retry your call
    #            to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. </p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple start requests. You'll need to
    #            provide your own value for other use cases. </p>
    #
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #
    # @return [Types::StartModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_model(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion', # required
    #     min_inference_units: 1, # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartModelOutput
    #   resp.data.status #=> String, one of ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #
    def start_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartModel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::StartModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartModel,
        stubs: @stubs,
        params_class: Params::StartModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an Amazon Lookout for Vision model packaging job. A model packaging job creates an AWS IoT Greengrass component for
    #    a Lookout for Vision model. You can use the component to deploy your model to an edge device managed by Greengrass.
    # </p>
    #
    #          <p>Use the <a>DescribeModelPackagingJob</a> API to determine the current status of the job.
    #
    #   The model packaging job is complete if the value of <code>Status</code> is <code>SUCCEEDED</code>.</p>
    #          <p>To deploy the component
    #       to the target device, use the component name and component version
    #       with the AWS IoT Greengrass <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html">CreateDeployment</a> API.</p>
    #
    #          <p>This operation requires the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>lookoutvision:StartModelPackagingJob</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:PutObject</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:GetBucketLocation</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>greengrass:CreateComponentVersion</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>greengrass:DescribeComponent</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>(Optional) <code>greengrass:TagResource</code>. Only required if you want to tag the component.</p>
    #             </li>
    #          </ul>
    #
    #
    #          <p>For more information, see
    #       <i>Using your Amazon Lookout for Vision model on an edge device</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::StartModelPackagingJobInput}.
    #
    # @option params [String] :project_name
    #   <p>
    #   The name of the project which contains the version of the model that you want to package.
    #   </p>
    #
    # @option params [String] :model_version
    #   <p>
    #   The version of the model within the project that you want to package.
    #   </p>
    #
    # @option params [String] :job_name
    #   <p>A name for the model packaging job. If you don't supply a value, the service creates
    #      a job name for you.
    #   </p>
    #
    # @option params [ModelPackagingConfiguration] :configuration
    #   <p>The configuration for the model packaging job.
    #   </p>
    #
    # @option params [String] :description
    #   <p>A description for the model packaging job.
    #   </p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StartModelPackagingJob</code>
    #         completes only once.  You choose the value to pass. For example, An issue might prevent you
    #         from getting a response from <code>StartModelPackagingJob</code>.
    #         In this case, safely retry your call
    #         to <code>StartModelPackagingJob</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #         This prevents retries after a network error from making multiple dataset creation requests. You'll need to
    #         provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #         value for <code>ClientToken</code> is considered a new call to <code>StartModelPackagingJob</code>. An idempotency
    #         token is active for 8 hours.
    #      </p>
    #
    # @return [Types::StartModelPackagingJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_model_packaging_job(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion', # required
    #     job_name: 'JobName',
    #     configuration: {
    #       greengrass: {
    #         compiler_options: 'CompilerOptions',
    #         target_device: 'jetson_xavier', # accepts ["jetson_xavier"]
    #         target_platform: {
    #           os: 'LINUX', # required - accepts ["LINUX"]
    #           arch: 'ARM64', # required - accepts ["ARM64", "X86_64"]
    #           accelerator: 'NVIDIA' # required - accepts ["NVIDIA"]
    #         },
    #         s3_output_location: {
    #           bucket: 'Bucket', # required
    #           prefix: 'Prefix'
    #         }, # required
    #         component_name: 'ComponentName', # required
    #         component_version: 'ComponentVersion',
    #         component_description: 'ComponentDescription',
    #         tags: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value' # required
    #           }
    #         ]
    #       } # required
    #     }, # required
    #     description: 'Description',
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartModelPackagingJobOutput
    #   resp.data.job_name #=> String
    #
    def start_model_packaging_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartModelPackagingJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartModelPackagingJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartModelPackagingJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::StartModelPackagingJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartModelPackagingJob,
        stubs: @stubs,
        params_class: Params::StartModelPackagingJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_model_packaging_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the hosting of a running model. The operation might take a while to complete. To
    #          check the current status, call <a>DescribeModel</a>. </p>
    #          <p>After the model hosting stops, the <code>Status</code> of the model is <code>TRAINED</code>.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:StopModel</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::StopModelInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the model that you want to stop.</p>
    #
    # @option params [String] :model_version
    #   <p>The version of the model that you want to stop.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>StopModel</code>.
    #            In this case, safely retry your call
    #            to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple stop requests. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency
    #            token is active for 8 hours.
    #
    #
    #         </p>
    #
    # @return [Types::StopModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_model(
    #     project_name: 'ProjectName', # required
    #     model_version: 'ModelVersion', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopModelOutput
    #   resp.data.status #=> String, one of ["STARTING_HOSTING", "HOSTED", "HOSTING_FAILED", "STOPPING_HOSTING", "SYSTEM_UPDATING"]
    #
    def stop_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopModel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::StopModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopModel,
        stubs: @stubs,
        params_class: Params::StopModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more key-value tags to an Amazon Lookout for Vision model.
    #          For more information, see <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:TagResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value tags to assign to the model.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Removes one or more tags from an Amazon Lookout for Vision model. For more information, see
    #          <i>Tagging a model</i> in the <i>Amazon Lookout for Vision Developer Guide</i>. </p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:UntagResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags that you want to remove.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
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

    # <p>Adds or updates one or more JSON Line entries in a dataset. A JSON Line includes information about an image
    #          used for training or testing an Amazon Lookout for Vision model.</p>
    #          <p>To update an existing JSON Line, use the <code>source-ref</code> field to identify the JSON Line. The JSON line
    #          that you supply replaces the existing JSON line. Any existing annotations that are not in the new JSON line are removed from the dataset.
    #       </p>
    #
    #
    #          <p>For more information, see
    #          <i>Defining JSON lines for anomaly classification</i> in the  Amazon Lookout for Vision Developer Guide. </p>
    #
    #          <note>
    #             <p>The images you reference in the <code>source-ref</code> field of a JSON line, must be
    #       in the same S3 bucket as the existing images in the dataset. </p>
    #          </note>
    #
    #          <p>Updating a dataset might take a while to complete. To check the current status, call <a>DescribeDataset</a> and
    #          check the <code>Status</code> field in the response.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>lookoutvision:UpdateDatasetEntries</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetEntriesInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project that contains the dataset that you want to update.</p>
    #
    # @option params [String] :dataset_type
    #   <p>The type of the dataset that you want to update. Specify <code>train</code> to update
    #         the training dataset. Specify <code>test</code> to update the test dataset. If you
    #          have a single dataset project, specify <code>train</code>.</p>
    #
    # @option params [String] :changes
    #   <p>The entries to add to the dataset.</p>
    #
    # @option params [String] :client_token
    #   <p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>
    #            completes only once.  You choose the value to pass. For example, An issue
    #            might prevent you from getting a response from <code>UpdateDatasetEntries</code>.
    #            In this case, safely retry your call
    #            to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value.</p>
    #            <p>If you don't supply a value for <code>ClientToken</code>, the AWS SDK you are using inserts a value for you.
    #            This prevents retries after a network error from making multiple updates with the same dataset entries. You'll need to
    #            provide your own value for other use cases. </p>
    #            <p>An error occurs
    #            if the other input parameters are not the same as in the first request. Using a different
    #            value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency
    #            token is active for 8 hours.
    #         </p>
    #
    # @return [Types::UpdateDatasetEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_entries(
    #     project_name: 'ProjectName', # required
    #     dataset_type: 'DatasetType', # required
    #     changes: 'Changes', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetEntriesOutput
    #   resp.data.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED_ROLLBACK_IN_PROGRESS", "UPDATE_FAILED_ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED"]
    #
    def update_dataset_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetEntriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDatasetEntries
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateDatasetEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDatasetEntries,
        stubs: @stubs,
        params_class: Params::UpdateDatasetEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset_entries
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
