# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SageMakerA2IRuntime
  # An API client for AmazonSageMakerA2IRuntime
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning
  #       application. When an AI application can't evaluate data with a high degree of confidence,
  #       human reviewers can take over. This human review is called a human review workflow. To create
  #       and start a human review workflow, you need three resources: a <i>worker task
  #         template</i>, a <i>flow definition</i>, and a <i>human
  #         loop</i>.</p>
  #          <p>For information about these resources and prerequisites for using Amazon A2I, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html">Get Started with
  #         Amazon Augmented AI</a> in the Amazon SageMaker Developer Guide.</p>
  #          <p>This API reference includes information about API actions and data types that you can use
  #       to interact with Amazon A2I programmatically. Use this guide to:</p>
  #          <ul>
  #             <li>
  #                <p>Start a human loop with the <code>StartHumanLoop</code> operation when using
  #           Amazon A2I with a <i>custom task type</i>. To learn more about the
  #           difference between custom and built-in task types, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html">Use Task Types </a>. To learn
  #           how to start a human loop using this API, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop">Create and Start a Human Loop for a Custom Task Type </a> in the
  #           Amazon SageMaker Developer Guide.</p>
  #             </li>
  #             <li>
  #                <p>Manage your human loops. You can list all human loops that you have created, describe
  #           individual human loops, and stop and delete human loops. To learn more, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html">Monitor and Manage Your Human Loop </a> in the Amazon SageMaker Developer Guide.</p>
  #             </li>
  #          </ul>
  #          <p>Amazon A2I integrates APIs from various AWS services to create and start human review
  #       workflows for those services. To learn how Amazon A2I uses these APIs, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html">Use APIs in
  #         Amazon A2I</a> in the Amazon SageMaker Developer Guide.</p>
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
    def initialize(config = AWS::SDK::SageMakerA2IRuntime::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified human loop for a flow definition.</p>
    #          <p>If the human loop was deleted, this operation will return a
    #         <code>ResourceNotFoundException</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHumanLoopInput}.
    #
    # @option params [String] :human_loop_name
    #   <p>The name of the human loop that you want to delete.</p>
    #
    # @return [Types::DeleteHumanLoopOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_human_loop(
    #     human_loop_name: 'HumanLoopName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHumanLoopOutput
    #
    def delete_human_loop(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHumanLoopInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHumanLoopInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHumanLoop
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteHumanLoop
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHumanLoop,
        stubs: @stubs,
        params_class: Params::DeleteHumanLoopOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_human_loop
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified human loop. If the human loop was deleted, this
    #       operation will return a <code>ResourceNotFoundException</code> error. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHumanLoopInput}.
    #
    # @option params [String] :human_loop_name
    #   <p>The name of the human loop that you want information about.</p>
    #
    # @return [Types::DescribeHumanLoopOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_human_loop(
    #     human_loop_name: 'HumanLoopName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHumanLoopOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.failure_reason #=> String
    #   resp.data.failure_code #=> String
    #   resp.data.human_loop_status #=> String, one of ["InProgress", "Failed", "Completed", "Stopped", "Stopping"]
    #   resp.data.human_loop_name #=> String
    #   resp.data.human_loop_arn #=> String
    #   resp.data.flow_definition_arn #=> String
    #   resp.data.human_loop_output #=> Types::HumanLoopOutput
    #   resp.data.human_loop_output.output_s3_uri #=> String
    #
    def describe_human_loop(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHumanLoopInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHumanLoopInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHumanLoop
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeHumanLoop
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHumanLoop,
        stubs: @stubs,
        params_class: Params::DescribeHumanLoopOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_human_loop
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHumanLoopsInput}.
    #
    # @option params [Time] :creation_time_after
    #   <p>(Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>
    #
    # @option params [Time] :creation_time_before
    #   <p>(Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>
    #
    # @option params [String] :flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of a flow definition.</p>
    #
    # @option params [String] :sort_order
    #   <p>Optional. The order for displaying results. Valid values: <code>Ascending</code> and
    #           <code>Descending</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to display the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of items to return. If the total number of available items is more than
    #         the value specified in <code>MaxResults</code>, then a <code>NextToken</code> is returned in
    #         the output. You can use this token to display the next page of results. </p>
    #
    # @return [Types::ListHumanLoopsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_human_loops(
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     flow_definition_arn: 'FlowDefinitionArn', # required
    #     sort_order: 'Ascending', # accepts ["Ascending", "Descending"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHumanLoopsOutput
    #   resp.data.human_loop_summaries #=> Array<HumanLoopSummary>
    #   resp.data.human_loop_summaries[0] #=> Types::HumanLoopSummary
    #   resp.data.human_loop_summaries[0].human_loop_name #=> String
    #   resp.data.human_loop_summaries[0].human_loop_status #=> String, one of ["InProgress", "Failed", "Completed", "Stopped", "Stopping"]
    #   resp.data.human_loop_summaries[0].creation_time #=> Time
    #   resp.data.human_loop_summaries[0].failure_reason #=> String
    #   resp.data.human_loop_summaries[0].flow_definition_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_human_loops(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHumanLoopsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHumanLoopsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHumanLoops
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListHumanLoops
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHumanLoops,
        stubs: @stubs,
        params_class: Params::ListHumanLoopsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_human_loops
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a human loop, provided that at least one activation condition is met.</p>
    #
    # @param [Hash] params
    #   See {Types::StartHumanLoopInput}.
    #
    # @option params [String] :human_loop_name
    #   <p>The name of the human loop.</p>
    #
    # @option params [String] :flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition associated with this human
    #         loop.</p>
    #
    # @option params [HumanLoopInput] :human_loop_input
    #   <p>An object that contains information about the human loop.</p>
    #
    # @option params [HumanLoopDataAttributes] :data_attributes
    #   <p>Attributes of the specified data. Use <code>DataAttributes</code> to specify if your data
    #         is free of personally identifiable information and/or free of adult content.</p>
    #
    # @return [Types::StartHumanLoopOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_human_loop(
    #     human_loop_name: 'HumanLoopName', # required
    #     flow_definition_arn: 'FlowDefinitionArn', # required
    #     human_loop_input: {
    #       input_content: 'InputContent' # required
    #     }, # required
    #     data_attributes: {
    #       content_classifiers: [
    #         'FreeOfPersonallyIdentifiableInformation' # accepts ["FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"]
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartHumanLoopOutput
    #   resp.data.human_loop_arn #=> String
    #
    def start_human_loop(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartHumanLoopInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartHumanLoopInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartHumanLoop
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::StartHumanLoop
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartHumanLoop,
        stubs: @stubs,
        params_class: Params::StartHumanLoopOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_human_loop
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the specified human loop.</p>
    #
    # @param [Hash] params
    #   See {Types::StopHumanLoopInput}.
    #
    # @option params [String] :human_loop_name
    #   <p>The name of the human loop that you want to stop.</p>
    #
    # @return [Types::StopHumanLoopOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_human_loop(
    #     human_loop_name: 'HumanLoopName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopHumanLoopOutput
    #
    def stop_human_loop(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopHumanLoopInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopHumanLoopInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopHumanLoop
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::StopHumanLoop
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopHumanLoop,
        stubs: @stubs,
        params_class: Params::StopHumanLoopOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_human_loop
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
