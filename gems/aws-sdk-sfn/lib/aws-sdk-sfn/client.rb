# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SFN
  # An API client for AWSStepFunctions
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Step Functions</fullname>
  #          <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications
  #       and microservices using visual workflows.</p>
  #          <p>You can use Step Functions to build applications from individual components, each of which performs
  #       a discrete function, or <i>task</i>, allowing you to scale and change
  #       applications quickly. Step Functions provides a console that helps visualize the components of your
  #       application as a series of steps. Step Functions automatically triggers and tracks each step, and
  #       retries steps when there are errors, so your application executes predictably and in the right
  #       order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any
  #       issues.</p>
  #          <p>Step Functions manages operations and underlying infrastructure to ensure your application is
  #       available at any scale. You can run tasks on AWS, your own servers, or any system that has
  #       access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API.
  #       For more information about Step Functions, see the <i>
  #                <a href="https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS Step Functions Developer Guide</a>
  #             </i>.</p>
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
    def initialize(config = AWS::SDK::SFN::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an activity. An activity is a task that you write in any programming language and
    #       host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the
    #         <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API
    #       actions. This function lets Step Functions know the existence of your activity and returns an
    #       identifier for use in a state machine and when polling from the activity.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <code>CreateActivity</code> is an idempotent API. Subsequent requests won’t create a
    #         duplicate resource if it was already created. <code>CreateActivity</code>'s idempotency
    #         check is based on the activity <code>name</code>. If a following request has different
    #           <code>tags</code> values, Step Functions will ignore these differences and treat it as an
    #         idempotent request of the previous. In this case, <code>tags</code> will not be updated,
    #         even if they are different.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateActivityInput}.
    #
    # @option params [String] :name
    #   <p>The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @return [Types::CreateActivityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activity(
    #     name: 'name', # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateActivityOutput
    #   resp.data.activity_arn #=> String
    #   resp.data.creation_date #=> Time
    #
    def create_activity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateActivityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateActivityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateActivity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActivityLimitExceeded, Errors::InvalidName, Errors::TooManyTags]),
        data_parser: Parsers::CreateActivity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateActivity,
        stubs: @stubs,
        params_class: Params::CreateActivityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_activity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a state machine. A state machine consists of a collection of states that can do
    #       work (<code>Task</code> states), determine to which states to transition next
    #         (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states),
    #       and so on. State machines are specified using a JSON-based, structured language. For more
    #       information, see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States
    #         Language</a> in the AWS Step Functions User Guide.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <code>CreateStateMachine</code> is an idempotent API. Subsequent requests won’t create a
    #         duplicate resource if it was already created. <code>CreateStateMachine</code>'s idempotency
    #         check is based on the state machine <code>name</code>, <code>definition</code>,
    #           <code>type</code>, <code>LoggingConfiguration</code> and <code>TracingConfiguration</code>. If a following request has a
    #         different <code>roleArn</code> or <code>tags</code>, Step Functions will ignore these differences and
    #         treat it as an idempotent request of the previous. In this case, <code>roleArn</code> and
    #           <code>tags</code> will not be updated, even if they are different.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateStateMachineInput}.
    #
    # @option params [String] :name
    #   <p>The name of the state machine. </p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    # @option params [String] :definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
    #
    # @option params [String] :type
    #   <p>Determines whether a Standard or Express state machine is created. The default is
    #           <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it
    #         has been created.</p>
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p>Defines what execution history events are logged and where they are logged.</p>
    #            <note>
    #               <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see
    #             <a href="https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html">Log
    #             Levels</a> in the AWS Step Functions User Guide.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be added when creating a state machine.</p>
    #            <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #         Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #           Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #             Tags</a>.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @option params [TracingConfiguration] :tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    # @return [Types::CreateStateMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_state_machine(
    #     name: 'name', # required
    #     definition: 'definition', # required
    #     role_arn: 'roleArn', # required
    #     type: 'STANDARD', # accepts ["STANDARD", "EXPRESS"]
    #     logging_configuration: {
    #       level: 'ALL', # accepts ["ALL", "ERROR", "FATAL", "OFF"]
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: 'logGroupArn'
    #           }
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     tracing_configuration: {
    #       enabled: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStateMachineOutput
    #   resp.data.state_machine_arn #=> String
    #   resp.data.creation_date #=> Time
    #
    def create_state_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStateMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStateMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStateMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::InvalidDefinition, Errors::InvalidLoggingConfiguration, Errors::InvalidName, Errors::InvalidTracingConfiguration, Errors::StateMachineAlreadyExists, Errors::StateMachineDeleting, Errors::StateMachineLimitExceeded, Errors::StateMachineTypeNotSupported, Errors::TooManyTags]),
        data_parser: Parsers::CreateStateMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStateMachine,
        stubs: @stubs,
        params_class: Params::CreateStateMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_state_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an activity.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteActivityInput}.
    #
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
    #
    # @return [Types::DeleteActivityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activity(
    #     activity_arn: 'activityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteActivityOutput
    #
    def delete_activity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteActivityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteActivityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteActivity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn]),
        data_parser: Parsers::DeleteActivity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteActivity,
        stubs: @stubs,
        params_class: Params::DeleteActivityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_activity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's
    #       status to <code>DELETING</code> and begins the deletion process. </p>
    #          <note>
    #             <p>For <code>EXPRESS</code>state machines, the deletion will happen eventually (usually
    #         less than a minute). Running executions may emit logs after <code>DeleteStateMachine</code>
    #         API is called.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteStateMachineInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
    #
    # @return [Types::DeleteStateMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_machine(
    #     state_machine_arn: 'stateMachineArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStateMachineOutput
    #
    def delete_state_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStateMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStateMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStateMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn]),
        data_parser: Parsers::DeleteStateMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStateMachine,
        stubs: @stubs,
        params_class: Params::DeleteStateMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_state_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an activity.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeActivityInput}.
    #
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
    #
    # @return [Types::DescribeActivityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activity(
    #     activity_arn: 'activityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActivityOutput
    #   resp.data.activity_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.creation_date #=> Time
    #
    def describe_activity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActivityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActivityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActivity
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActivityDoesNotExist, Errors::InvalidArn]),
        data_parser: Parsers::DescribeActivity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActivity,
        stubs: @stubs,
        params_class: Params::DescribeActivityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_activity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an execution.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExecutionInput}.
    #
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
    #
    # @return [Types::DescribeExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution(
    #     execution_arn: 'executionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExecutionOutput
    #   resp.data.execution_arn #=> String
    #   resp.data.state_machine_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #   resp.data.start_date #=> Time
    #   resp.data.stop_date #=> Time
    #   resp.data.input #=> String
    #   resp.data.input_details #=> Types::CloudWatchEventsExecutionDataDetails
    #   resp.data.input_details.included #=> Boolean
    #   resp.data.output #=> String
    #   resp.data.output_details #=> Types::CloudWatchEventsExecutionDataDetails
    #   resp.data.trace_header #=> String
    #
    def describe_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecutionDoesNotExist, Errors::InvalidArn]),
        data_parser: Parsers::DescribeExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExecution,
        stubs: @stubs,
        params_class: Params::DescribeExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a state machine.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeStateMachineInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to describe.</p>
    #
    # @return [Types::DescribeStateMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine(
    #     state_machine_arn: 'stateMachineArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStateMachineOutput
    #   resp.data.state_machine_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.definition #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.type #=> String, one of ["STANDARD", "EXPRESS"]
    #   resp.data.creation_date #=> Time
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.level #=> String, one of ["ALL", "ERROR", "FATAL", "OFF"]
    #   resp.data.logging_configuration.include_execution_data #=> Boolean
    #   resp.data.logging_configuration.destinations #=> Array<LogDestination>
    #   resp.data.logging_configuration.destinations[0] #=> Types::LogDestination
    #   resp.data.logging_configuration.destinations[0].cloud_watch_logs_log_group #=> Types::CloudWatchLogsLogGroup
    #   resp.data.logging_configuration.destinations[0].cloud_watch_logs_log_group.log_group_arn #=> String
    #   resp.data.tracing_configuration #=> Types::TracingConfiguration
    #   resp.data.tracing_configuration.enabled #=> Boolean
    #
    def describe_state_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStateMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStateMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStateMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::StateMachineDoesNotExist]),
        data_parser: Parsers::DescribeStateMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStateMachine,
        stubs: @stubs,
        params_class: Params::DescribeStateMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_state_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the state machine associated with a specific execution.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStateMachineForExecutionInput}.
    #
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>
    #
    # @return [Types::DescribeStateMachineForExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine_for_execution(
    #     execution_arn: 'executionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStateMachineForExecutionOutput
    #   resp.data.state_machine_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.definition #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.update_date #=> Time
    #   resp.data.logging_configuration #=> Types::LoggingConfiguration
    #   resp.data.logging_configuration.level #=> String, one of ["ALL", "ERROR", "FATAL", "OFF"]
    #   resp.data.logging_configuration.include_execution_data #=> Boolean
    #   resp.data.logging_configuration.destinations #=> Array<LogDestination>
    #   resp.data.logging_configuration.destinations[0] #=> Types::LogDestination
    #   resp.data.logging_configuration.destinations[0].cloud_watch_logs_log_group #=> Types::CloudWatchLogsLogGroup
    #   resp.data.logging_configuration.destinations[0].cloud_watch_logs_log_group.log_group_arn #=> String
    #   resp.data.tracing_configuration #=> Types::TracingConfiguration
    #   resp.data.tracing_configuration.enabled #=> Boolean
    #
    def describe_state_machine_for_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStateMachineForExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStateMachineForExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStateMachineForExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecutionDoesNotExist, Errors::InvalidArn]),
        data_parser: Parsers::DescribeStateMachineForExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStateMachineForExecution,
        stubs: @stubs,
        params_class: Params::DescribeStateMachineForExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_state_machine_for_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by workers to retrieve a task (with the specified activity ARN) which has been
    #       scheduled for execution by a running state machine. This initiates a long poll, where the
    #       service holds the HTTP connection open and responds as soon as a task becomes available (i.e.
    #       an execution of a task of this type is needed.) The maximum time the service holds on to the
    #       request before responding is 60 seconds. If no task is available within 60 seconds, the poll
    #       returns a <code>taskToken</code> with a null string.</p>
    #          <important>
    #             <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds
    #         higher than the maximum time the service may hold the poll request).</p>
    #             <p>Polling with <code>GetActivityTask</code> can cause latency in some implementations. See
    #           <a href="https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html">Avoid
    #           Latency When Polling for Activity Tasks</a> in the Step Functions Developer Guide.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::GetActivityTaskInput}.
    #
    # @option params [String] :activity_arn
    #   <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task
    #         using <a>CreateActivity</a>.)</p>
    #
    # @option params [String] :worker_name
    #   <p>You can provide an arbitrary name in order to identify the worker that the task is
    #         assigned to. This name is used when it is logged in the execution history.</p>
    #
    # @return [Types::GetActivityTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_activity_task(
    #     activity_arn: 'activityArn', # required
    #     worker_name: 'workerName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetActivityTaskOutput
    #   resp.data.task_token #=> String
    #   resp.data.input #=> String
    #
    def get_activity_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetActivityTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetActivityTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetActivityTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActivityDoesNotExist, Errors::ActivityWorkerLimitExceeded, Errors::InvalidArn]),
        data_parser: Parsers::GetActivityTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetActivityTask,
        stubs: @stubs,
        params_class: Params::GetActivityTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_activity_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the history of the specified execution as a list of events. By default, the
    #       results are returned in ascending order of the <code>timeStamp</code> of the events. Use the
    #         <code>reverseOrder</code> parameter to get the latest events first.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExecutionHistoryInput}.
    #
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>Lists events in descending order of their <code>timeStamp</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    # @option params [Boolean] :include_execution_data
    #   <p>You can select whether execution data (input or output of a history event) is returned.
    #         The default is <code>true</code>.</p>
    #
    # @return [Types::GetExecutionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_execution_history(
    #     execution_arn: 'executionArn', # required
    #     max_results: 1,
    #     reverse_order: false,
    #     next_token: 'nextToken',
    #     include_execution_data: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExecutionHistoryOutput
    #   resp.data.events #=> Array<HistoryEvent>
    #   resp.data.events[0] #=> Types::HistoryEvent
    #   resp.data.events[0].timestamp #=> Time
    #   resp.data.events[0].type #=> String, one of ["ActivityFailed", "ActivityScheduled", "ActivityScheduleFailed", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "ExecutionAborted", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduled", "LambdaFunctionScheduleFailed", "LambdaFunctionStarted", "LambdaFunctionStartFailed", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "MapIterationAborted", "MapIterationFailed", "MapIterationStarted", "MapIterationSucceeded", "MapStateAborted", "MapStateEntered", "MapStateExited", "MapStateFailed", "MapStateStarted", "MapStateSucceeded", "ParallelStateAborted", "ParallelStateEntered", "ParallelStateExited", "ParallelStateFailed", "ParallelStateStarted", "ParallelStateSucceeded", "PassStateEntered", "PassStateExited", "SucceedStateEntered", "SucceedStateExited", "TaskFailed", "TaskScheduled", "TaskStarted", "TaskStartFailed", "TaskStateAborted", "TaskStateEntered", "TaskStateExited", "TaskSubmitFailed", "TaskSubmitted", "TaskSucceeded", "TaskTimedOut", "WaitStateAborted", "WaitStateEntered", "WaitStateExited"]
    #   resp.data.events[0].id #=> Integer
    #   resp.data.events[0].previous_event_id #=> Integer
    #   resp.data.events[0].activity_failed_event_details #=> Types::ActivityFailedEventDetails
    #   resp.data.events[0].activity_failed_event_details.error #=> String
    #   resp.data.events[0].activity_failed_event_details.cause #=> String
    #   resp.data.events[0].activity_schedule_failed_event_details #=> Types::ActivityScheduleFailedEventDetails
    #   resp.data.events[0].activity_schedule_failed_event_details.error #=> String
    #   resp.data.events[0].activity_schedule_failed_event_details.cause #=> String
    #   resp.data.events[0].activity_scheduled_event_details #=> Types::ActivityScheduledEventDetails
    #   resp.data.events[0].activity_scheduled_event_details.resource #=> String
    #   resp.data.events[0].activity_scheduled_event_details.input #=> String
    #   resp.data.events[0].activity_scheduled_event_details.input_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].activity_scheduled_event_details.input_details.truncated #=> Boolean
    #   resp.data.events[0].activity_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.data.events[0].activity_scheduled_event_details.heartbeat_in_seconds #=> Integer
    #   resp.data.events[0].activity_started_event_details #=> Types::ActivityStartedEventDetails
    #   resp.data.events[0].activity_started_event_details.worker_name #=> String
    #   resp.data.events[0].activity_succeeded_event_details #=> Types::ActivitySucceededEventDetails
    #   resp.data.events[0].activity_succeeded_event_details.output #=> String
    #   resp.data.events[0].activity_succeeded_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].activity_timed_out_event_details #=> Types::ActivityTimedOutEventDetails
    #   resp.data.events[0].activity_timed_out_event_details.error #=> String
    #   resp.data.events[0].activity_timed_out_event_details.cause #=> String
    #   resp.data.events[0].task_failed_event_details #=> Types::TaskFailedEventDetails
    #   resp.data.events[0].task_failed_event_details.resource_type #=> String
    #   resp.data.events[0].task_failed_event_details.resource #=> String
    #   resp.data.events[0].task_failed_event_details.error #=> String
    #   resp.data.events[0].task_failed_event_details.cause #=> String
    #   resp.data.events[0].task_scheduled_event_details #=> Types::TaskScheduledEventDetails
    #   resp.data.events[0].task_scheduled_event_details.resource_type #=> String
    #   resp.data.events[0].task_scheduled_event_details.resource #=> String
    #   resp.data.events[0].task_scheduled_event_details.region #=> String
    #   resp.data.events[0].task_scheduled_event_details.parameters #=> String
    #   resp.data.events[0].task_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.data.events[0].task_scheduled_event_details.heartbeat_in_seconds #=> Integer
    #   resp.data.events[0].task_start_failed_event_details #=> Types::TaskStartFailedEventDetails
    #   resp.data.events[0].task_start_failed_event_details.resource_type #=> String
    #   resp.data.events[0].task_start_failed_event_details.resource #=> String
    #   resp.data.events[0].task_start_failed_event_details.error #=> String
    #   resp.data.events[0].task_start_failed_event_details.cause #=> String
    #   resp.data.events[0].task_started_event_details #=> Types::TaskStartedEventDetails
    #   resp.data.events[0].task_started_event_details.resource_type #=> String
    #   resp.data.events[0].task_started_event_details.resource #=> String
    #   resp.data.events[0].task_submit_failed_event_details #=> Types::TaskSubmitFailedEventDetails
    #   resp.data.events[0].task_submit_failed_event_details.resource_type #=> String
    #   resp.data.events[0].task_submit_failed_event_details.resource #=> String
    #   resp.data.events[0].task_submit_failed_event_details.error #=> String
    #   resp.data.events[0].task_submit_failed_event_details.cause #=> String
    #   resp.data.events[0].task_submitted_event_details #=> Types::TaskSubmittedEventDetails
    #   resp.data.events[0].task_submitted_event_details.resource_type #=> String
    #   resp.data.events[0].task_submitted_event_details.resource #=> String
    #   resp.data.events[0].task_submitted_event_details.output #=> String
    #   resp.data.events[0].task_submitted_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].task_succeeded_event_details #=> Types::TaskSucceededEventDetails
    #   resp.data.events[0].task_succeeded_event_details.resource_type #=> String
    #   resp.data.events[0].task_succeeded_event_details.resource #=> String
    #   resp.data.events[0].task_succeeded_event_details.output #=> String
    #   resp.data.events[0].task_succeeded_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].task_timed_out_event_details #=> Types::TaskTimedOutEventDetails
    #   resp.data.events[0].task_timed_out_event_details.resource_type #=> String
    #   resp.data.events[0].task_timed_out_event_details.resource #=> String
    #   resp.data.events[0].task_timed_out_event_details.error #=> String
    #   resp.data.events[0].task_timed_out_event_details.cause #=> String
    #   resp.data.events[0].execution_failed_event_details #=> Types::ExecutionFailedEventDetails
    #   resp.data.events[0].execution_failed_event_details.error #=> String
    #   resp.data.events[0].execution_failed_event_details.cause #=> String
    #   resp.data.events[0].execution_started_event_details #=> Types::ExecutionStartedEventDetails
    #   resp.data.events[0].execution_started_event_details.input #=> String
    #   resp.data.events[0].execution_started_event_details.input_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].execution_started_event_details.role_arn #=> String
    #   resp.data.events[0].execution_succeeded_event_details #=> Types::ExecutionSucceededEventDetails
    #   resp.data.events[0].execution_succeeded_event_details.output #=> String
    #   resp.data.events[0].execution_succeeded_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].execution_aborted_event_details #=> Types::ExecutionAbortedEventDetails
    #   resp.data.events[0].execution_aborted_event_details.error #=> String
    #   resp.data.events[0].execution_aborted_event_details.cause #=> String
    #   resp.data.events[0].execution_timed_out_event_details #=> Types::ExecutionTimedOutEventDetails
    #   resp.data.events[0].execution_timed_out_event_details.error #=> String
    #   resp.data.events[0].execution_timed_out_event_details.cause #=> String
    #   resp.data.events[0].map_state_started_event_details #=> Types::MapStateStartedEventDetails
    #   resp.data.events[0].map_state_started_event_details.length #=> Integer
    #   resp.data.events[0].map_iteration_started_event_details #=> Types::MapIterationEventDetails
    #   resp.data.events[0].map_iteration_started_event_details.name #=> String
    #   resp.data.events[0].map_iteration_started_event_details.index #=> Integer
    #   resp.data.events[0].map_iteration_succeeded_event_details #=> Types::MapIterationEventDetails
    #   resp.data.events[0].map_iteration_failed_event_details #=> Types::MapIterationEventDetails
    #   resp.data.events[0].map_iteration_aborted_event_details #=> Types::MapIterationEventDetails
    #   resp.data.events[0].lambda_function_failed_event_details #=> Types::LambdaFunctionFailedEventDetails
    #   resp.data.events[0].lambda_function_failed_event_details.error #=> String
    #   resp.data.events[0].lambda_function_failed_event_details.cause #=> String
    #   resp.data.events[0].lambda_function_schedule_failed_event_details #=> Types::LambdaFunctionScheduleFailedEventDetails
    #   resp.data.events[0].lambda_function_schedule_failed_event_details.error #=> String
    #   resp.data.events[0].lambda_function_schedule_failed_event_details.cause #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_details #=> Types::LambdaFunctionScheduledEventDetails
    #   resp.data.events[0].lambda_function_scheduled_event_details.resource #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_details.input #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_details.input_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].lambda_function_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.data.events[0].lambda_function_start_failed_event_details #=> Types::LambdaFunctionStartFailedEventDetails
    #   resp.data.events[0].lambda_function_start_failed_event_details.error #=> String
    #   resp.data.events[0].lambda_function_start_failed_event_details.cause #=> String
    #   resp.data.events[0].lambda_function_succeeded_event_details #=> Types::LambdaFunctionSucceededEventDetails
    #   resp.data.events[0].lambda_function_succeeded_event_details.output #=> String
    #   resp.data.events[0].lambda_function_succeeded_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].lambda_function_timed_out_event_details #=> Types::LambdaFunctionTimedOutEventDetails
    #   resp.data.events[0].lambda_function_timed_out_event_details.error #=> String
    #   resp.data.events[0].lambda_function_timed_out_event_details.cause #=> String
    #   resp.data.events[0].state_entered_event_details #=> Types::StateEnteredEventDetails
    #   resp.data.events[0].state_entered_event_details.name #=> String
    #   resp.data.events[0].state_entered_event_details.input #=> String
    #   resp.data.events[0].state_entered_event_details.input_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.events[0].state_exited_event_details #=> Types::StateExitedEventDetails
    #   resp.data.events[0].state_exited_event_details.name #=> String
    #   resp.data.events[0].state_exited_event_details.output #=> String
    #   resp.data.events[0].state_exited_event_details.output_details #=> Types::HistoryEventExecutionDataDetails
    #   resp.data.next_token #=> String
    #
    def get_execution_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExecutionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExecutionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExecutionHistory
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecutionDoesNotExist, Errors::InvalidArn, Errors::InvalidToken]),
        data_parser: Parsers::GetExecutionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExecutionHistory,
        stubs: @stubs,
        params_class: Params::GetExecutionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_execution_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the existing activities.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListActivitiesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    # @return [Types::ListActivitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activities(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActivitiesOutput
    #   resp.data.activities #=> Array<ActivityListItem>
    #   resp.data.activities[0] #=> Types::ActivityListItem
    #   resp.data.activities[0].activity_arn #=> String
    #   resp.data.activities[0].name #=> String
    #   resp.data.activities[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_activities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActivitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActivitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActivities
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidToken]),
        data_parser: Parsers::ListActivities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActivities,
        stubs: @stubs,
        params_class: Params::ListActivitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_activities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the executions of a state machine that meet the filtering criteria. Results are
    #       sorted by time, with the most recent execution first.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExecutionsInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
    #
    # @option params [String] :status_filter
    #   <p>If specified, only list the executions whose current execution status matches the given
    #         filter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    # @return [Types::ListExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions(
    #     state_machine_arn: 'stateMachineArn', # required
    #     status_filter: 'RUNNING', # accepts ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExecutionsOutput
    #   resp.data.executions #=> Array<ExecutionListItem>
    #   resp.data.executions[0] #=> Types::ExecutionListItem
    #   resp.data.executions[0].execution_arn #=> String
    #   resp.data.executions[0].state_machine_arn #=> String
    #   resp.data.executions[0].name #=> String
    #   resp.data.executions[0].status #=> String, one of ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"]
    #   resp.data.executions[0].start_date #=> Time
    #   resp.data.executions[0].stop_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::InvalidToken, Errors::StateMachineDoesNotExist, Errors::StateMachineTypeNotSupported]),
        data_parser: Parsers::ListExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExecutions,
        stubs: @stubs,
        params_class: Params::ListExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the existing state machines.</p>
    #          <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #     Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListStateMachinesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.
    #       The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page.
    #       Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #
    # @return [Types::ListStateMachinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_machines(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStateMachinesOutput
    #   resp.data.state_machines #=> Array<StateMachineListItem>
    #   resp.data.state_machines[0] #=> Types::StateMachineListItem
    #   resp.data.state_machines[0].state_machine_arn #=> String
    #   resp.data.state_machines[0].name #=> String
    #   resp.data.state_machines[0].type #=> String, one of ["STANDARD", "EXPRESS"]
    #   resp.data.state_machines[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_state_machines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStateMachinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStateMachinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStateMachines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidToken]),
        data_parser: Parsers::ListStateMachines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStateMachines,
        stubs: @stubs,
        params_class: Params::ListStateMachinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_state_machines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List tags for a given resource.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::ResourceNotFound]),
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

    # <p>Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern to report that the task identified by the <code>taskToken</code> failed.</p>
    #
    # @param [Hash] params
    #   See {Types::SendTaskFailureInput}.
    #
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    # @option params [String] :error
    #   <p>The error code of the failure.</p>
    #
    # @option params [String] :cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    # @return [Types::SendTaskFailureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_failure(
    #     task_token: 'taskToken', # required
    #     error: 'error',
    #     cause: 'cause'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTaskFailureOutput
    #
    def send_task_failure(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTaskFailureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTaskFailureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTaskFailure
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidToken, Errors::TaskDoesNotExist, Errors::TaskTimedOut]),
        data_parser: Parsers::SendTaskFailure
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTaskFailure,
        stubs: @stubs,
        params_class: Params::SendTaskFailureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_task_failure
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern to report to Step Functions that the task represented by the specified
    #         <code>taskToken</code> is still making progress. This action resets the
    #         <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state
    #       machine's Amazon States Language definition (<code>HeartbeatSeconds</code>). This action does not in itself
    #       create an event in the execution history. However, if the task times out, the execution
    #       history contains an <code>ActivityTimedOut</code> entry for activities, or a
    #         <code>TaskTimedOut</code> entry for for tasks using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync">job run</a> or
    #         <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern.</p>
    #          <note>
    #             <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is
    #         its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received. Use <code>HeartbeatSeconds</code> to configure the timeout interval
    #         for heartbeats.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SendTaskHeartbeatInput}.
    #
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    # @return [Types::SendTaskHeartbeatOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_heartbeat(
    #     task_token: 'taskToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTaskHeartbeatOutput
    #
    def send_task_heartbeat(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTaskHeartbeatInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTaskHeartbeatInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTaskHeartbeat
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidToken, Errors::TaskDoesNotExist, Errors::TaskTimedOut]),
        data_parser: Parsers::SendTaskHeartbeat
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTaskHeartbeat,
        stubs: @stubs,
        params_class: Params::SendTaskHeartbeatOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_task_heartbeat
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by activity workers and task states using the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token">callback</a>
    #       pattern to report that the task identified by the <code>taskToken</code> completed
    #       successfully.</p>
    #
    # @param [Hash] params
    #   See {Types::SendTaskSuccessInput}.
    #
    # @option params [String] :task_token
    #   <p>The token that represents this task. Task tokens are generated by Step Functions when
    #         tasks are assigned to a worker, or in the <a href="https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html">context object</a> when a
    #         workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>
    #
    # @option params [String] :output
    #   <p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    # @return [Types::SendTaskSuccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_success(
    #     task_token: 'taskToken', # required
    #     output: 'output' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTaskSuccessOutput
    #
    def send_task_success(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTaskSuccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTaskSuccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTaskSuccess
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOutput, Errors::InvalidToken, Errors::TaskDoesNotExist, Errors::TaskTimedOut]),
        data_parser: Parsers::SendTaskSuccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTaskSuccess,
        stubs: @stubs,
        params_class: Params::SendTaskSuccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_task_success
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a state machine execution.</p>
    #          <note>
    #             <p>
    #                <code>StartExecution</code> is idempotent. If <code>StartExecution</code> is called with
    #         the same name and input as a running execution, the call will succeed and return the same
    #         response as the original request. If the execution is closed or if the input is different,
    #         it will return a 400 <code>ExecutionAlreadyExists</code> error. Names can be reused after 90
    #         days. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartExecutionInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #
    # @option params [String] :name
    #   <p>The name of the execution. This name must be unique for your AWS account, region, and state machine for 90 days. For more information,
    #       see <a href="https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions">
    #       Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p>
    #            <p>A name must <i>not</i> contain:</p>
    #            <ul>
    #               <li>
    #                  <p>white space</p>
    #               </li>
    #               <li>
    #                  <p>brackets <code>< > { } [ ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>wildcard characters <code>? *</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>special characters <code>" # % \ ^ | ~ ` $ & , ; : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p>
    #               </li>
    #            </ul>
    #            <p>To enable logging with CloudWatch Logs, the name should only contain  0-9, A-Z, a-z, - and _.</p>
    #
    # @option params [String] :input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"input": "{\"first_name\" : \"test\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #           example: <code>"input": "{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    # @option params [String] :trace_header
    #   <p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>
    #
    # @return [Types::StartExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_execution(
    #     state_machine_arn: 'stateMachineArn', # required
    #     name: 'name',
    #     input: 'input',
    #     trace_header: 'traceHeader'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartExecutionOutput
    #   resp.data.execution_arn #=> String
    #   resp.data.start_date #=> Time
    #
    def start_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecutionAlreadyExists, Errors::ExecutionLimitExceeded, Errors::InvalidArn, Errors::InvalidExecutionInput, Errors::InvalidName, Errors::StateMachineDeleting, Errors::StateMachineDoesNotExist]),
        data_parser: Parsers::StartExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartExecution,
        stubs: @stubs,
        params_class: Params::StartExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a Synchronous Express state machine execution.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSyncExecutionInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
    #
    # @option params [String] :name
    #   <p>The name of the execution.</p>
    #
    # @option params [String] :input
    #   <p>The string that contains the JSON input data for the execution, for example:</p>
    #            <p>
    #               <code>"input": "{\"first_name\" : \"test\"}"</code>
    #            </p>
    #            <note>
    #               <p>If you don't include any JSON input data, you still must include the two braces, for
    #            example: <code>"input": "{}"</code>
    #               </p>
    #            </note>
    #            <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    #
    # @option params [String] :trace_header
    #   <p>Passes the AWS X-Ray trace header. The trace header can also be passed in the request payload.</p>
    #
    # @return [Types::StartSyncExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sync_execution(
    #     state_machine_arn: 'stateMachineArn', # required
    #     name: 'name',
    #     input: 'input',
    #     trace_header: 'traceHeader'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSyncExecutionOutput
    #   resp.data.execution_arn #=> String
    #   resp.data.state_machine_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.start_date #=> Time
    #   resp.data.stop_date #=> Time
    #   resp.data.status #=> String, one of ["SUCCEEDED", "FAILED", "TIMED_OUT"]
    #   resp.data.error #=> String
    #   resp.data.cause #=> String
    #   resp.data.input #=> String
    #   resp.data.input_details #=> Types::CloudWatchEventsExecutionDataDetails
    #   resp.data.input_details.included #=> Boolean
    #   resp.data.output #=> String
    #   resp.data.output_details #=> Types::CloudWatchEventsExecutionDataDetails
    #   resp.data.trace_header #=> String
    #   resp.data.billing_details #=> Types::BillingDetails
    #   resp.data.billing_details.billed_memory_used_in_mb #=> Integer
    #   resp.data.billing_details.billed_duration_in_milliseconds #=> Integer
    #
    def start_sync_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSyncExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSyncExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "sync-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSyncExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::InvalidExecutionInput, Errors::InvalidName, Errors::StateMachineDeleting, Errors::StateMachineDoesNotExist, Errors::StateMachineTypeNotSupported]),
        data_parser: Parsers::StartSyncExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSyncExecution,
        stubs: @stubs,
        params_class: Params::StartSyncExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_sync_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an execution.</p>
    #          <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>
    #
    # @param [Hash] params
    #   See {Types::StopExecutionInput}.
    #
    # @option params [String] :execution_arn
    #   <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
    #
    # @option params [String] :error
    #   <p>The error code of the failure.</p>
    #
    # @option params [String] :cause
    #   <p>A more detailed explanation of the cause of the failure.</p>
    #
    # @return [Types::StopExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_execution(
    #     execution_arn: 'executionArn', # required
    #     error: 'error',
    #     cause: 'cause'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopExecutionOutput
    #   resp.data.stop_date #=> Time
    #
    def stop_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExecutionDoesNotExist, Errors::InvalidArn]),
        data_parser: Parsers::StopExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopExecution,
        stubs: @stubs,
        params_class: Params::StopExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a tag to a Step Functions resource.</p>
    #          <p>An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
    #       Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
    #         Guide</i>, and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM
    #           Tags</a>.</p>
    #          <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags to add to a resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::ResourceNotFound, Errors::TooManyTags]),
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

    # <p>Remove a tag from a Step Functions resource</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tags to remove from the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::ResourceNotFound]),
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

    # <p>Updates an existing state machine by modifying its <code>definition</code>,
    #         <code>roleArn</code>, or <code>loggingConfiguration</code>. Running executions will continue
    #       to use the previous <code>definition</code> and <code>roleArn</code>. You must include at
    #       least one of <code>definition</code> or <code>roleArn</code> or you will receive a
    #         <code>MissingRequiredParameter</code> error.</p>
    #          <note>
    #             <p>All <code>StartExecution</code> calls within a few seconds will use the updated
    #           <code>definition</code> and <code>roleArn</code>. Executions started immediately after
    #         calling <code>UpdateStateMachine</code> may use the previous state machine
    #           <code>definition</code> and <code>roleArn</code>. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateStateMachineInput}.
    #
    # @option params [String] :state_machine_arn
    #   <p>The Amazon Resource Name (ARN) of the state machine.</p>
    #
    # @option params [String] :definition
    #   <p>The Amazon States Language definition of the state machine. See <a href="https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html">Amazon States Language</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>
    #
    # @option params [LoggingConfiguration] :logging_configuration
    #   <p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs
    #         options.</p>
    #
    # @option params [TracingConfiguration] :tracing_configuration
    #   <p>Selects whether AWS X-Ray tracing is enabled.</p>
    #
    # @return [Types::UpdateStateMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_state_machine(
    #     state_machine_arn: 'stateMachineArn', # required
    #     definition: 'definition',
    #     role_arn: 'roleArn',
    #     logging_configuration: {
    #       level: 'ALL', # accepts ["ALL", "ERROR", "FATAL", "OFF"]
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: 'logGroupArn'
    #           }
    #         }
    #       ]
    #     },
    #     tracing_configuration: {
    #       enabled: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStateMachineOutput
    #   resp.data.update_date #=> Time
    #
    def update_state_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStateMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStateMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStateMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArn, Errors::InvalidDefinition, Errors::InvalidLoggingConfiguration, Errors::InvalidTracingConfiguration, Errors::MissingRequiredParameter, Errors::StateMachineDeleting, Errors::StateMachineDoesNotExist]),
        data_parser: Parsers::UpdateStateMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStateMachine,
        stubs: @stubs,
        params_class: Params::UpdateStateMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_state_machine
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
