# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::DataPipeline
  # An API client for DataPipeline
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline
  #             handles the details of scheduling and ensuring that data dependencies are met so that your application
  #             can focus on processing the data.</p>
  #
  #         <p>AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner.
  #             AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing
  #             database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use
  #             AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide
  #             custom data management.</p>
  #
  #         <p>AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline
  #            and define data sources, schedules, dependencies, and the transforms to be performed on the data.
  #            Use the second set in your task runner application to receive the next task ready for processing.
  #            The logic for performing the task, such as querying the data, running data analysis, or converting
  #            the data from one format to another, is contained within the task runner. The task runner performs
  #            the task assigned to it by the web service, reporting progress to the web service as it does so.
  #            When the task is done, the task runner reports the final success or failure of the task to the web service.</p>
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
    def initialize(config = AWS::SDK::DataPipeline::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation,
    #            activation fails.</p>
    #         <p>If you need to pause the pipeline to investigate an issue with a component, such as a data source or script,
    #            call <a>DeactivatePipeline</a>.</p>
    #         <p>To activate a finished pipeline, modify the end date for the pipeline and then activate it.</p>
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ActivatePipeline
    # Content-Length: 39
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    #
    #             </request>
    #             <response>
    #
    # HTTP/1.1 200
    # x-amzn-RequestId: ee19d5bf-074e-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 2
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {}
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::ActivatePipelineInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Array<ParameterValue>] :parameter_values
    #   <p>A list of parameter values to pass to the pipeline at activation.</p>
    #
    # @option params [Time] :start_timestamp
    #   <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
    #
    # @return [Types::ActivatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_pipeline(
    #     pipeline_id: 'pipelineId', # required
    #     parameter_values: [
    #       {
    #         id: 'id', # required
    #         string_value: 'stringValue' # required
    #       }
    #     ],
    #     start_timestamp: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivatePipelineOutput
    #
    def activate_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivatePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivatePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::ActivatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivatePipeline,
        stubs: @stubs,
        params_class: Params::ActivatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or modifies tags for the specified pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add, as key/value pairs.</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     pipeline_id: 'pipelineId', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
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

    # <p>Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to populate the pipeline.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.CreatePipeline
    # Content-Length: 91
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"name": "myPipeline",
    #  "uniqueId": "123456789",
    #  "description": "This is my first pipeline"}
    #
    #             </request>
    #
    #             <response>
    #
    # HTTP/1.1 200
    # x-amzn-RequestId: b16911ce-0774-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 40
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::CreatePipelineInput}.
    #
    # @option params [String] :name
    #   <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account,
    #               because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
    #
    # @option params [String] :unique_id
    #   <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline.
    #               You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this
    #               parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the
    #               first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and
    #               pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code>
    #               ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not
    #               created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the
    #               name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
    #
    # @option params [String] :description
    #   <p>The description for the pipeline.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines.
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a>
    #               in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    #
    # @return [Types::CreatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline(
    #     name: 'name', # required
    #     unique_id: 'uniqueId', # required
    #     description: 'description',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePipelineOutput
    #   resp.data.pipeline_id #=> String
    #
    def create_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException]),
        data_parser: Parsers::CreatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePipeline,
        stubs: @stubs,
        params_class: Params::CreatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates the specified running pipeline. The pipeline is set to the <code>DEACTIVATING</code>
    #           state until the deactivation process completes.</p>
    #         <p>To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default, the pipeline resumes from the last completed execution.
    #           Optionally, you can specify the date and time to resume the pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivatePipelineInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Boolean] :cancel_active
    #   <p>Indicates whether to cancel any running objects. The default is true,
    #             which sets the state of any running objects to <code>CANCELED</code>.
    #             If this value is false, the pipeline is deactivated after all
    #             running objects finish.</p>
    #
    # @return [Types::DeactivatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_pipeline(
    #     pipeline_id: 'pipelineId', # required
    #     cancel_active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivatePipelineOutput
    #
    def deactivate_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivatePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivatePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::DeactivatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivatePipeline,
        stubs: @stubs,
        params_class: Params::DeactivatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a pipeline, its pipeline definition, and its run history.
    #            AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.</p>
    #         <p>Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline.
    #             To temporarily pause a pipeline instead of deleting it, call <a>SetStatus</a> with the status set to <code>PAUSE</code> on individual components.
    #             Components that are paused by <a>SetStatus</a> can be resumed.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DeletePipeline
    # Content-Length: 50
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: b7a88c81-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # Unexpected response: 200, OK, undefined
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::DeletePipelineInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @return [Types::DeletePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline(
    #     pipeline_id: 'pipelineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePipelineOutput
    #
    def delete_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::DeletePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePipeline,
        stubs: @stubs,
        params_class: Params::DeletePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of
    #             a set of fields that define the properties of the object.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribeObjects
    # Content-Length: 98
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "objectIds":
    #   ["Schedule"],
    #  "evaluateExpressions": true}
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: 4c18ea5d-0777-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 1488
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"hasMoreResults": false,
    #  "pipelineObjects":
    #   [
    #     {"fields":
    #       [
    #         {"key": "startDateTime",
    #          "stringValue": "2012-12-12T00:00:00"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "@sphere",
    #          "stringValue": "COMPONENT"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-12-21T18:00:00"},
    #         {"key": "@version",
    #          "stringValue": "1"},
    #         {"key": "@status",
    #          "stringValue": "PENDING"},
    #         {"key": "@pipelineId",
    #          "stringValue": "df-06372391ZG65EXAMPLE"}
    #       ],
    #      "id": "Schedule",
    #      "name": "Schedule"}
    #   ]
    # }
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::DescribeObjectsInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline that contains the object definitions.</p>
    #
    # @option params [Array<String>] :object_ids
    #   <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
    #
    # @option params [Boolean] :evaluate_expressions
    #   <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
    #
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty.
    #              As long as there are more results, continue to call <code>DescribeObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #
    # @return [Types::DescribeObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_objects(
    #     pipeline_id: 'pipelineId', # required
    #     object_ids: [
    #       'member'
    #     ], # required
    #     evaluate_expressions: false,
    #     marker: 'marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeObjectsOutput
    #   resp.data.pipeline_objects #=> Array<PipelineObject>
    #   resp.data.pipeline_objects[0] #=> Types::PipelineObject
    #   resp.data.pipeline_objects[0].id #=> String
    #   resp.data.pipeline_objects[0].name #=> String
    #   resp.data.pipeline_objects[0].fields #=> Array<Field>
    #   resp.data.pipeline_objects[0].fields[0] #=> Types::Field
    #   resp.data.pipeline_objects[0].fields[0].key #=> String
    #   resp.data.pipeline_objects[0].fields[0].string_value #=> String
    #   resp.data.pipeline_objects[0].fields[0].ref_value #=> String
    #   resp.data.marker #=> String
    #   resp.data.has_more_results #=> Boolean
    #
    def describe_objects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeObjectsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeObjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeObjects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::DescribeObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeObjects,
        stubs: @stubs,
        params_class: Params::DescribeObjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_objects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier,
    #             its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines
    #             that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines
    #             for which you have read permissions.</p>
    #         <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribePipelines
    # Content-Length: 70
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineIds":
    #   ["df-08785951KAKJEXAMPLE"]
    # }
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 767
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"pipelineDescriptionList":
    #   [
    #     {"description": "This is my first pipeline",
    #      "fields":
    #       [
    #         {"key": "@pipelineState",
    #          "stringValue": "SCHEDULED"},
    #         {"key": "description",
    #          "stringValue": "This is my first pipeline"},
    #         {"key": "name",
    #          "stringValue": "myPipeline"},
    #         {"key": "@creationTime",
    #          "stringValue": "2012-12-13T01:24:06"},
    #         {"key": "@id",
    #          "stringValue": "df-0937003356ZJEXAMPLE"},
    #         {"key": "@sphere",
    #          "stringValue": "PIPELINE"},
    #         {"key": "@version",
    #          "stringValue": "1"},
    #         {"key": "@userId",
    #          "stringValue": "924374875933"},
    #         {"key": "@accountId",
    #          "stringValue": "924374875933"},
    #         {"key": "uniqueId",
    #          "stringValue": "1234567890"}
    #       ],
    #      "name": "myPipeline",
    #      "pipelineId": "df-0937003356ZJEXAMPLE"}
    #   ]
    # }
    # </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::DescribePipelinesInput}.
    #
    # @option params [Array<String>] :pipeline_ids
    #   <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call.
    #               To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
    #
    # @return [Types::DescribePipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pipelines(
    #     pipeline_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePipelinesOutput
    #   resp.data.pipeline_description_list #=> Array<PipelineDescription>
    #   resp.data.pipeline_description_list[0] #=> Types::PipelineDescription
    #   resp.data.pipeline_description_list[0].pipeline_id #=> String
    #   resp.data.pipeline_description_list[0].name #=> String
    #   resp.data.pipeline_description_list[0].fields #=> Array<Field>
    #   resp.data.pipeline_description_list[0].fields[0] #=> Types::Field
    #   resp.data.pipeline_description_list[0].fields[0].key #=> String
    #   resp.data.pipeline_description_list[0].fields[0].string_value #=> String
    #   resp.data.pipeline_description_list[0].fields[0].ref_value #=> String
    #   resp.data.pipeline_description_list[0].description #=> String
    #   resp.data.pipeline_description_list[0].tags #=> Array<Tag>
    #   resp.data.pipeline_description_list[0].tags[0] #=> Types::Tag
    #   resp.data.pipeline_description_list[0].tags[0].key #=> String
    #   resp.data.pipeline_description_list[0].tags[0].value #=> String
    #
    def describe_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePipelinesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePipelines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::DescribePipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePipelines,
        stubs: @stubs,
        params_class: Params::DescribePipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Task runners call <code>EvaluateExpression</code> to evaluate a string in the context of the specified object.
    #             For example, a task runner can evaluate SQL queries stored in Amazon S3.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribePipelines
    # Content-Length: 164
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-08785951KAKJEXAMPLE",
    #         "objectId": "Schedule",
    #         "expression": "Transform started at #{startDateTime} and finished at #{endDateTime}"}
    #
    #             </request>
    #
    #
    #             <response>
    #
    # x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 103
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"evaluatedExpression": "Transform started at 2012-12-12T00:00:00 and finished at 2012-12-21T18:00:00"}
    # </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::EvaluateExpressionInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [String] :member_object_id
    #   <p>The ID of the object.</p>
    #
    # @option params [String] :expression
    #   <p>The expression to evaluate.</p>
    #
    # @return [Types::EvaluateExpressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_expression(
    #     pipeline_id: 'pipelineId', # required
    #     member_object_id: 'objectId', # required
    #     expression: 'expression' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EvaluateExpressionOutput
    #   resp.data.evaluated_expression #=> String
    #
    def evaluate_expression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EvaluateExpressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EvaluateExpressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EvaluateExpression
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException, Errors::TaskNotFoundException]),
        data_parser: Parsers::EvaluateExpression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EvaluateExpression,
        stubs: @stubs,
        params_class: Params::EvaluateExpressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :evaluate_expression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the definition of the specified pipeline. You can call <code>GetPipelineDefinition</code> to retrieve
    #             the pipeline definition that you provided using <a>PutPipelineDefinition</a>.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.GetPipelineDefinition
    # Content-Length: 40
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    #
    #             </request>
    #             <response>
    #
    # x-amzn-RequestId: e28309e5-0776-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 890
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"pipelineObjects":
    #   [
    #     {"fields":
    #       [
    #         {"key": "workerGroup",
    #          "stringValue": "workerGroup"}
    #       ],
    #      "id": "Default",
    #      "name": "Default"},
    #     {"fields":
    #       [
    #         {"key": "startDateTime",
    #          "stringValue": "2012-09-25T17:00:00"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ],
    #      "id": "Schedule",
    #      "name": "Schedule"},
    #     {"fields":
    #       [
    #         {"key": "schedule",
    #          "refValue": "Schedule"},
    #         {"key": "command",
    #          "stringValue": "echo hello"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "type",
    #          "stringValue": "ShellCommandActivity"}
    #       ],
    #      "id": "SayHello",
    #      "name": "SayHello"}
    #   ]
    # }
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::GetPipelineDefinitionInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [String] :version
    #   <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default)
    #               to use the last definition saved to the pipeline or <code>active</code> to use the last definition
    #               that was activated.</p>
    #
    # @return [Types::GetPipelineDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_definition(
    #     pipeline_id: 'pipelineId', # required
    #     version: 'version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPipelineDefinitionOutput
    #   resp.data.pipeline_objects #=> Array<PipelineObject>
    #   resp.data.pipeline_objects[0] #=> Types::PipelineObject
    #   resp.data.pipeline_objects[0].id #=> String
    #   resp.data.pipeline_objects[0].name #=> String
    #   resp.data.pipeline_objects[0].fields #=> Array<Field>
    #   resp.data.pipeline_objects[0].fields[0] #=> Types::Field
    #   resp.data.pipeline_objects[0].fields[0].key #=> String
    #   resp.data.pipeline_objects[0].fields[0].string_value #=> String
    #   resp.data.pipeline_objects[0].fields[0].ref_value #=> String
    #   resp.data.parameter_objects #=> Array<ParameterObject>
    #   resp.data.parameter_objects[0] #=> Types::ParameterObject
    #   resp.data.parameter_objects[0].id #=> String
    #   resp.data.parameter_objects[0].attributes #=> Array<ParameterAttribute>
    #   resp.data.parameter_objects[0].attributes[0] #=> Types::ParameterAttribute
    #   resp.data.parameter_objects[0].attributes[0].key #=> String
    #   resp.data.parameter_objects[0].attributes[0].string_value #=> String
    #   resp.data.parameter_values #=> Array<ParameterValue>
    #   resp.data.parameter_values[0] #=> Types::ParameterValue
    #   resp.data.parameter_values[0].id #=> String
    #   resp.data.parameter_values[0].string_value #=> String
    #
    def get_pipeline_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPipelineDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPipelineDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPipelineDefinition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::GetPipelineDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPipelineDefinition,
        stubs: @stubs,
        params_class: Params::GetPipelineDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pipeline_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the pipeline identifiers for all active pipelines that you have permission to access.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ListPipelines
    # Content-Length: 14
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {}</request>
    #
    #             <response>
    #
    # Status:
    # x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 39
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"PipelineIdList":
    #   [
    #     {"id": "df-08785951KAKJEXAMPLE",
    #      "name": "MyPipeline"},
    #     {"id": "df-08662578ISYEXAMPLE",
    #      "name": "MySecondPipeline"}
    #   ]
    # }</response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::ListPipelinesInput}.
    #
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty.
    #              As long as there are more results, continue to call <code>ListPipelines</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #
    # @return [Types::ListPipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines(
    #     marker: 'marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPipelinesOutput
    #   resp.data.pipeline_id_list #=> Array<PipelineIdName>
    #   resp.data.pipeline_id_list[0] #=> Types::PipelineIdName
    #   resp.data.pipeline_id_list[0].id #=> String
    #   resp.data.pipeline_id_list[0].name #=> String
    #   resp.data.marker #=> String
    #   resp.data.has_more_results #=> Boolean
    #
    def list_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPipelinesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPipelines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPipelines,
        stubs: @stubs,
        params_class: Params::ListPipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Task runners call <code>PollForTask</code> to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform
    #             by setting a value for the <code>workerGroup</code> parameter. The task returned can come from any of the pipelines that
    #             match the <code>workerGroup</code> value passed in by the task runner and that was launched using the IAM user credentials
    #             specified by the task runner.</p>
    #         <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue,
    #             <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly
    #             scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task
    #             runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds.
    #         </p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PollForTask
    # Content-Length: 59
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"workerGroup": "MyworkerGroup",
    #  "hostname": "example.com"}
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: 41c713d2-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 39
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"taskObject":
    #   {"attemptId": "@SayHello_2012-12-12T00:00:00_Attempt=1",
    #    "objects":
    #     {"@SayHello_2012-12-12T00:00:00_Attempt=1":
    #       {"fields":
    #         [
    #           {"key": "@componentParent",
    #            "refValue": "SayHello"},
    #           {"key": "@scheduledStartTime",
    #            "stringValue": "2012-12-12T00:00:00"},
    #           {"key": "parent",
    #            "refValue": "SayHello"},
    #           {"key": "@sphere",
    #            "stringValue": "ATTEMPT"},
    #           {"key": "workerGroup",
    #            "stringValue": "workerGroup"},
    #           {"key": "@instanceParent",
    #            "refValue": "@SayHello_2012-12-12T00:00:00"},
    #           {"key": "type",
    #            "stringValue": "ShellCommandActivity"},
    #           {"key": "@status",
    #            "stringValue": "WAITING_FOR_RUNNER"},
    #           {"key": "@version",
    #            "stringValue": "1"},
    #           {"key": "schedule",
    #            "refValue": "Schedule"},
    #           {"key": "@actualStartTime",
    #            "stringValue": "2012-12-13T01:40:50"},
    #           {"key": "command",
    #            "stringValue": "echo hello"},
    #           {"key": "@scheduledEndTime",
    #            "stringValue": "2012-12-12T01:00:00"},
    #           {"key": "@activeInstances",
    #            "refValue": "@SayHello_2012-12-12T00:00:00"},
    #           {"key": "@pipelineId",
    #            "stringValue": "df-0937003356ZJEXAMPLE"}
    #         ],
    #        "id": "@SayHello_2012-12-12T00:00:00_Attempt=1",
    #        "name": "@SayHello_2012-12-12T00:00:00_Attempt=1"}
    #     },
    #    "pipelineId": "df-0937003356ZJEXAMPLE",
    #    "taskId": "2xaM4wRs5zOsIH+g9U3oVHfAgAlbSqU6XduncB0HhZ3xMnmvfePZPn4dIbYXHyWyRK+cU15MqDHwdrvftx/4wv+sNS4w34vJfv7QA9aOoOazW28l1GYSb2ZRR0N0paiQp+d1MhSKo10hOTWOsVK5S5Lnx9Qm6omFgXHyIvZRIvTlrQMpr1xuUrflyGOfbFOGpOLpvPE172MYdqpZKnbSS4TcuqgQKSWV2833fEubI57DPOP7ghWa2TcYeSIv4pdLYG53fTuwfbnbdc98g2LNUQzSVhSnt7BoqyNwht2aQ6b/UHg9A80+KVpuXuqmz3m1MXwHFgxjdmuesXNOrrlGpeLCcRWD+aGo0RN1NqhQRzNAig8V4GlaPTQzMsRCljKqvrIyAoP3Tt2XEGsHkkQo12rEX8Z90957XX2qKRwhruwYzqGkSLWjINoLdAxUJdpRXRc5DJTrBd3D5mdzn7kY1l7NEh4kFHJDt3Cx4Z3Mk8MYCACyCk/CEyy9DwuPi66cLz0NBcgbCM5LKjTBOwo1m+am+pvM1kSposE9FPP1+RFGb8k6jQBTJx3TRz1yKilnGXQTZ5xvdOFpJrklIT0OXP1MG3+auM9FlJA+1dX90QoNJE5z7axmK//MOGXUdkqFe2kiDkorqjxwDvc0Js9pVKfKvAmW8YqUbmI9l0ERpWCXXnLVHNmPWz3jaPY+OBAmuJWDmxB/Z8p94aEDg4BVXQ7LvsKQ3DLYhaB7yJ390CJT+i0mm+EBqY60V6YikPSWDFrYQ/NPi2b1DgE19mX8zHqw8qprIl4yh1Ckx2Iige4En/N5ktOoIxnASxAw/TzcE2skxdw5KlHDF+UTj71m16CR/dIaKlXijlfNlNzUBo/bNSadCQn3G5NoO501wPKI:XO50TgDNyo8EXAMPLE/g==:1"}
    # }
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::PollForTaskInput}.
    #
    # @option params [String] :worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created.
    #               You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in
    #               <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
    #
    # @option params [String] :hostname
    #   <p>The public DNS name of the calling task runner.</p>
    #
    # @option params [InstanceIdentity] :instance_identity
    #   <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
    #
    # @return [Types::PollForTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_task(
    #     worker_group: 'workerGroup', # required
    #     hostname: 'hostname',
    #     instance_identity: {
    #       document: 'document',
    #       signature: 'signature'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PollForTaskOutput
    #   resp.data.task_object #=> Types::TaskObject
    #   resp.data.task_object.task_id #=> String
    #   resp.data.task_object.pipeline_id #=> String
    #   resp.data.task_object.attempt_id #=> String
    #   resp.data.task_object.objects #=> Hash<String, PipelineObject>
    #   resp.data.task_object.objects['key'] #=> Types::PipelineObject
    #   resp.data.task_object.objects['key'].id #=> String
    #   resp.data.task_object.objects['key'].name #=> String
    #   resp.data.task_object.objects['key'].fields #=> Array<Field>
    #   resp.data.task_object.objects['key'].fields[0] #=> Types::Field
    #   resp.data.task_object.objects['key'].fields[0].key #=> String
    #   resp.data.task_object.objects['key'].fields[0].string_value #=> String
    #   resp.data.task_object.objects['key'].fields[0].ref_value #=> String
    #
    def poll_for_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PollForTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PollForTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PollForTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::TaskNotFoundException]),
        data_parser: Parsers::PollForTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PollForTask,
        stubs: @stubs,
        params_class: Params::PollForTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :poll_for_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tasks, schedules, and preconditions to the specified pipeline. You can use <code>PutPipelineDefinition</code> to populate a new pipeline.</p>
    #         <p>
    #             <code>PutPipelineDefinition</code> also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one
    #             of the following three validation errors exists in the pipeline.
    #         </p>
    #         <ol>
    #             <li>An object is missing a name or identifier field.</li>
    #             <li>A string or reference field is empty.</li>
    #             <li>The number of objects in the pipeline exceeds the maximum allowed objects.</li>
    #             <li>The pipeline is in a FINISHED state.</li>
    #         </ol>
    #         <p>
    #             Pipeline object definitions are passed to the <code>PutPipelineDefinition</code> action and returned by the <a>GetPipelineDefinition</a> action.
    #         </p>
    #         <examples>
    #             <example>
    #                 <name>Example 1</name>
    #                 <description>
    #                     This example sets an valid pipeline configuration and returns success.
    #                 </description>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PutPipelineDefinition
    # Content-Length: 914
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-0937003356ZJEXAMPLE",
    #  "pipelineObjects":
    #   [
    #    {"id": "Default",
    #      "name": "Default",
    #      "fields":
    #       [
    #         {"key": "workerGroup",
    #          "stringValue": "workerGroup"}
    #       ]
    #     },
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields":
    #       [
    #        {"key": "startDateTime",
    #          "stringValue": "2012-12-12T00:00:00"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-12-21T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields":
    #       [
    #         {"key": "type",
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command",
    #          "stringValue": "echo hello"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "schedule",
    #          "refValue": "Schedule"}
    #       ]
    #     }
    #   ]
    # }
    #
    #             </request>
    #             <response>
    #
    # HTTP/1.1 200
    # x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"errored": false}
    #
    #
    #             </response>
    #             </example>
    #             <example>
    #                 <name>Example 2</name>
    #                 <description>
    #                     This example sets an invalid pipeline configuration (the value for <code>workerGroup</code> is an empty string) and returns an error message.
    #                 </description>
    #                 <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PutPipelineDefinition
    # Content-Length: 903
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects":
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields":
    #       [
    #         {"key": "workerGroup",
    #          "stringValue": ""}
    #       ]
    #     },
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields":
    #       [
    #        {"key": "startDateTime",
    #          "stringValue": "2012-09-25T17:00:00"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields":
    #       [
    #         {"key": "type",
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command",
    #          "stringValue": "echo hello"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "schedule",
    #          "refValue": "Schedule"}
    #
    #       ]
    #     }
    #   ]
    # }
    #
    #                 </request>
    #                 <response>
    #
    # HTTP/1.1 200
    # x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"__type": "com.amazon.setl.webservice#InvalidRequestException",
    #  "message": "Pipeline definition has errors: Could not save the pipeline definition due to FATAL errors: [com.amazon.setl.webservice.ValidationError@108d7ea9] Please call Validate to validate your pipeline"}
    #
    #
    #                 </response>
    #             </example>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::PutPipelineDefinitionInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Array<PipelineObject>] :pipeline_objects
    #   <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
    #
    # @option params [Array<ParameterObject>] :parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    #
    # @option params [Array<ParameterValue>] :parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    #
    # @return [Types::PutPipelineDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_pipeline_definition(
    #     pipeline_id: 'pipelineId', # required
    #     pipeline_objects: [
    #       {
    #         id: 'id', # required
    #         name: 'name', # required
    #         fields: [
    #           {
    #             key: 'key', # required
    #             string_value: 'stringValue',
    #             ref_value: 'refValue'
    #           }
    #         ] # required
    #       }
    #     ], # required
    #     parameter_objects: [
    #       {
    #         id: 'id', # required
    #         attributes: [
    #           {
    #             key: 'key', # required
    #             string_value: 'stringValue' # required
    #           }
    #         ] # required
    #       }
    #     ],
    #     parameter_values: [
    #       {
    #         id: 'id', # required
    #         string_value: 'stringValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPipelineDefinitionOutput
    #   resp.data.validation_errors #=> Array<ValidationError>
    #   resp.data.validation_errors[0] #=> Types::ValidationError
    #   resp.data.validation_errors[0].id #=> String
    #   resp.data.validation_errors[0].errors #=> Array<String>
    #   resp.data.validation_errors[0].errors[0] #=> String
    #   resp.data.validation_warnings #=> Array<ValidationWarning>
    #   resp.data.validation_warnings[0] #=> Types::ValidationWarning
    #   resp.data.validation_warnings[0].id #=> String
    #   resp.data.validation_warnings[0].warnings #=> Array<String>
    #   resp.data.errored #=> Boolean
    #
    def put_pipeline_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPipelineDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPipelineDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPipelineDefinition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::PutPipelineDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPipelineDefinition,
        stubs: @stubs,
        params_class: Params::PutPipelineDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_pipeline_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Queries the specified pipeline for the names of objects that match the specified set of conditions.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.QueryObjects
    # Content-Length: 123
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "query":
    #   {"selectors":
    #     [
    #     ]
    #   },
    #  "sphere": "INSTANCE",
    #  "marker": "",
    #  "limit": 10}
    #
    #             </request>
    #
    #
    #             <response>
    #
    # x-amzn-RequestId: 14d704c1-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 72
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"hasMoreResults": false,
    #  "ids":
    #   ["@SayHello_1_2012-09-25T17:00:00"]
    # }
    #          </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::QueryObjectsInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Query] :query
    #   <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors.
    #               The conditions in the query are limited to top-level String fields in the object.
    #               These filters can be applied to components, instances, and attempts.</p>
    #
    # @option params [String] :sphere
    #   <p>Indicates whether the query applies to components or instances. The possible values are:	
    #               <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
    #
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty.
    #              As long as there are more results, continue to call <code>QueryObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
    #
    # @return [Types::QueryObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_objects(
    #     pipeline_id: 'pipelineId', # required
    #     query: {
    #       selectors: [
    #         {
    #           field_name: 'fieldName',
    #           operator: {
    #             type: 'EQ', # accepts ["EQ", "REF_EQ", "LE", "GE", "BETWEEN"]
    #             values: [
    #               'member'
    #             ]
    #           }
    #         }
    #       ]
    #     },
    #     sphere: 'sphere', # required
    #     marker: 'marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryObjectsOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.marker #=> String
    #   resp.data.has_more_results #=> Boolean
    #
    def query_objects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryObjectsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryObjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::QueryObjects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::QueryObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::QueryObjects,
        stubs: @stubs,
        params_class: Params::QueryObjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query_objects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes existing tags from the specified pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     pipeline_id: 'pipelineId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsOutput
    #
    def remove_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::RemoveTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTags,
        stubs: @stubs,
        params_class: Params::RemoveTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Task runners call <code>ReportTaskProgress</code> when assigned a task to acknowledge that it has the task. If the web service does not
    #             receive this acknowledgement within 2 minutes, it assigns the task in a subsequent <a>PollForTask</a> call. After this initial acknowledgement,
    #             the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time
    #             from 15 minutes by specifying a <code>reportProgressTimeout</code> field in your pipeline.</p>
    #         <p>If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task
    #             and reassigns the task in a subsequent response to <a>PollForTask</a>. Task runners should call <code>ReportTaskProgress</code> every 60 seconds.</p>
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ReportTaskProgress
    # Content-Length: 832
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
    #  "fields":
    #   [
    #     {"key": "percentComplete",
    #      "stringValue": "50"}
    #   ]
    # }
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: 640bd023-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"canceled": false}
    #
    # </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::ReportTaskProgressInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    #
    # @option params [Array<Field>] :fields
    #   <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
    #
    # @return [Types::ReportTaskProgressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.report_task_progress(
    #     task_id: 'taskId', # required
    #     fields: [
    #       {
    #         key: 'key', # required
    #         string_value: 'stringValue',
    #         ref_value: 'refValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReportTaskProgressOutput
    #   resp.data.canceled #=> Boolean
    #
    def report_task_progress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReportTaskProgressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReportTaskProgressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReportTaskProgress
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException, Errors::TaskNotFoundException]),
        data_parser: Parsers::ReportTaskProgress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReportTaskProgress,
        stubs: @stubs,
        params_class: Params::ReportTaskProgressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :report_task_progress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15 minutes to indicate that they are operational.
    #             If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use
    #             this call to detect when the task runner application has failed and restart a new instance.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ReportTaskRunnerHeartbeat
    # Content-Length: 84
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"taskrunnerId": "1234567890",
    #  "workerGroup": "wg-12345",
    #  "hostname": "example.com"}
    #
    #             </request>
    #
    #             <response>
    #
    # Status:
    # x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 20
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"terminate": false}
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::ReportTaskRunnerHeartbeatInput}.
    #
    # @option params [String] :taskrunner_id
    #   <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner
    #               launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application.
    #               If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
    #
    # @option params [String] :worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created.
    #               You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string
    #               must be an exact, case-sensitive, match.</p>
    #
    # @option params [String] :hostname
    #   <p>The public DNS name of the task runner.</p>
    #
    # @return [Types::ReportTaskRunnerHeartbeatOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.report_task_runner_heartbeat(
    #     taskrunner_id: 'taskrunnerId', # required
    #     worker_group: 'workerGroup',
    #     hostname: 'hostname'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReportTaskRunnerHeartbeatOutput
    #   resp.data.terminate #=> Boolean
    #
    def report_task_runner_heartbeat(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReportTaskRunnerHeartbeatInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReportTaskRunnerHeartbeatInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReportTaskRunnerHeartbeat
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException]),
        data_parser: Parsers::ReportTaskRunnerHeartbeat
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReportTaskRunnerHeartbeat,
        stubs: @stubs,
        params_class: Params::ReportTaskRunnerHeartbeatOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :report_task_runner_heartbeat
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline.
    #             This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity).
    #             You cannot perform this operation on <code>FINISHED</code> pipelines and attempting to do so returns <code>InvalidRequestException</code>.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.SetStatus
    # Content-Length: 100
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-0634701J7KEXAMPLE",
    #  "objectIds":
    #   ["o-08600941GHJWMBR9E2"],
    #  "status": "pause"}
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: e83b8ab7-076a-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # Unexpected response: 200, OK, undefined
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::SetStatusInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline that contains the objects.</p>
    #
    # @option params [Array<String>] :object_ids
    #   <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
    #
    # @option params [String] :status
    #   <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>.
    #               For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
    #
    # @return [Types::SetStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_status(
    #     pipeline_id: 'pipelineId', # required
    #     object_ids: [
    #       'member'
    #     ], # required
    #     status: 'status' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetStatusOutput
    #
    def set_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::SetStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetStatus,
        stubs: @stubs,
        params_class: Params::SetStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Task runners call <code>SetTaskStatus</code> to notify AWS Data Pipeline that a task is completed and provide information about the final status.
    #             A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call <code>SetTaskStatus</code> for
    #             tasks that are canceled by the web service during a call to <a>ReportTaskProgress</a>.</p>
    #
    #         <examples>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.SetTaskStatus
    # Content-Length: 847
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
    #  "taskStatus": "FINISHED"}
    #
    #             </request>
    #
    #             <response>
    #
    # x-amzn-RequestId: 8c8deb53-0788-11e2-af9c-6bc7a6be6qr8
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {}
    #
    #             </response>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::SetTaskStatusInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    #
    # @option params [String] :task_status
    #   <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
    #
    # @option params [String] :error_id
    #   <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object.
    #               It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
    #
    # @option params [String] :error_message
    #   <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object.
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    #
    # @option params [String] :error_stack_trace
    #   <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object.
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    #
    # @return [Types::SetTaskStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_task_status(
    #     task_id: 'taskId', # required
    #     task_status: 'FINISHED', # required - accepts ["FINISHED", "FAILED", "FALSE"]
    #     error_id: 'errorId',
    #     error_message: 'errorMessage',
    #     error_stack_trace: 'errorStackTrace'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTaskStatusOutput
    #
    def set_task_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTaskStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTaskStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTaskStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException, Errors::TaskNotFoundException]),
        data_parser: Parsers::SetTaskStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTaskStatus,
        stubs: @stubs,
        params_class: Params::SetTaskStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_task_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Validates the specified pipeline definition to ensure that it is well formed and can be run without error.</p>
    #
    #         <examples>
    #             <example>
    #                 <name>Example 1</name>
    #                 <description>
    #                     This example sets an valid pipeline configuration and returns success.
    #                 </description>
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ValidatePipelineDefinition
    # Content-Length: 936
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects":
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields":
    #       [
    #         {"key": "workerGroup",
    #          "stringValue": "MyworkerGroup"}
    #       ]
    #     },
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields":
    #       [
    #        {"key": "startDateTime",
    #          "stringValue": "2012-09-25T17:00:00"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields":
    #       [
    #         {"key": "type",
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command",
    #          "stringValue": "echo hello"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "schedule",
    #          "refValue": "Schedule"}
    #
    #       ]
    #     }
    #   ]
    # }
    #
    #             </request>
    #             <response>
    #
    # x-amzn-RequestId: 92c9f347-0776-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"errored": false}
    #
    #             </response>
    #             </example>
    #             <example>
    #              <name>Example 2</name>
    #             <description>
    #                 This example sets an invalid pipeline configuration and returns the associated set of validation errors.
    #             </description>
    #
    #             <request>
    #
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ValidatePipelineDefinition
    # Content-Length: 903
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    #
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects":
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields":
    #       [
    #         {"key": "workerGroup",
    #          "stringValue": "MyworkerGroup"}
    #       ]
    #     },
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields":
    #       [
    #        {"key": "startDateTime",
    #          "stringValue": "bad-time"},
    #         {"key": "type",
    #          "stringValue": "Schedule"},
    #         {"key": "period",
    #          "stringValue": "1 hour"},
    #         {"key": "endDateTime",
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields":
    #       [
    #         {"key": "type",
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command",
    #          "stringValue": "echo hello"},
    #         {"key": "parent",
    #          "refValue": "Default"},
    #         {"key": "schedule",
    #          "refValue": "Schedule"}
    #
    #       ]
    #     }
    #   ]
    # }
    #
    #             </request>
    #             <response>
    #
    # x-amzn-RequestId: 496a1f5a-0e6a-11e2-a61c-bd6312c92ddd
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 278
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    #
    # {"errored": true,
    #  "validationErrors":
    #   [
    #     {"errors":
    #       ["INVALID_FIELD_VALUE:  'startDateTime' value must be a literal datetime value."],
    #      "id": "Schedule"}
    #   ]
    # }
    #
    #             </response>
    #                 </example>
    #         </examples>
    #
    # @param [Hash] params
    #   See {Types::ValidatePipelineDefinitionInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    #
    # @option params [Array<PipelineObject>] :pipeline_objects
    #   <p>The objects that define the pipeline changes to validate against the pipeline.</p>
    #
    # @option params [Array<ParameterObject>] :parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    #
    # @option params [Array<ParameterValue>] :parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    #
    # @return [Types::ValidatePipelineDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_pipeline_definition(
    #     pipeline_id: 'pipelineId', # required
    #     pipeline_objects: [
    #       {
    #         id: 'id', # required
    #         name: 'name', # required
    #         fields: [
    #           {
    #             key: 'key', # required
    #             string_value: 'stringValue',
    #             ref_value: 'refValue'
    #           }
    #         ] # required
    #       }
    #     ], # required
    #     parameter_objects: [
    #       {
    #         id: 'id', # required
    #         attributes: [
    #           {
    #             key: 'key', # required
    #             string_value: 'stringValue' # required
    #           }
    #         ] # required
    #       }
    #     ],
    #     parameter_values: [
    #       {
    #         id: 'id', # required
    #         string_value: 'stringValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidatePipelineDefinitionOutput
    #   resp.data.validation_errors #=> Array<ValidationError>
    #   resp.data.validation_errors[0] #=> Types::ValidationError
    #   resp.data.validation_errors[0].id #=> String
    #   resp.data.validation_errors[0].errors #=> Array<String>
    #   resp.data.validation_errors[0].errors[0] #=> String
    #   resp.data.validation_warnings #=> Array<ValidationWarning>
    #   resp.data.validation_warnings[0] #=> Types::ValidationWarning
    #   resp.data.validation_warnings[0].id #=> String
    #   resp.data.validation_warnings[0].warnings #=> Array<String>
    #   resp.data.errored #=> Boolean
    #
    def validate_pipeline_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidatePipelineDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidatePipelineDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidatePipelineDefinition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceError, Errors::InvalidRequestException, Errors::PipelineDeletedException, Errors::PipelineNotFoundException]),
        data_parser: Parsers::ValidatePipelineDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidatePipelineDefinition,
        stubs: @stubs,
        params_class: Params::ValidatePipelineDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_pipeline_definition
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
