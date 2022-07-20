# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SWF
  # An API client for SimpleWorkflowService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Simple Workflow Service</fullname>
  #
  #          <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to
  #       coordinate work across distributed components. In Amazon SWF, a <i>task</i>
  #       represents a logical unit of work that is performed by a component of your workflow.
  #       Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and
  #       concurrency in accordance with the logical flow of the application.</p>
  #
  #          <p>Amazon SWF gives you full control over implementing tasks and coordinating them without
  #       worrying about underlying complexities such as tracking their progress and maintaining their
  #       state.</p>
  #
  #          <p>This documentation serves as reference only. For a broader overview of the Amazon SWF
  #       programming model, see the <i>
  #                <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon SWF Developer Guide</a>
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
    def initialize(config = AWS::SDK::SWF::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns the number of closed workflow executions within the given domain that meet the
    #       specified filtering criteria.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CountClosedWorkflowExecutionsInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    #
    # @option params [ExecutionTimeFilter] :start_time_filter
    #   <p>If specified, only workflow executions that meet the start time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #
    # @option params [ExecutionTimeFilter] :close_time_filter
    #   <p>If specified, only workflow executions that meet the close time criteria of the filter
    #         are counted.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #
    # @option params [WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [WorkflowTypeFilter] :type_filter
    #   <p>If specified, indicates the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [TagFilter] :tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [CloseStatusFilter] :close_status_filter
    #   <p>If specified, only workflow executions that match this close status are counted. This
    #         filter has an affect only if <code>executionStatus</code> is specified as
    #         <code>CLOSED</code>.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @return [Types::CountClosedWorkflowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.count_closed_workflow_executions(
    #     domain: 'domain', # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     execution_filter: {
    #       workflow_id: 'workflowId' # required
    #     },
    #     type_filter: {
    #       name: 'name', # required
    #       version: 'version'
    #     },
    #     tag_filter: {
    #       tag: 'tag' # required
    #     },
    #     close_status_filter: {
    #       status: 'COMPLETED' # required - accepts ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CountClosedWorkflowExecutionsOutput
    #   resp.data.count #=> Integer
    #   resp.data.truncated #=> Boolean
    #
    def count_closed_workflow_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CountClosedWorkflowExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CountClosedWorkflowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CountClosedWorkflowExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::CountClosedWorkflowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CountClosedWorkflowExecutions,
        stubs: @stubs,
        params_class: Params::CountClosedWorkflowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :count_closed_workflow_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of open workflow executions within the given domain that meet the
    #       specified filtering criteria.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CountOpenWorkflowExecutionsInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow executions to count.</p>
    #
    # @option params [ExecutionTimeFilter] :start_time_filter
    #   <p>Specifies the start time criteria that workflow executions must meet in order to be
    #         counted.</p>
    #
    # @option params [WorkflowTypeFilter] :type_filter
    #   <p>Specifies the type of the workflow executions to be counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @option params [TagFilter] :tag_filter
    #   <p>If specified, only executions that have a tag that matches the filter are
    #         counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @option params [WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the
    #         filter are counted.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @return [Types::CountOpenWorkflowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.count_open_workflow_executions(
    #     domain: 'domain', # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     }, # required
    #     type_filter: {
    #       name: 'name', # required
    #       version: 'version'
    #     },
    #     tag_filter: {
    #       tag: 'tag' # required
    #     },
    #     execution_filter: {
    #       workflow_id: 'workflowId' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CountOpenWorkflowExecutionsOutput
    #   resp.data.count #=> Integer
    #   resp.data.truncated #=> Boolean
    #
    def count_open_workflow_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CountOpenWorkflowExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CountOpenWorkflowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CountOpenWorkflowExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::CountOpenWorkflowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CountOpenWorkflowExecutions,
        stubs: @stubs,
        params_class: Params::CountOpenWorkflowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :count_open_workflow_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the estimated number of activity tasks in the specified task list. The count
    #       returned is an approximation and isn't guaranteed to be exact. If you specify a task list that
    #       no activity task was ever scheduled in then <code>0</code> is returned.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CountPendingActivityTasksInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task list.</p>
    #
    # @option params [TaskList] :task_list
    #   <p>The name of the task list.</p>
    #
    # @return [Types::CountPendingActivityTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.count_pending_activity_tasks(
    #     domain: 'domain', # required
    #     task_list: {
    #       name: 'name' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CountPendingActivityTasksOutput
    #   resp.data.count #=> Integer
    #   resp.data.truncated #=> Boolean
    #
    def count_pending_activity_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CountPendingActivityTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CountPendingActivityTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CountPendingActivityTasks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::CountPendingActivityTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CountPendingActivityTasks,
        stubs: @stubs,
        params_class: Params::CountPendingActivityTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :count_pending_activity_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the estimated number of decision tasks in the specified task list. The count
    #       returned is an approximation and isn't guaranteed to be exact. If you specify a task list that
    #       no decision task was ever scheduled in then <code>0</code> is returned.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CountPendingDecisionTasksInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task list.</p>
    #
    # @option params [TaskList] :task_list
    #   <p>The name of the task list.</p>
    #
    # @return [Types::CountPendingDecisionTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.count_pending_decision_tasks(
    #     domain: 'domain', # required
    #     task_list: {
    #       name: 'name' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CountPendingDecisionTasksOutput
    #   resp.data.count #=> Integer
    #   resp.data.truncated #=> Boolean
    #
    def count_pending_decision_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CountPendingDecisionTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CountPendingDecisionTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CountPendingDecisionTasks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::CountPendingDecisionTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CountPendingDecisionTasks,
        stubs: @stubs,
        params_class: Params::CountPendingDecisionTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :count_pending_decision_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates the specified <i>activity type</i>. After an activity type has
    #       been deprecated, you cannot create new tasks of that activity type. Tasks of this type that
    #       were scheduled before the type was deprecated continue to run.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #                 <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #                 <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateActivityTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    #
    # @option params [ActivityType] :activity_type
    #   <p>The activity type to deprecate.</p>
    #
    # @return [Types::DeprecateActivityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_activity_type(
    #     domain: 'domain', # required
    #     activity_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateActivityTypeOutput
    #
    def deprecate_activity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateActivityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateActivityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateActivityType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::TypeDeprecatedFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DeprecateActivityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateActivityType,
        stubs: @stubs,
        params_class: Params::DeprecateActivityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_activity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates the specified domain. After a domain has been deprecated it cannot be used
    #       to create new workflow executions or register new types. However, you can still use visibility
    #       actions on this domain. Deprecating a domain also deprecates all activity and workflow types
    #       registered in the domain. Executions that were started before the domain was deprecated
    #       continues to run.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateDomainInput}.
    #
    # @option params [String] :name
    #   <p>The name of the domain to deprecate.</p>
    #
    # @return [Types::DeprecateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_domain(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateDomainOutput
    #
    def deprecate_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::DomainDeprecatedFault]),
        data_parser: Parsers::DeprecateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateDomain,
        stubs: @stubs,
        params_class: Params::DeprecateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecates the specified <i>workflow type</i>. After a workflow type has
    #       been deprecated, you cannot create new executions of that type. Executions that were started
    #       before the type was deprecated continues to run. A deprecated workflow type may still be used
    #       when calling visibility actions.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeprecateWorkflowTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow type is registered.</p>
    #
    # @option params [WorkflowType] :workflow_type
    #   <p>The workflow type to deprecate.</p>
    #
    # @return [Types::DeprecateWorkflowTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_workflow_type(
    #     domain: 'domain', # required
    #     workflow_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeprecateWorkflowTypeOutput
    #
    def deprecate_workflow_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeprecateWorkflowTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeprecateWorkflowTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeprecateWorkflowType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::TypeDeprecatedFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DeprecateWorkflowType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeprecateWorkflowType,
        stubs: @stubs,
        params_class: Params::DeprecateWorkflowTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deprecate_workflow_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified activity type. This includes configuration
    #       settings provided when the type was registered and other general information about the
    #       type.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #                 <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #                 <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeActivityTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity type is registered.</p>
    #
    # @option params [ActivityType] :activity_type
    #   <p>The activity type to get information about. Activity types are identified by the
    #           <code>name</code> and <code>version</code> that were supplied when the activity was
    #         registered.</p>
    #
    # @return [Types::DescribeActivityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activity_type(
    #     domain: 'domain', # required
    #     activity_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActivityTypeOutput
    #   resp.data.type_info #=> Types::ActivityTypeInfo
    #   resp.data.type_info.activity_type #=> Types::ActivityType
    #   resp.data.type_info.activity_type.name #=> String
    #   resp.data.type_info.activity_type.version #=> String
    #   resp.data.type_info.status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.type_info.description #=> String
    #   resp.data.type_info.creation_date #=> Time
    #   resp.data.type_info.deprecation_date #=> Time
    #   resp.data.configuration #=> Types::ActivityTypeConfiguration
    #   resp.data.configuration.default_task_start_to_close_timeout #=> String
    #   resp.data.configuration.default_task_heartbeat_timeout #=> String
    #   resp.data.configuration.default_task_list #=> Types::TaskList
    #   resp.data.configuration.default_task_list.name #=> String
    #   resp.data.configuration.default_task_priority #=> String
    #   resp.data.configuration.default_task_schedule_to_start_timeout #=> String
    #   resp.data.configuration.default_task_schedule_to_close_timeout #=> String
    #
    def describe_activity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActivityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActivityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActivityType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DescribeActivityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActivityType,
        stubs: @stubs,
        params_class: Params::DescribeActivityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_activity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified domain, including description and
    #       status.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainInput}.
    #
    # @option params [String] :name
    #   <p>The name of the domain to describe.</p>
    #
    # @return [Types::DescribeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainOutput
    #   resp.data.domain_info #=> Types::DomainInfo
    #   resp.data.domain_info.name #=> String
    #   resp.data.domain_info.status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.domain_info.description #=> String
    #   resp.data.domain_info.arn #=> String
    #   resp.data.configuration #=> Types::DomainConfiguration
    #   resp.data.configuration.workflow_execution_retention_period_in_days #=> String
    #
    def describe_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DescribeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomain,
        stubs: @stubs,
        params_class: Params::DescribeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified workflow execution including its type and some
    #       statistics.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkflowExecutionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution.</p>
    #
    # @option params [WorkflowExecution] :execution
    #   <p>The workflow execution to describe.</p>
    #
    # @return [Types::DescribeWorkflowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workflow_execution(
    #     domain: 'domain', # required
    #     execution: {
    #       workflow_id: 'workflowId', # required
    #       run_id: 'runId' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkflowExecutionOutput
    #   resp.data.execution_info #=> Types::WorkflowExecutionInfo
    #   resp.data.execution_info.execution #=> Types::WorkflowExecution
    #   resp.data.execution_info.execution.workflow_id #=> String
    #   resp.data.execution_info.execution.run_id #=> String
    #   resp.data.execution_info.workflow_type #=> Types::WorkflowType
    #   resp.data.execution_info.workflow_type.name #=> String
    #   resp.data.execution_info.workflow_type.version #=> String
    #   resp.data.execution_info.start_timestamp #=> Time
    #   resp.data.execution_info.close_timestamp #=> Time
    #   resp.data.execution_info.execution_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.execution_info.close_status #=> String, one of ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"]
    #   resp.data.execution_info.parent #=> Types::WorkflowExecution
    #   resp.data.execution_info.tag_list #=> Array<String>
    #   resp.data.execution_info.tag_list[0] #=> String
    #   resp.data.execution_info.cancel_requested #=> Boolean
    #   resp.data.execution_configuration #=> Types::WorkflowExecutionConfiguration
    #   resp.data.execution_configuration.task_start_to_close_timeout #=> String
    #   resp.data.execution_configuration.execution_start_to_close_timeout #=> String
    #   resp.data.execution_configuration.task_list #=> Types::TaskList
    #   resp.data.execution_configuration.task_list.name #=> String
    #   resp.data.execution_configuration.task_priority #=> String
    #   resp.data.execution_configuration.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.execution_configuration.lambda_role #=> String
    #   resp.data.open_counts #=> Types::WorkflowExecutionOpenCounts
    #   resp.data.open_counts.open_activity_tasks #=> Integer
    #   resp.data.open_counts.open_decision_tasks #=> Integer
    #   resp.data.open_counts.open_timers #=> Integer
    #   resp.data.open_counts.open_child_workflow_executions #=> Integer
    #   resp.data.open_counts.open_lambda_functions #=> Integer
    #   resp.data.latest_activity_task_timestamp #=> Time
    #   resp.data.latest_execution_context #=> String
    #
    def describe_workflow_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkflowExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkflowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkflowExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DescribeWorkflowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkflowExecution,
        stubs: @stubs,
        params_class: Params::DescribeWorkflowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workflow_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified <i>workflow type</i>. This
    #       includes configuration settings specified when the type was registered and other information
    #       such as creation date, current status, etc.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkflowTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which this workflow type is registered.</p>
    #
    # @option params [WorkflowType] :workflow_type
    #   <p>The workflow type to describe.</p>
    #
    # @return [Types::DescribeWorkflowTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workflow_type(
    #     domain: 'domain', # required
    #     workflow_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkflowTypeOutput
    #   resp.data.type_info #=> Types::WorkflowTypeInfo
    #   resp.data.type_info.workflow_type #=> Types::WorkflowType
    #   resp.data.type_info.workflow_type.name #=> String
    #   resp.data.type_info.workflow_type.version #=> String
    #   resp.data.type_info.status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.type_info.description #=> String
    #   resp.data.type_info.creation_date #=> Time
    #   resp.data.type_info.deprecation_date #=> Time
    #   resp.data.configuration #=> Types::WorkflowTypeConfiguration
    #   resp.data.configuration.default_task_start_to_close_timeout #=> String
    #   resp.data.configuration.default_execution_start_to_close_timeout #=> String
    #   resp.data.configuration.default_task_list #=> Types::TaskList
    #   resp.data.configuration.default_task_list.name #=> String
    #   resp.data.configuration.default_task_priority #=> String
    #   resp.data.configuration.default_child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.configuration.default_lambda_role #=> String
    #
    def describe_workflow_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkflowTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkflowTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkflowType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::DescribeWorkflowType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkflowType,
        stubs: @stubs,
        params_class: Params::DescribeWorkflowTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workflow_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the history of the specified workflow execution. The results may be split into
    #       multiple pages. To retrieve subsequent pages, make the call again using the
    #         <code>nextPageToken</code> returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkflowExecutionHistoryInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution.</p>
    #
    # @option params [WorkflowExecution] :execution
    #   <p>Specifies the workflow execution for which to return the history.</p>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimeStamp</code> of the
    #         events.</p>
    #
    # @return [Types::GetWorkflowExecutionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_execution_history(
    #     domain: 'domain', # required
    #     execution: {
    #       workflow_id: 'workflowId', # required
    #       run_id: 'runId' # required
    #     }, # required
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkflowExecutionHistoryOutput
    #   resp.data.events #=> Array<HistoryEvent>
    #   resp.data.events[0] #=> Types::HistoryEvent
    #   resp.data.events[0].event_timestamp #=> Time
    #   resp.data.events[0].event_type #=> String, one of ["WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"]
    #   resp.data.events[0].event_id #=> Integer
    #   resp.data.events[0].workflow_execution_started_event_attributes #=> Types::WorkflowExecutionStartedEventAttributes
    #   resp.data.events[0].workflow_execution_started_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_list.name #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_priority #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].workflow_execution_started_event_attributes.workflow_type.name #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.workflow_type.version #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].workflow_execution_started_event_attributes.tag_list[0] #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.continued_execution_run_id #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.workflow_id #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_workflow_execution.run_id #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_initiated_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_started_event_attributes.lambda_role #=> String
    #   resp.data.events[0].workflow_execution_completed_event_attributes #=> Types::WorkflowExecutionCompletedEventAttributes
    #   resp.data.events[0].workflow_execution_completed_event_attributes.result #=> String
    #   resp.data.events[0].workflow_execution_completed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes #=> Types::CompleteWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_failed_event_attributes #=> Types::WorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].workflow_execution_failed_event_attributes.reason #=> String
    #   resp.data.events[0].workflow_execution_failed_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes #=> Types::FailWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes #=> Types::WorkflowExecutionTimedOutEventAttributes
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_canceled_event_attributes #=> Types::WorkflowExecutionCanceledEventAttributes
    #   resp.data.events[0].workflow_execution_canceled_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_canceled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes #=> Types::CancelWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes #=> Types::WorkflowExecutionContinuedAsNewEventAttributes
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.new_execution_run_id #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_priority #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.lambda_role #=> String
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes #=> Types::ContinueAsNewWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_terminated_event_attributes #=> Types::WorkflowExecutionTerminatedEventAttributes
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.reason #=> String
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.cause #=> String, one of ["CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"]
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes #=> Types::WorkflowExecutionCancelRequestedEventAttributes
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.external_initiated_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.cause #=> String, one of ["CHILD_POLICY_APPLIED"]
    #   resp.data.events[0].decision_task_scheduled_event_attributes #=> Types::DecisionTaskScheduledEventAttributes
    #   resp.data.events[0].decision_task_scheduled_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].decision_task_scheduled_event_attributes.task_priority #=> String
    #   resp.data.events[0].decision_task_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].decision_task_started_event_attributes #=> Types::DecisionTaskStartedEventAttributes
    #   resp.data.events[0].decision_task_started_event_attributes.identity #=> String
    #   resp.data.events[0].decision_task_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_completed_event_attributes #=> Types::DecisionTaskCompletedEventAttributes
    #   resp.data.events[0].decision_task_completed_event_attributes.execution_context #=> String
    #   resp.data.events[0].decision_task_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].decision_task_timed_out_event_attributes #=> Types::DecisionTaskTimedOutEventAttributes
    #   resp.data.events[0].decision_task_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].decision_task_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_scheduled_event_attributes #=> Types::ActivityTaskScheduledEventAttributes
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type #=> Types::ActivityType
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type.name #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type.version #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_id #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.input #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.control #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.schedule_to_start_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.schedule_to_close_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].activity_task_scheduled_event_attributes.task_priority #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].activity_task_scheduled_event_attributes.heartbeat_timeout #=> String
    #   resp.data.events[0].activity_task_started_event_attributes #=> Types::ActivityTaskStartedEventAttributes
    #   resp.data.events[0].activity_task_started_event_attributes.identity #=> String
    #   resp.data.events[0].activity_task_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_completed_event_attributes #=> Types::ActivityTaskCompletedEventAttributes
    #   resp.data.events[0].activity_task_completed_event_attributes.result #=> String
    #   resp.data.events[0].activity_task_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_failed_event_attributes #=> Types::ActivityTaskFailedEventAttributes
    #   resp.data.events[0].activity_task_failed_event_attributes.reason #=> String
    #   resp.data.events[0].activity_task_failed_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes #=> Types::ActivityTaskTimedOutEventAttributes
    #   resp.data.events[0].activity_task_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"]
    #   resp.data.events[0].activity_task_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_canceled_event_attributes #=> Types::ActivityTaskCanceledEventAttributes
    #   resp.data.events[0].activity_task_canceled_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_canceled_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_canceled_event_attributes.latest_cancel_requested_event_id #=> Integer
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes #=> Types::ActivityTaskCancelRequestedEventAttributes
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes.activity_id #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes #=> Types::WorkflowExecutionSignaledEventAttributes
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.signal_name #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.external_initiated_event_id #=> Integer
    #   resp.data.events[0].marker_recorded_event_attributes #=> Types::MarkerRecordedEventAttributes
    #   resp.data.events[0].marker_recorded_event_attributes.marker_name #=> String
    #   resp.data.events[0].marker_recorded_event_attributes.details #=> String
    #   resp.data.events[0].marker_recorded_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].record_marker_failed_event_attributes #=> Types::RecordMarkerFailedEventAttributes
    #   resp.data.events[0].record_marker_failed_event_attributes.marker_name #=> String
    #   resp.data.events[0].record_marker_failed_event_attributes.cause #=> String, one of ["OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].record_marker_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].timer_started_event_attributes #=> Types::TimerStartedEventAttributes
    #   resp.data.events[0].timer_started_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_started_event_attributes.control #=> String
    #   resp.data.events[0].timer_started_event_attributes.start_to_fire_timeout #=> String
    #   resp.data.events[0].timer_started_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].timer_fired_event_attributes #=> Types::TimerFiredEventAttributes
    #   resp.data.events[0].timer_fired_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_fired_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].timer_canceled_event_attributes #=> Types::TimerCanceledEventAttributes
    #   resp.data.events[0].timer_canceled_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].timer_canceled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes #=> Types::StartChildWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.input #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_priority #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.lambda_role #=> String
    #   resp.data.events[0].child_workflow_execution_started_event_attributes #=> Types::ChildWorkflowExecutionStartedEventAttributes
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes #=> Types::ChildWorkflowExecutionCompletedEventAttributes
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.result #=> String
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes #=> Types::ChildWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.reason #=> String
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.details #=> String
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes #=> Types::ChildWorkflowExecutionTimedOutEventAttributes
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes #=> Types::ChildWorkflowExecutionCanceledEventAttributes
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.details #=> String
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes #=> Types::ChildWorkflowExecutionTerminatedEventAttributes
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes #=> Types::SignalExternalWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.run_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.signal_name #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.input #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes #=> Types::ExternalWorkflowExecutionSignaledEventAttributes
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes #=> Types::SignalExternalWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.run_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes #=> Types::ExternalWorkflowExecutionCancelRequestedEventAttributes
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes #=> Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.run_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes #=> Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.run_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes #=> Types::ScheduleActivityTaskFailedEventAttributes
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.activity_type #=> Types::ActivityType
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.activity_id #=> String
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.cause #=> String, one of ["ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes #=> Types::RequestCancelActivityTaskFailedEventAttributes
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.activity_id #=> String
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.cause #=> String, one of ["ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_timer_failed_event_attributes #=> Types::StartTimerFailedEventAttributes
    #   resp.data.events[0].start_timer_failed_event_attributes.timer_id #=> String
    #   resp.data.events[0].start_timer_failed_event_attributes.cause #=> String, one of ["TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].start_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].cancel_timer_failed_event_attributes #=> Types::CancelTimerFailedEventAttributes
    #   resp.data.events[0].cancel_timer_failed_event_attributes.timer_id #=> String
    #   resp.data.events[0].cancel_timer_failed_event_attributes.cause #=> String, one of ["TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].cancel_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes #=> Types::StartChildWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.cause #=> String, one of ["WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes #=> Types::LambdaFunctionScheduledEventAttributes
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.id #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.name #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.control #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.input #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].lambda_function_started_event_attributes #=> Types::LambdaFunctionStartedEventAttributes
    #   resp.data.events[0].lambda_function_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes #=> Types::LambdaFunctionCompletedEventAttributes
    #   resp.data.events[0].lambda_function_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes.result #=> String
    #   resp.data.events[0].lambda_function_failed_event_attributes #=> Types::LambdaFunctionFailedEventAttributes
    #   resp.data.events[0].lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_failed_event_attributes.reason #=> String
    #   resp.data.events[0].lambda_function_failed_event_attributes.details #=> String
    #   resp.data.events[0].lambda_function_timed_out_event_attributes #=> Types::LambdaFunctionTimedOutEventAttributes
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes #=> Types::ScheduleLambdaFunctionFailedEventAttributes
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.id #=> String
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.name #=> String
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.cause #=> String, one of ["ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"]
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_lambda_function_failed_event_attributes #=> Types::StartLambdaFunctionFailedEventAttributes
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.cause #=> String, one of ["ASSUME_ROLE_FAILED"]
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.message #=> String
    #   resp.data.next_page_token #=> String
    #
    def get_workflow_execution_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkflowExecutionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkflowExecutionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkflowExecutionHistory
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::GetWorkflowExecutionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkflowExecutionHistory,
        stubs: @stubs,
        params_class: Params::GetWorkflowExecutionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_workflow_execution_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all activities registered in the specified domain that match
    #       the specified name and registration status. The result includes information like creation
    #       date, current status of the activity, etc. The results may be split into multiple pages. To
    #       retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned
    #       by the initial call.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActivityTypesInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the activity types have been registered.</p>
    #
    # @option params [String] :name
    #   <p>If specified, only lists the activity types that have this name.</p>
    #
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the activity types to list.</p>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the activity
    #         types.</p>
    #
    # @return [Types::ListActivityTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activity_types(
    #     domain: 'domain', # required
    #     name: 'name',
    #     registration_status: 'REGISTERED', # required - accepts ["REGISTERED", "DEPRECATED"]
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActivityTypesOutput
    #   resp.data.type_infos #=> Array<ActivityTypeInfo>
    #   resp.data.type_infos[0] #=> Types::ActivityTypeInfo
    #   resp.data.type_infos[0].activity_type #=> Types::ActivityType
    #   resp.data.type_infos[0].activity_type.name #=> String
    #   resp.data.type_infos[0].activity_type.version #=> String
    #   resp.data.type_infos[0].status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.type_infos[0].description #=> String
    #   resp.data.type_infos[0].creation_date #=> Time
    #   resp.data.type_infos[0].deprecation_date #=> Time
    #   resp.data.next_page_token #=> String
    #
    def list_activity_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActivityTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActivityTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActivityTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::ListActivityTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActivityTypes,
        stubs: @stubs,
        params_class: Params::ListActivityTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_activity_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of closed workflow executions in the specified domain that meet the
    #       filtering criteria. The results may be split into multiple pages. To retrieve subsequent
    #       pages, make the call again using the nextPageToken returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClosedWorkflowExecutionsInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    #
    # @option params [ExecutionTimeFilter] :start_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their start times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their start times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #
    # @option params [ExecutionTimeFilter] :close_time_filter
    #   <p>If specified, the workflow executions are included in the returned results based on
    #         whether their close times are within the range specified by this filter. Also, if this
    #         parameter is specified, the returned results are ordered by their close times.</p>
    #            <note>
    #               <p>
    #                  <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You
    #           must specify one of these in a request but not both.</p>
    #            </note>
    #
    # @option params [WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [CloseStatusFilter] :close_status_filter
    #   <p>If specified, only workflow executions that match this <i>close
    #           status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED
    #         workflow executions are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [WorkflowTypeFilter] :type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [TagFilter] :tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and
    #             <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a
    #           request.</p>
    #            </note>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start or the close time of the
    #         executions.</p>
    #
    # @return [Types::ListClosedWorkflowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_closed_workflow_executions(
    #     domain: 'domain', # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     },
    #     execution_filter: {
    #       workflow_id: 'workflowId' # required
    #     },
    #     close_status_filter: {
    #       status: 'COMPLETED' # required - accepts ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"]
    #     },
    #     type_filter: {
    #       name: 'name', # required
    #       version: 'version'
    #     },
    #     tag_filter: {
    #       tag: 'tag' # required
    #     },
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClosedWorkflowExecutionsOutput
    #   resp.data.execution_infos #=> Array<WorkflowExecutionInfo>
    #   resp.data.execution_infos[0] #=> Types::WorkflowExecutionInfo
    #   resp.data.execution_infos[0].execution #=> Types::WorkflowExecution
    #   resp.data.execution_infos[0].execution.workflow_id #=> String
    #   resp.data.execution_infos[0].execution.run_id #=> String
    #   resp.data.execution_infos[0].workflow_type #=> Types::WorkflowType
    #   resp.data.execution_infos[0].workflow_type.name #=> String
    #   resp.data.execution_infos[0].workflow_type.version #=> String
    #   resp.data.execution_infos[0].start_timestamp #=> Time
    #   resp.data.execution_infos[0].close_timestamp #=> Time
    #   resp.data.execution_infos[0].execution_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.execution_infos[0].close_status #=> String, one of ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"]
    #   resp.data.execution_infos[0].parent #=> Types::WorkflowExecution
    #   resp.data.execution_infos[0].tag_list #=> Array<String>
    #   resp.data.execution_infos[0].tag_list[0] #=> String
    #   resp.data.execution_infos[0].cancel_requested #=> Boolean
    #   resp.data.next_page_token #=> String
    #
    def list_closed_workflow_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClosedWorkflowExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClosedWorkflowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClosedWorkflowExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::ListClosedWorkflowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClosedWorkflowExecutions,
        stubs: @stubs,
        params_class: Params::ListClosedWorkflowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_closed_workflow_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of domains registered in the account. The results may be split into
    #       multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken
    #       returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains. The element must be set to
    #             <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is
    #           the account ID, with no dashes.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the domains to list.</p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default, the
    #         results are returned in ascending alphabetical order by <code>name</code> of the
    #         domains.</p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     next_page_token: 'nextPageToken',
    #     registration_status: 'REGISTERED', # required - accepts ["REGISTERED", "DEPRECATED"]
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.domain_infos #=> Array<DomainInfo>
    #   resp.data.domain_infos[0] #=> Types::DomainInfo
    #   resp.data.domain_infos[0].name #=> String
    #   resp.data.domain_infos[0].status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.domain_infos[0].description #=> String
    #   resp.data.domain_infos[0].arn #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomains
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedFault]),
        data_parser: Parsers::ListDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomains,
        stubs: @stubs,
        params_class: Params::ListDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of open workflow executions in the specified domain that meet the
    #       filtering criteria. The results may be split into multiple pages. To retrieve subsequent
    #       pages, make the call again using the nextPageToken returned by the initial call.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagFilter.tag</code>: String constraint. The key is
    #                 <code>swf:tagFilter.tag</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.name</code>: String constraint. The key is
    #                 <code>swf:typeFilter.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>typeFilter.version</code>: String constraint. The key is
    #                 <code>swf:typeFilter.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOpenWorkflowExecutionsInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the workflow executions to list.</p>
    #
    # @option params [ExecutionTimeFilter] :start_time_filter
    #   <p>Workflow executions are included in the returned results based on whether their start
    #         times are within the range specified by this filter.</p>
    #
    # @option params [WorkflowTypeFilter] :type_filter
    #   <p>If specified, only executions of the type specified in the filter are
    #         returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @option params [TagFilter] :tag_filter
    #   <p>If specified, only executions that have the matching tag are listed.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in descending order of the start time of the executions.</p>
    #
    # @option params [WorkflowExecutionFilter] :execution_filter
    #   <p>If specified, only workflow executions matching the workflow ID specified in the filter
    #         are returned.</p>
    #            <note>
    #               <p>
    #                  <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are
    #           mutually exclusive. You can specify at most one of these in a request.</p>
    #            </note>
    #
    # @return [Types::ListOpenWorkflowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_open_workflow_executions(
    #     domain: 'domain', # required
    #     start_time_filter: {
    #       oldest_date: Time.now, # required
    #       latest_date: Time.now
    #     }, # required
    #     type_filter: {
    #       name: 'name', # required
    #       version: 'version'
    #     },
    #     tag_filter: {
    #       tag: 'tag' # required
    #     },
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false,
    #     execution_filter: {
    #       workflow_id: 'workflowId' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOpenWorkflowExecutionsOutput
    #   resp.data.execution_infos #=> Array<WorkflowExecutionInfo>
    #   resp.data.execution_infos[0] #=> Types::WorkflowExecutionInfo
    #   resp.data.execution_infos[0].execution #=> Types::WorkflowExecution
    #   resp.data.execution_infos[0].execution.workflow_id #=> String
    #   resp.data.execution_infos[0].execution.run_id #=> String
    #   resp.data.execution_infos[0].workflow_type #=> Types::WorkflowType
    #   resp.data.execution_infos[0].workflow_type.name #=> String
    #   resp.data.execution_infos[0].workflow_type.version #=> String
    #   resp.data.execution_infos[0].start_timestamp #=> Time
    #   resp.data.execution_infos[0].close_timestamp #=> Time
    #   resp.data.execution_infos[0].execution_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.execution_infos[0].close_status #=> String, one of ["COMPLETED", "FAILED", "CANCELED", "TERMINATED", "CONTINUED_AS_NEW", "TIMED_OUT"]
    #   resp.data.execution_infos[0].parent #=> Types::WorkflowExecution
    #   resp.data.execution_infos[0].tag_list #=> Array<String>
    #   resp.data.execution_infos[0].tag_list[0] #=> String
    #   resp.data.execution_infos[0].cancel_requested #=> Boolean
    #   resp.data.next_page_token #=> String
    #
    def list_open_workflow_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpenWorkflowExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpenWorkflowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpenWorkflowExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::ListOpenWorkflowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpenWorkflowExecutions,
        stubs: @stubs,
        params_class: Params::ListOpenWorkflowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_open_workflow_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List tags for a given domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
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
    #   resp.data.tags #=> Array<ResourceTag>
    #   resp.data.tags[0] #=> Types::ResourceTag
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
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

    # <p>Returns information about workflow types in the specified domain. The results may be
    #       split into multiple pages that can be retrieved by making the call repeatedly.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkflowTypesInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow types have been registered.</p>
    #
    # @option params [String] :name
    #   <p>If specified, lists the workflow type with this name.</p>
    #
    # @option params [String] :registration_status
    #   <p>Specifies the registration status of the workflow types to list.</p>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the results in reverse order. By default the
    #         results are returned in ascending alphabetical order of the <code>name</code> of the workflow
    #         types.</p>
    #
    # @return [Types::ListWorkflowTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_types(
    #     domain: 'domain', # required
    #     name: 'name',
    #     registration_status: 'REGISTERED', # required - accepts ["REGISTERED", "DEPRECATED"]
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkflowTypesOutput
    #   resp.data.type_infos #=> Array<WorkflowTypeInfo>
    #   resp.data.type_infos[0] #=> Types::WorkflowTypeInfo
    #   resp.data.type_infos[0].workflow_type #=> Types::WorkflowType
    #   resp.data.type_infos[0].workflow_type.name #=> String
    #   resp.data.type_infos[0].workflow_type.version #=> String
    #   resp.data.type_infos[0].status #=> String, one of ["REGISTERED", "DEPRECATED"]
    #   resp.data.type_infos[0].description #=> String
    #   resp.data.type_infos[0].creation_date #=> Time
    #   resp.data.type_infos[0].deprecation_date #=> Time
    #   resp.data.next_page_token #=> String
    #
    def list_workflow_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkflowTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkflowTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkflowTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::ListWorkflowTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkflowTypes,
        stubs: @stubs,
        params_class: Params::ListWorkflowTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workflow_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by workers to get an <a>ActivityTask</a> from the specified activity
    #         <code>taskList</code>. This initiates a long poll, where the service holds the HTTP
    #       connection open and responds as soon as a task becomes available. The maximum time the service
    #       holds on to the request before responding is 60 seconds. If no task is available within 60
    #       seconds, the poll returns an empty result. An empty result, in this context, means that an
    #       ActivityTask is returned, but that the value of taskToken is an empty string. If a task is
    #       returned, the worker should use its type to identify and process it correctly.</p>
    #          <important>
    #             <p>Workers should set their client side socket timeout to at least 70 seconds (10
    #         seconds higher than the maximum time service may hold the poll request).</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PollForActivityTaskInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the task lists being polled.</p>
    #
    # @option params [TaskList] :task_list
    #   <p>Specifies the task list to poll for activity tasks.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :identity
    #   <p>Identity of the worker making the request, recorded in the
    #           <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic
    #         tracing when problems arise. The form of this identity is user defined.</p>
    #
    # @return [Types::PollForActivityTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_activity_task(
    #     domain: 'domain', # required
    #     task_list: {
    #       name: 'name' # required
    #     }, # required
    #     identity: 'identity'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PollForActivityTaskOutput
    #   resp.data.task_token #=> String
    #   resp.data.activity_id #=> String
    #   resp.data.started_event_id #=> Integer
    #   resp.data.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.workflow_execution.workflow_id #=> String
    #   resp.data.workflow_execution.run_id #=> String
    #   resp.data.activity_type #=> Types::ActivityType
    #   resp.data.activity_type.name #=> String
    #   resp.data.activity_type.version #=> String
    #   resp.data.input #=> String
    #
    def poll_for_activity_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PollForActivityTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PollForActivityTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PollForActivityTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
        data_parser: Parsers::PollForActivityTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PollForActivityTask,
        stubs: @stubs,
        params_class: Params::PollForActivityTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :poll_for_activity_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by deciders to get a <a>DecisionTask</a> from the specified decision
    #         <code>taskList</code>. A decision task may be returned for any open workflow execution that
    #       is using the specified task list. The task includes a paginated view of the history of the
    #       workflow execution. The decider should use the workflow type and the history to determine how
    #       to properly handle the task.</p>
    #          <p>This action initiates a long poll, where the service holds the HTTP connection open and
    #       responds as soon a task becomes available. If no decision task is available in the specified
    #       task list before the timeout of 60 seconds expires, an empty result is returned. An empty
    #       result, in this context, means that a DecisionTask is returned, but that the value of
    #       taskToken is an empty string.</p>
    #          <important>
    #             <p>Deciders should set their client side socket timeout to at least 70 seconds (10
    #         seconds higher than the timeout).</p>
    #          </important>
    #          <important>
    #             <p>Because the number of workflow history events for a single workflow execution might
    #         be very large, the result returned might be split up across a number of pages. To retrieve
    #         subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the
    #           <code>nextPageToken</code> returned by the initial call. Note that you do
    #           <i>not</i> call <code>GetWorkflowExecutionHistory</code> with this
    #           <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code>
    #         again.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the <code>taskList.name</code> parameter by using a
    #             <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the
    #           action to access only certain task lists.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PollForDecisionTaskInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the task lists to poll.</p>
    #
    # @option params [TaskList] :task_list
    #   <p>Specifies the task list to poll for decision tasks.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :identity
    #   <p>Identity of the decider making the request, which is recorded in the
    #         DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when
    #         problems arise. The form of this identity is user defined.</p>
    #
    # @option params [String] :next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results
    #         available.  The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using
    #         the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires
    #         after 60 seconds. Using an expired pagination token will return a <code>400</code> error: "<code>Specified token has
    #         exceeded its maximum lifetime</code>". </p>
    #
    #            <p>The configured <code>maximumPageSize</code> determines how many results can be returned
    #         in a single call. </p>
    #            <note>
    #               <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve
    #           the next page of history records. Calling <a>PollForDecisionTask</a> with a
    #             <code>nextPageToken</code> doesn't return a new decision task.</p>
    #            </note>
    #
    # @option params [Integer] :maximum_page_size
    #   <p>The maximum number of results that are returned per call.
    #     Use <code>nextPageToken</code> to obtain further pages of results. </p>
    #            <p>This
    #         is an upper limit only; the actual number of results returned per call may be fewer than the
    #         specified maximum.</p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>When set to <code>true</code>, returns the events in reverse order. By default the
    #         results are returned in ascending order of the <code>eventTimestamp</code> of the
    #         events.</p>
    #
    # @return [Types::PollForDecisionTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_decision_task(
    #     domain: 'domain', # required
    #     task_list: {
    #       name: 'name' # required
    #     }, # required
    #     identity: 'identity',
    #     next_page_token: 'nextPageToken',
    #     maximum_page_size: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PollForDecisionTaskOutput
    #   resp.data.task_token #=> String
    #   resp.data.started_event_id #=> Integer
    #   resp.data.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.workflow_execution.workflow_id #=> String
    #   resp.data.workflow_execution.run_id #=> String
    #   resp.data.workflow_type #=> Types::WorkflowType
    #   resp.data.workflow_type.name #=> String
    #   resp.data.workflow_type.version #=> String
    #   resp.data.events #=> Array<HistoryEvent>
    #   resp.data.events[0] #=> Types::HistoryEvent
    #   resp.data.events[0].event_timestamp #=> Time
    #   resp.data.events[0].event_type #=> String, one of ["WorkflowExecutionStarted", "WorkflowExecutionCancelRequested", "WorkflowExecutionCompleted", "CompleteWorkflowExecutionFailed", "WorkflowExecutionFailed", "FailWorkflowExecutionFailed", "WorkflowExecutionTimedOut", "WorkflowExecutionCanceled", "CancelWorkflowExecutionFailed", "WorkflowExecutionContinuedAsNew", "ContinueAsNewWorkflowExecutionFailed", "WorkflowExecutionTerminated", "DecisionTaskScheduled", "DecisionTaskStarted", "DecisionTaskCompleted", "DecisionTaskTimedOut", "ActivityTaskScheduled", "ScheduleActivityTaskFailed", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "ActivityTaskTimedOut", "ActivityTaskCanceled", "ActivityTaskCancelRequested", "RequestCancelActivityTaskFailed", "WorkflowExecutionSignaled", "MarkerRecorded", "RecordMarkerFailed", "TimerStarted", "StartTimerFailed", "TimerFired", "TimerCanceled", "CancelTimerFailed", "StartChildWorkflowExecutionInitiated", "StartChildWorkflowExecutionFailed", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed", "ChildWorkflowExecutionTimedOut", "ChildWorkflowExecutionCanceled", "ChildWorkflowExecutionTerminated", "SignalExternalWorkflowExecutionInitiated", "SignalExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionSignaled", "RequestCancelExternalWorkflowExecutionInitiated", "RequestCancelExternalWorkflowExecutionFailed", "ExternalWorkflowExecutionCancelRequested", "LambdaFunctionScheduled", "LambdaFunctionStarted", "LambdaFunctionCompleted", "LambdaFunctionFailed", "LambdaFunctionTimedOut", "ScheduleLambdaFunctionFailed", "StartLambdaFunctionFailed"]
    #   resp.data.events[0].event_id #=> Integer
    #   resp.data.events[0].workflow_execution_started_event_attributes #=> Types::WorkflowExecutionStartedEventAttributes
    #   resp.data.events[0].workflow_execution_started_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_list.name #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.task_priority #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].workflow_execution_started_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].workflow_execution_started_event_attributes.tag_list[0] #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.continued_execution_run_id #=> String
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_started_event_attributes.parent_initiated_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_started_event_attributes.lambda_role #=> String
    #   resp.data.events[0].workflow_execution_completed_event_attributes #=> Types::WorkflowExecutionCompletedEventAttributes
    #   resp.data.events[0].workflow_execution_completed_event_attributes.result #=> String
    #   resp.data.events[0].workflow_execution_completed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes #=> Types::CompleteWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].complete_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_failed_event_attributes #=> Types::WorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].workflow_execution_failed_event_attributes.reason #=> String
    #   resp.data.events[0].workflow_execution_failed_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes #=> Types::FailWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].fail_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes #=> Types::WorkflowExecutionTimedOutEventAttributes
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].workflow_execution_timed_out_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_canceled_event_attributes #=> Types::WorkflowExecutionCanceledEventAttributes
    #   resp.data.events[0].workflow_execution_canceled_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_canceled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes #=> Types::CancelWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].cancel_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes #=> Types::WorkflowExecutionContinuedAsNewEventAttributes
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.new_execution_run_id #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_priority #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].workflow_execution_continued_as_new_event_attributes.lambda_role #=> String
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes #=> Types::ContinueAsNewWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNHANDLED_DECISION", "WORKFLOW_TYPE_DEPRECATED", "WORKFLOW_TYPE_DOES_NOT_EXIST", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].continue_as_new_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_terminated_event_attributes #=> Types::WorkflowExecutionTerminatedEventAttributes
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.reason #=> String
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.details #=> String
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].workflow_execution_terminated_event_attributes.cause #=> String, one of ["CHILD_POLICY_APPLIED", "EVENT_LIMIT_EXCEEDED", "OPERATOR_INITIATED"]
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes #=> Types::WorkflowExecutionCancelRequestedEventAttributes
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.external_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.external_initiated_event_id #=> Integer
    #   resp.data.events[0].workflow_execution_cancel_requested_event_attributes.cause #=> String, one of ["CHILD_POLICY_APPLIED"]
    #   resp.data.events[0].decision_task_scheduled_event_attributes #=> Types::DecisionTaskScheduledEventAttributes
    #   resp.data.events[0].decision_task_scheduled_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].decision_task_scheduled_event_attributes.task_priority #=> String
    #   resp.data.events[0].decision_task_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].decision_task_started_event_attributes #=> Types::DecisionTaskStartedEventAttributes
    #   resp.data.events[0].decision_task_started_event_attributes.identity #=> String
    #   resp.data.events[0].decision_task_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_completed_event_attributes #=> Types::DecisionTaskCompletedEventAttributes
    #   resp.data.events[0].decision_task_completed_event_attributes.execution_context #=> String
    #   resp.data.events[0].decision_task_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].decision_task_timed_out_event_attributes #=> Types::DecisionTaskTimedOutEventAttributes
    #   resp.data.events[0].decision_task_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].decision_task_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].decision_task_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_scheduled_event_attributes #=> Types::ActivityTaskScheduledEventAttributes
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type #=> Types::ActivityType
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type.name #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_type.version #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.activity_id #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.input #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.control #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.schedule_to_start_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.schedule_to_close_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].activity_task_scheduled_event_attributes.task_priority #=> String
    #   resp.data.events[0].activity_task_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].activity_task_scheduled_event_attributes.heartbeat_timeout #=> String
    #   resp.data.events[0].activity_task_started_event_attributes #=> Types::ActivityTaskStartedEventAttributes
    #   resp.data.events[0].activity_task_started_event_attributes.identity #=> String
    #   resp.data.events[0].activity_task_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_completed_event_attributes #=> Types::ActivityTaskCompletedEventAttributes
    #   resp.data.events[0].activity_task_completed_event_attributes.result #=> String
    #   resp.data.events[0].activity_task_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_failed_event_attributes #=> Types::ActivityTaskFailedEventAttributes
    #   resp.data.events[0].activity_task_failed_event_attributes.reason #=> String
    #   resp.data.events[0].activity_task_failed_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes #=> Types::ActivityTaskTimedOutEventAttributes
    #   resp.data.events[0].activity_task_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE", "SCHEDULE_TO_START", "SCHEDULE_TO_CLOSE", "HEARTBEAT"]
    #   resp.data.events[0].activity_task_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_timed_out_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_canceled_event_attributes #=> Types::ActivityTaskCanceledEventAttributes
    #   resp.data.events[0].activity_task_canceled_event_attributes.details #=> String
    #   resp.data.events[0].activity_task_canceled_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].activity_task_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].activity_task_canceled_event_attributes.latest_cancel_requested_event_id #=> Integer
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes #=> Types::ActivityTaskCancelRequestedEventAttributes
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].activity_task_cancel_requested_event_attributes.activity_id #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes #=> Types::WorkflowExecutionSignaledEventAttributes
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.signal_name #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.input #=> String
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.external_workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].workflow_execution_signaled_event_attributes.external_initiated_event_id #=> Integer
    #   resp.data.events[0].marker_recorded_event_attributes #=> Types::MarkerRecordedEventAttributes
    #   resp.data.events[0].marker_recorded_event_attributes.marker_name #=> String
    #   resp.data.events[0].marker_recorded_event_attributes.details #=> String
    #   resp.data.events[0].marker_recorded_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].record_marker_failed_event_attributes #=> Types::RecordMarkerFailedEventAttributes
    #   resp.data.events[0].record_marker_failed_event_attributes.marker_name #=> String
    #   resp.data.events[0].record_marker_failed_event_attributes.cause #=> String, one of ["OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].record_marker_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].timer_started_event_attributes #=> Types::TimerStartedEventAttributes
    #   resp.data.events[0].timer_started_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_started_event_attributes.control #=> String
    #   resp.data.events[0].timer_started_event_attributes.start_to_fire_timeout #=> String
    #   resp.data.events[0].timer_started_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].timer_fired_event_attributes #=> Types::TimerFiredEventAttributes
    #   resp.data.events[0].timer_fired_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_fired_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].timer_canceled_event_attributes #=> Types::TimerCanceledEventAttributes
    #   resp.data.events[0].timer_canceled_event_attributes.timer_id #=> String
    #   resp.data.events[0].timer_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].timer_canceled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes #=> Types::StartChildWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.input #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.execution_start_to_close_timeout #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_list #=> Types::TaskList
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_priority #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.child_policy #=> String, one of ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.task_start_to_close_timeout #=> String
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.tag_list #=> Array<String>
    #   resp.data.events[0].start_child_workflow_execution_initiated_event_attributes.lambda_role #=> String
    #   resp.data.events[0].child_workflow_execution_started_event_attributes #=> Types::ChildWorkflowExecutionStartedEventAttributes
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_started_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes #=> Types::ChildWorkflowExecutionCompletedEventAttributes
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.result #=> String
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes #=> Types::ChildWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.reason #=> String
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.details #=> String
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes #=> Types::ChildWorkflowExecutionTimedOutEventAttributes
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes #=> Types::ChildWorkflowExecutionCanceledEventAttributes
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.details #=> String
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_canceled_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes #=> Types::ChildWorkflowExecutionTerminatedEventAttributes
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].child_workflow_execution_terminated_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes #=> Types::SignalExternalWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.run_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.signal_name #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.input #=> String
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes #=> Types::ExternalWorkflowExecutionSignaledEventAttributes
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].external_workflow_execution_signaled_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes #=> Types::SignalExternalWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.run_id #=> String
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].signal_external_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes #=> Types::ExternalWorkflowExecutionCancelRequestedEventAttributes
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes.workflow_execution #=> Types::WorkflowExecution
    #   resp.data.events[0].external_workflow_execution_cancel_requested_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes #=> Types::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.workflow_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.run_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_initiated_event_attributes.control #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes #=> Types::RequestCancelExternalWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.run_id #=> String
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.cause #=> String, one of ["UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION", "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_external_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes #=> Types::ScheduleActivityTaskFailedEventAttributes
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.activity_type #=> Types::ActivityType
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.activity_id #=> String
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.cause #=> String, one of ["ACTIVITY_TYPE_DEPRECATED", "ACTIVITY_TYPE_DOES_NOT_EXIST", "ACTIVITY_ID_ALREADY_IN_USE", "OPEN_ACTIVITIES_LIMIT_EXCEEDED", "ACTIVITY_CREATION_RATE_EXCEEDED", "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED", "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].schedule_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes #=> Types::RequestCancelActivityTaskFailedEventAttributes
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.activity_id #=> String
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.cause #=> String, one of ["ACTIVITY_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].request_cancel_activity_task_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_timer_failed_event_attributes #=> Types::StartTimerFailedEventAttributes
    #   resp.data.events[0].start_timer_failed_event_attributes.timer_id #=> String
    #   resp.data.events[0].start_timer_failed_event_attributes.cause #=> String, one of ["TIMER_ID_ALREADY_IN_USE", "OPEN_TIMERS_LIMIT_EXCEEDED", "TIMER_CREATION_RATE_EXCEEDED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].start_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].cancel_timer_failed_event_attributes #=> Types::CancelTimerFailedEventAttributes
    #   resp.data.events[0].cancel_timer_failed_event_attributes.timer_id #=> String
    #   resp.data.events[0].cancel_timer_failed_event_attributes.cause #=> String, one of ["TIMER_ID_UNKNOWN", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].cancel_timer_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes #=> Types::StartChildWorkflowExecutionFailedEventAttributes
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.workflow_type #=> Types::WorkflowType
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.cause #=> String, one of ["WORKFLOW_TYPE_DOES_NOT_EXIST", "WORKFLOW_TYPE_DEPRECATED", "OPEN_CHILDREN_LIMIT_EXCEEDED", "OPEN_WORKFLOWS_LIMIT_EXCEEDED", "CHILD_CREATION_RATE_EXCEEDED", "WORKFLOW_ALREADY_RUNNING", "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_TASK_LIST_UNDEFINED", "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED", "DEFAULT_CHILD_POLICY_UNDEFINED", "OPERATION_NOT_PERMITTED"]
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.workflow_id #=> String
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.initiated_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_child_workflow_execution_failed_event_attributes.control #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes #=> Types::LambdaFunctionScheduledEventAttributes
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.id #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.name #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.control #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.input #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.start_to_close_timeout #=> String
    #   resp.data.events[0].lambda_function_scheduled_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].lambda_function_started_event_attributes #=> Types::LambdaFunctionStartedEventAttributes
    #   resp.data.events[0].lambda_function_started_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes #=> Types::LambdaFunctionCompletedEventAttributes
    #   resp.data.events[0].lambda_function_completed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_completed_event_attributes.result #=> String
    #   resp.data.events[0].lambda_function_failed_event_attributes #=> Types::LambdaFunctionFailedEventAttributes
    #   resp.data.events[0].lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_failed_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_failed_event_attributes.reason #=> String
    #   resp.data.events[0].lambda_function_failed_event_attributes.details #=> String
    #   resp.data.events[0].lambda_function_timed_out_event_attributes #=> Types::LambdaFunctionTimedOutEventAttributes
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.started_event_id #=> Integer
    #   resp.data.events[0].lambda_function_timed_out_event_attributes.timeout_type #=> String, one of ["START_TO_CLOSE"]
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes #=> Types::ScheduleLambdaFunctionFailedEventAttributes
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.id #=> String
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.name #=> String
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.cause #=> String, one of ["ID_ALREADY_IN_USE", "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED", "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED", "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"]
    #   resp.data.events[0].schedule_lambda_function_failed_event_attributes.decision_task_completed_event_id #=> Integer
    #   resp.data.events[0].start_lambda_function_failed_event_attributes #=> Types::StartLambdaFunctionFailedEventAttributes
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.scheduled_event_id #=> Integer
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.cause #=> String, one of ["ASSUME_ROLE_FAILED"]
    #   resp.data.events[0].start_lambda_function_failed_event_attributes.message #=> String
    #   resp.data.next_page_token #=> String
    #   resp.data.previous_started_event_id #=> Integer
    #
    def poll_for_decision_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PollForDecisionTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PollForDecisionTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PollForDecisionTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
        data_parser: Parsers::PollForDecisionTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PollForDecisionTask,
        stubs: @stubs,
        params_class: Params::PollForDecisionTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :poll_for_decision_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker
    #       can also specify details of the progress, for example percent complete, using the
    #         <code>details</code> parameter. This action can also be used by the worker as a mechanism to
    #       check if cancellation is being requested for the activity task. If a cancellation is being
    #       attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned
    #       by the service is set to <code>true</code>.</p>
    #          <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The
    #         <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p>
    #          <p>This action doesn't in itself create an event in the workflow execution history.
    #       However, if the task times out, the workflow execution history contains a
    #         <code>ActivityTaskTimedOut</code> event that contains the information from the last
    #       heartbeat generated by the activity worker.</p>
    #          <note>
    #             <p>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration
    #         of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</p>
    #          </note>
    #          <note>
    #             <p>This operation is only useful for long-lived activities to report liveliness of the
    #         task and to determine if a cancellation is being attempted.</p>
    #          </note>
    #          <important>
    #             <p>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is
    #         being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation
    #         request.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RecordActivityTaskHeartbeatInput}.
    #
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results. </p>
    #            </important>
    #
    # @option params [String] :details
    #   <p>If specified, contains details about the progress of the task.</p>
    #
    # @return [Types::RecordActivityTaskHeartbeatOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_activity_task_heartbeat(
    #     task_token: 'taskToken', # required
    #     details: 'details'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecordActivityTaskHeartbeatOutput
    #   resp.data.cancel_requested #=> Boolean
    #
    def record_activity_task_heartbeat(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecordActivityTaskHeartbeatInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecordActivityTaskHeartbeatInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecordActivityTaskHeartbeat
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RecordActivityTaskHeartbeat
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecordActivityTaskHeartbeat,
        stubs: @stubs,
        params_class: Params::RecordActivityTaskHeartbeatOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :record_activity_task_heartbeat
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new <i>activity type</i> along with its configuration
    #       settings in the specified domain.</p>
    #          <important>
    #             <p>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the
    #         domain. You cannot change any configuration settings of the type after its registration, and
    #         it must be registered as a new version.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>defaultTaskList.name</code>: String constraint. The key is
    #                 <code>swf:defaultTaskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>name</code>: String constraint. The key is <code>swf:name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>version</code>: String constraint. The key is
    #               <code>swf:version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterActivityTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which this activity is to be registered.</p>
    #
    # @option params [String] :name
    #   <p>The name of the activity type within the domain.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :version
    #   <p>The version of the activity type.</p>
    #            <note>
    #               <p>The activity type consists of the name and version, the combination of which must be
    #           unique within the domain.</p>
    #            </note>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :description
    #   <p>A textual description of the activity type.</p>
    #
    # @option params [String] :default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration that a worker can take to process tasks
    #         of this activity type. This default can be overridden when scheduling an activity task using
    #         the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #
    # @option params [String] :default_task_heartbeat_timeout
    #   <p>If set, specifies the default maximum time before which a worker processing a task of
    #         this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If
    #         the timeout is exceeded, the activity task is automatically timed out. This default can be
    #         overridden when scheduling an activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat
    #         or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In
    #         this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should
    #         clean up the activity task.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #
    # @option params [TaskList] :default_task_list
    #   <p>If set, specifies the default task list to use for scheduling tasks of this activity
    #         type. This default task list is used if a task list isn't provided when a task is scheduled
    #         through the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #
    # @option params [String] :default_task_priority
    #   <p>The default task priority to assign to the activity type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>in the
    #         <i>Amazon SWF Developer Guide</i>.</i>.</p>
    #
    # @option params [String] :default_task_schedule_to_start_timeout
    #   <p>If set, specifies the default maximum duration that a task of this activity type can
    #         wait before being assigned to a worker. This default can be overridden when scheduling an
    #         activity task using the <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #
    # @option params [String] :default_task_schedule_to_close_timeout
    #   <p>If set, specifies the default maximum duration for a task of this activity type. This
    #         default can be overridden when scheduling an activity task using the
    #           <code>ScheduleActivityTask</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #
    # @return [Types::RegisterActivityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_activity_type(
    #     domain: 'domain', # required
    #     name: 'name', # required
    #     version: 'version', # required
    #     description: 'description',
    #     default_task_start_to_close_timeout: 'defaultTaskStartToCloseTimeout',
    #     default_task_heartbeat_timeout: 'defaultTaskHeartbeatTimeout',
    #     default_task_list: {
    #       name: 'name' # required
    #     },
    #     default_task_priority: 'defaultTaskPriority',
    #     default_task_schedule_to_start_timeout: 'defaultTaskScheduleToStartTimeout',
    #     default_task_schedule_to_close_timeout: 'defaultTaskScheduleToCloseTimeout'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterActivityTypeOutput
    #
    def register_activity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterActivityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterActivityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterActivityType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault, Errors::TypeAlreadyExistsFault]),
        data_parser: Parsers::RegisterActivityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterActivityType,
        stubs: @stubs,
        params_class: Params::RegisterActivityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_activity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new domain.</p>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot use an IAM policy to control domain access for this action. The name of
    #           the domain being registered is available as the resource of this action.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterDomainInput}.
    #
    # @option params [String] :name
    #   <p>Name of the domain to register. The name must be unique in the region that the domain
    #         is registered in.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :description
    #   <p>A text description of the domain.</p>
    #
    # @option params [String] :workflow_execution_retention_period_in_days
    #   <p>The duration (in days) that records and histories of workflow executions on the domain
    #         should be kept by the service. After the retention period, the workflow execution isn't
    #         available in the results of visibility calls.</p>
    #            <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow
    #         execution history isn't retained. As soon as the workflow execution completes, the execution
    #         record and its history are deleted.</p>
    #            <p>The maximum workflow execution retention period is 90 days. For more information about
    #         Amazon SWF service limits, see: <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon SWF Service Limits</a> in the
    #           <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @option params [Array<ResourceTag>] :tags
    #   <p>Tags to be added when registering a domain.</p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @return [Types::RegisterDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_domain(
    #     name: 'name', # required
    #     description: 'description',
    #     workflow_execution_retention_period_in_days: 'workflowExecutionRetentionPeriodInDays', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterDomainOutput
    #
    def register_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault, Errors::DomainAlreadyExistsFault]),
        data_parser: Parsers::RegisterDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterDomain,
        stubs: @stubs,
        params_class: Params::RegisterDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new <i>workflow type</i> and its configuration settings in
    #       the specified domain.</p>
    #          <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p>
    #          <important>
    #             <p>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned.
    #         You cannot change the configuration settings of a workflow type once it is registered and it
    #         must be registered as a new version.</p>
    #          </important>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>defaultTaskList.name</code>: String constraint. The key is
    #                 <code>swf:defaultTaskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>name</code>: String constraint. The key is <code>swf:name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>version</code>: String constraint. The key is
    #               <code>swf:version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterWorkflowTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which to register the workflow type.</p>
    #
    # @option params [String] :name
    #   <p>The name of the workflow type.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :version
    #   <p>The version of the workflow type.</p>
    #            <note>
    #               <p>The workflow type consists of the name and version, the combination of which must be
    #           unique within the domain. To get a list of all currently registered workflow types, use the
    #             <a>ListWorkflowTypes</a> action.</p>
    #            </note>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :description
    #   <p>Textual description of the workflow type.</p>
    #
    # @option params [String] :default_task_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration of decision tasks for this workflow
    #         type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #
    # @option params [String] :default_execution_start_to_close_timeout
    #   <p>If set, specifies the default maximum duration for executions of this workflow type.
    #         You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #
    #            <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike
    #         some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for
    #           <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time
    #         that a workflow execution can run. Exceeding this limit always causes the workflow execution
    #         to time out.</p>
    #
    # @option params [TaskList] :default_task_list
    #   <p>If set, specifies the default task list to use for scheduling decision tasks for
    #         executions of this workflow type. This default is used only if a task list isn't provided when
    #         starting the execution through the <a>StartWorkflowExecution</a> Action or
    #           <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #
    # @option params [String] :default_task_priority
    #   <p>The default task priority to assign to the workflow type. If not assigned, then
    #           <code>0</code> is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @option params [String] :default_child_policy
    #   <p>If set, specifies the default policy to use for the child workflow executions when a
    #         workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This
    #         default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code>
    #               <a>Decision</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :default_lambda_role
    #   <p>The default IAM role attached to this workflow type.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't specify an IAM role when you start this workflow type, the default Lambda role is
    #           attached to the execution. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #
    # @return [Types::RegisterWorkflowTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_workflow_type(
    #     domain: 'domain', # required
    #     name: 'name', # required
    #     version: 'version', # required
    #     description: 'description',
    #     default_task_start_to_close_timeout: 'defaultTaskStartToCloseTimeout',
    #     default_execution_start_to_close_timeout: 'defaultExecutionStartToCloseTimeout',
    #     default_task_list: {
    #       name: 'name' # required
    #     },
    #     default_task_priority: 'defaultTaskPriority',
    #     default_child_policy: 'TERMINATE', # accepts ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #     default_lambda_role: 'defaultLambdaRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterWorkflowTypeOutput
    #
    def register_workflow_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterWorkflowTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterWorkflowTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterWorkflowType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault, Errors::TypeAlreadyExistsFault]),
        data_parser: Parsers::RegisterWorkflowType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterWorkflowType,
        stubs: @stubs,
        params_class: Params::RegisterWorkflowTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_workflow_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running
    #       workflow execution identified by the given domain, workflowId, and runId. This logically
    #       requests the cancellation of the workflow execution as a whole. It is up to the decider to
    #       take appropriate actions when it receives an execution history with this event.</p>
    #
    #          <note>
    #             <p>If the runId isn't specified, the <code>WorkflowExecutionCancelRequested</code> event
    #         is recorded in the history of the current open workflow execution with the specified
    #         workflowId in the domain.</p>
    #          </note>
    #
    #          <note>
    #             <p>Because this action allows the workflow to properly clean up and gracefully close, it
    #         should be used instead of <a>TerminateWorkflowExecution</a> when
    #         possible.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RequestCancelWorkflowExecutionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution to cancel.</p>
    #
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to cancel.</p>
    #
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to cancel.</p>
    #
    # @return [Types::RequestCancelWorkflowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_cancel_workflow_execution(
    #     domain: 'domain', # required
    #     workflow_id: 'workflowId', # required
    #     run_id: 'runId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestCancelWorkflowExecutionOutput
    #
    def request_cancel_workflow_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestCancelWorkflowExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestCancelWorkflowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestCancelWorkflowExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RequestCancelWorkflowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestCancelWorkflowExecution,
        stubs: @stubs,
        params_class: Params::RequestCancelWorkflowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_cancel_workflow_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can
    #       be provided using the <code>details</code> argument.</p>
    #
    #          <p>These <code>details</code> (if provided) appear in the
    #         <code>ActivityTaskCanceled</code> event added to the workflow history.</p>
    #
    #          <important>
    #             <p>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the
    #         activity can be safely undone or abandoned.</p>
    #          </important>
    #
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to <a>RespondActivityTaskCompleted</a>,
    #       RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has
    #         <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RespondActivityTaskCanceledInput}.
    #
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #
    # @option params [String] :details
    #   <p> Information about the cancellation.</p>
    #
    # @return [Types::RespondActivityTaskCanceledOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_activity_task_canceled(
    #     task_token: 'taskToken', # required
    #     details: 'details'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RespondActivityTaskCanceledOutput
    #
    def respond_activity_task_canceled(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RespondActivityTaskCanceledInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RespondActivityTaskCanceledInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RespondActivityTaskCanceled
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RespondActivityTaskCanceled
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RespondActivityTaskCanceled,
        stubs: @stubs,
        params_class: Params::RespondActivityTaskCanceledOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :respond_activity_task_canceled
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided).
    #       The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the
    #       workflow history.</p>
    #
    #          <important>
    #             <p>If the requested task doesn't complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is
    #         canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call
    #           <a>RespondActivityTaskCanceled</a>.</p>
    #          </important>
    #
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the
    #       task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RespondActivityTaskCompletedInput}.
    #
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #
    # @option params [String] :result
    #   <p>The result of the activity task. It is a free form string that is implementation
    #         specific.</p>
    #
    # @return [Types::RespondActivityTaskCompletedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_activity_task_completed(
    #     task_token: 'taskToken', # required
    #     result: 'result'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RespondActivityTaskCompletedOutput
    #
    def respond_activity_task_completed(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RespondActivityTaskCompletedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RespondActivityTaskCompletedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RespondActivityTaskCompleted
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RespondActivityTaskCompleted
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RespondActivityTaskCompleted,
        stubs: @stubs,
        params_class: Params::RespondActivityTaskCompletedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :respond_activity_task_completed
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by workers to tell the service that the <a>ActivityTask</a> identified
    #       by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The
    #         <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code>
    #       event added to the workflow history.</p>
    #
    #          <p>A task is considered open from the time that it is scheduled until it is closed.
    #       Therefore a task is reported as open while a worker is processing it. A task is closed after
    #       it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed
    #         out</a>.</p>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RespondActivityTaskFailedInput}.
    #
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p>
    #
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #
    # @option params [String] :reason
    #   <p>Description of the error that may assist in diagnostics.</p>
    #
    # @option params [String] :details
    #   <p> Detailed information about the failure.</p>
    #
    # @return [Types::RespondActivityTaskFailedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_activity_task_failed(
    #     task_token: 'taskToken', # required
    #     reason: 'reason',
    #     details: 'details'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RespondActivityTaskFailedOutput
    #
    def respond_activity_task_failed(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RespondActivityTaskFailedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RespondActivityTaskFailedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RespondActivityTaskFailed
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RespondActivityTaskFailed
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RespondActivityTaskFailed,
        stubs: @stubs,
        params_class: Params::RespondActivityTaskFailedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :respond_activity_task_failed
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by deciders to tell the service that the <a>DecisionTask</a> identified
    #       by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument
    #       specifies the list of decisions made while processing the task.</p>
    #
    #          <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The
    #         <code>executionContext</code> specified is attached to the event in the workflow execution
    #       history.</p>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #
    #          <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it
    #       can express permissions for the list of decisions in the <code>decisions</code> parameter.
    #       Each of the decisions has one or more parameters, much like a regular API call. To allow for
    #       policies to be as readable as possible, you can express permissions on decisions as if they
    #       were actual API calls, including applying conditions to some parameters. For more information,
    #       see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using
    #         IAM to Manage Access to Amazon SWF Workflows</a> in the
    #       <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RespondDecisionTaskCompletedInput}.
    #
    # @option params [String] :task_token
    #   <p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p>
    #            <important>
    #               <p>
    #                  <code>taskToken</code> is generated by the service and should be treated as an opaque value.
    #           If the task is passed to another process, its <code>taskToken</code> must also be passed.
    #           This enables it to provide its progress and respond with results.</p>
    #            </important>
    #
    # @option params [Array<Decision>] :decisions
    #   <p>The list of decisions (possibly empty) made by the decider while processing this
    #         decision task. See the docs for the <a>Decision</a> structure for
    #         details.</p>
    #
    # @option params [String] :execution_context
    #   <p>User defined context to add to workflow execution.</p>
    #
    # @return [Types::RespondDecisionTaskCompletedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.respond_decision_task_completed(
    #     task_token: 'taskToken', # required
    #     decisions: [
    #       {
    #         decision_type: 'ScheduleActivityTask', # required - accepts ["ScheduleActivityTask", "RequestCancelActivityTask", "CompleteWorkflowExecution", "FailWorkflowExecution", "CancelWorkflowExecution", "ContinueAsNewWorkflowExecution", "RecordMarker", "StartTimer", "CancelTimer", "SignalExternalWorkflowExecution", "RequestCancelExternalWorkflowExecution", "StartChildWorkflowExecution", "ScheduleLambdaFunction"]
    #         schedule_activity_task_decision_attributes: {
    #           activity_type: {
    #             name: 'name', # required
    #             version: 'version' # required
    #           }, # required
    #           activity_id: 'activityId', # required
    #           control: 'control',
    #           input: 'input',
    #           schedule_to_close_timeout: 'scheduleToCloseTimeout',
    #           task_list: {
    #             name: 'name' # required
    #           },
    #           task_priority: 'taskPriority',
    #           schedule_to_start_timeout: 'scheduleToStartTimeout',
    #           start_to_close_timeout: 'startToCloseTimeout',
    #           heartbeat_timeout: 'heartbeatTimeout'
    #         },
    #         request_cancel_activity_task_decision_attributes: {
    #           activity_id: 'activityId' # required
    #         },
    #         complete_workflow_execution_decision_attributes: {
    #           result: 'result'
    #         },
    #         fail_workflow_execution_decision_attributes: {
    #           reason: 'reason',
    #           details: 'details'
    #         },
    #         cancel_workflow_execution_decision_attributes: {
    #           details: 'details'
    #         },
    #         continue_as_new_workflow_execution_decision_attributes: {
    #           input: 'input',
    #           execution_start_to_close_timeout: 'executionStartToCloseTimeout',
    #           task_priority: 'taskPriority',
    #           task_start_to_close_timeout: 'taskStartToCloseTimeout',
    #           child_policy: 'TERMINATE', # accepts ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #           tag_list: [
    #             'member'
    #           ],
    #           workflow_type_version: 'workflowTypeVersion',
    #           lambda_role: 'lambdaRole'
    #         },
    #         record_marker_decision_attributes: {
    #           marker_name: 'markerName', # required
    #           details: 'details'
    #         },
    #         start_timer_decision_attributes: {
    #           timer_id: 'timerId', # required
    #           control: 'control',
    #           start_to_fire_timeout: 'startToFireTimeout' # required
    #         },
    #         cancel_timer_decision_attributes: {
    #           timer_id: 'timerId' # required
    #         },
    #         signal_external_workflow_execution_decision_attributes: {
    #           workflow_id: 'workflowId', # required
    #           run_id: 'runId',
    #           signal_name: 'signalName', # required
    #           input: 'input',
    #           control: 'control'
    #         },
    #         request_cancel_external_workflow_execution_decision_attributes: {
    #           workflow_id: 'workflowId', # required
    #           run_id: 'runId',
    #           control: 'control'
    #         },
    #         start_child_workflow_execution_decision_attributes: {
    #           workflow_type: {
    #             name: 'name', # required
    #             version: 'version' # required
    #           }, # required
    #           workflow_id: 'workflowId', # required
    #           control: 'control',
    #           input: 'input',
    #           execution_start_to_close_timeout: 'executionStartToCloseTimeout',
    #           task_priority: 'taskPriority',
    #           task_start_to_close_timeout: 'taskStartToCloseTimeout',
    #           child_policy: 'TERMINATE', # accepts ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #           lambda_role: 'lambdaRole'
    #         },
    #         schedule_lambda_function_decision_attributes: {
    #           id: 'id', # required
    #           name: 'name', # required
    #           control: 'control',
    #           input: 'input',
    #           start_to_close_timeout: 'startToCloseTimeout'
    #         }
    #       }
    #     ],
    #     execution_context: 'executionContext'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RespondDecisionTaskCompletedOutput
    #
    def respond_decision_task_completed(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RespondDecisionTaskCompletedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RespondDecisionTaskCompletedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RespondDecisionTaskCompleted
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::RespondDecisionTaskCompleted
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RespondDecisionTaskCompleted,
        stubs: @stubs,
        params_class: Params::RespondDecisionTaskCompletedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :respond_decision_task_completed
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution
    #       history and creates a decision task for the workflow execution identified by the given domain,
    #       workflowId and runId. The event is recorded with the specified user defined signalName and
    #       input (if provided).</p>
    #
    #          <note>
    #             <p>If a runId isn't specified, then the <code>WorkflowExecutionSignaled</code> event is
    #         recorded in the history of the current open workflow with the matching workflowId in the
    #         domain.</p>
    #          </note>
    #
    #          <note>
    #             <p>If the specified workflow execution isn't open, this method fails with
    #           <code>UnknownResource</code>.</p>
    #          </note>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SignalWorkflowExecutionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain containing the workflow execution to signal.</p>
    #
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to signal.</p>
    #
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to signal.</p>
    #
    # @option params [String] :signal_name
    #   <p>The name of the signal. This name must be meaningful to the target workflow.</p>
    #
    # @option params [String] :input
    #   <p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target
    #         workflow execution's history.</p>
    #
    # @return [Types::SignalWorkflowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_workflow_execution(
    #     domain: 'domain', # required
    #     workflow_id: 'workflowId', # required
    #     run_id: 'runId',
    #     signal_name: 'signalName', # required
    #     input: 'input'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SignalWorkflowExecutionOutput
    #
    def signal_workflow_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SignalWorkflowExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SignalWorkflowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SignalWorkflowExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::SignalWorkflowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SignalWorkflowExecution,
        stubs: @stubs,
        params_class: Params::SignalWorkflowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :signal_workflow_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an execution of the workflow type in the specified domain using the provided
    #         <code>workflowId</code> and input data.</p>
    #
    #          <p>This action returns the newly started workflow execution.</p>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>taskList</code>: String constraint. The key is
    #               <code>swf:taskList.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #                 <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #                 <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartWorkflowExecutionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain in which the workflow execution is created.</p>
    #
    # @option params [String] :workflow_id
    #   <p>The user defined identifier associated with the workflow execution. You can use this to
    #         associate a custom identifier with the workflow execution. You may specify the same identifier
    #         if a workflow execution is logically a <i>restart</i> of a previous execution.
    #         You cannot have two open workflow executions with the same <code>workflowId</code> at the same
    #         time within the same domain.</p>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [WorkflowType] :workflow_type
    #   <p>The type of the workflow to start.</p>
    #
    # @option params [TaskList] :task_list
    #   <p>The task list to use for the decision tasks generated for this workflow execution. This
    #         overrides the <code>defaultTaskList</code> specified when registering the workflow
    #         type.</p>
    #            <note>
    #               <p>A task list for this workflow execution must be specified either as a default for the
    #           workflow type or through this parameter. If neither this parameter is set nor a default task
    #           list was specified at registration time then a fault is returned.</p>
    #            </note>
    #
    #            <p>The specified string must not start or end with whitespace. It must not contain a
    #           <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    #         control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    #         not <i>be</i> the literal string <code>arn</code>.</p>
    #
    # @option params [String] :task_priority
    #   <p>The task priority to use for this workflow execution. This overrides any default
    #         priority that was assigned when the workflow type was registered. If not set, then the default
    #         task priority for the workflow type is used. Valid values are integers that range from Java's
    #           <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647).
    #         Higher numbers indicate higher priority.</p>
    #            <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task
    #           Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @option params [String] :input
    #   <p>The input for the workflow execution. This is a free form string which should be
    #         meaningful to the workflow you are starting. This <code>input</code> is made available to the
    #         new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>
    #
    # @option params [String] :execution_start_to_close_timeout
    #   <p>The total duration for this workflow execution. This overrides the
    #         defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p>
    #
    #            <p>The duration is specified in seconds; an integer greater than or equal to
    #           <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some
    #         of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this
    #         timeout; there is a one-year max limit on the time that a workflow execution can
    #         run.</p>
    #
    #            <note>
    #               <p>An execution start-to-close timeout must be specified either through this parameter
    #           or as a default when the workflow type is registered. If neither this parameter nor a
    #           default execution start-to-close timeout is specified, a fault is returned.</p>
    #            </note>
    #
    # @option params [Array<String>] :tag_list
    #   <p>The list of tags to associate with the workflow execution. You can specify a maximum of
    #         5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and
    #         specifying a <a>TagFilter</a>.</p>
    #
    # @option params [String] :task_start_to_close_timeout
    #   <p>Specifies the maximum duration of decision tasks for this workflow execution. This
    #         parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering
    #         the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The duration is specified in seconds, an integer greater than or equal to
    #           <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    #            <note>
    #               <p>A task start-to-close timeout for this workflow execution must be specified either as
    #           a default for the workflow type or through this parameter. If neither this parameter is set
    #           nor a default task start-to-close timeout was specified at registration time then a fault is
    #           returned.</p>
    #            </note>
    #
    # @option params [String] :child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of this workflow
    #         execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a>
    #         action explicitly or due to an expired timeout. This policy overrides the default child policy
    #         specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #
    # @option params [String] :lambda_role
    #   <p>The IAM role to attach to this workflow execution.</p>
    #            <note>
    #               <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you
    #           don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a
    #             <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the
    #             <i>Amazon SWF Developer Guide</i>.</p>
    #            </note>
    #
    # @return [Types::StartWorkflowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow_execution(
    #     domain: 'domain', # required
    #     workflow_id: 'workflowId', # required
    #     workflow_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     }, # required
    #     task_list: {
    #       name: 'name' # required
    #     },
    #     task_priority: 'taskPriority',
    #     input: 'input',
    #     execution_start_to_close_timeout: 'executionStartToCloseTimeout',
    #     tag_list: [
    #       'member'
    #     ],
    #     task_start_to_close_timeout: 'taskStartToCloseTimeout',
    #     child_policy: 'TERMINATE', # accepts ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #     lambda_role: 'lambdaRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartWorkflowExecutionOutput
    #   resp.data.run_id #=> String
    #
    def start_workflow_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartWorkflowExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartWorkflowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartWorkflowExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::WorkflowExecutionAlreadyStartedFault, Errors::DefaultUndefinedFault, Errors::TypeDeprecatedFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
        data_parser: Parsers::StartWorkflowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartWorkflowExecution,
        stubs: @stubs,
        params_class: Params::StartWorkflowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_workflow_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a tag to a Amazon SWF domain.</p>
    #          <note>
    #             <p>Amazon SWF supports a maximum of 50 tags per resource.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    #
    # @option params [Array<ResourceTag>] :tags
    #   <p>The list of tags to add to a domain. </p>
    #            <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::TooManyTagsFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
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

    # <p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the
    #       workflow execution identified by the given domain, runId, and workflowId. The child policy,
    #       registered with the workflow type or specified when starting this execution, is applied to any
    #       open child workflow executions of this workflow execution.</p>
    #
    #          <important>
    #             <p>If the identified workflow execution was in progress, it is terminated
    #         immediately.</p>
    #          </important>
    #
    #          <note>
    #             <p>If a runId isn't specified, then the <code>WorkflowExecutionTerminated</code> event
    #         is recorded in the history of the current open workflow with the matching workflowId in the
    #         domain.</p>
    #          </note>
    #
    #          <note>
    #             <p>You should consider using <a>RequestCancelWorkflowExecution</a> action
    #         instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> doesn't.</p>
    #          </note>
    #
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateWorkflowExecutionInput}.
    #
    # @option params [String] :domain
    #   <p>The domain of the workflow execution to terminate.</p>
    #
    # @option params [String] :workflow_id
    #   <p>The workflowId of the workflow execution to terminate.</p>
    #
    # @option params [String] :run_id
    #   <p>The runId of the workflow execution to terminate.</p>
    #
    # @option params [String] :reason
    #   <p> A descriptive reason for terminating the workflow execution.</p>
    #
    # @option params [String] :details
    #   <p> Details for terminating the workflow execution.</p>
    #
    # @option params [String] :child_policy
    #   <p>If set, specifies the policy to use for the child workflow executions of the workflow
    #         execution being terminated. This policy overrides the child policy specified for the workflow
    #         execution at registration time or when starting the execution.</p>
    #            <p>The supported child policies are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE</code> – The child executions are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    #             execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its
    #             history. It is up to the decider to take appropriate actions when it receives an execution
    #             history with this event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ABANDON</code> – No action is taken. The child executions continue to
    #             run.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>A child policy for this workflow execution must be specified either as a default for
    #           the workflow type or through this parameter. If neither this parameter is set nor a default
    #           child policy was specified at registration time then a fault is returned.</p>
    #            </note>
    #
    # @return [Types::TerminateWorkflowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workflow_execution(
    #     domain: 'domain', # required
    #     workflow_id: 'workflowId', # required
    #     run_id: 'runId',
    #     reason: 'reason',
    #     details: 'details',
    #     child_policy: 'TERMINATE' # accepts ["TERMINATE", "REQUEST_CANCEL", "ABANDON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateWorkflowExecutionOutput
    #
    def terminate_workflow_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateWorkflowExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateWorkflowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateWorkflowExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault]),
        data_parser: Parsers::TerminateWorkflowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateWorkflowExecution,
        stubs: @stubs,
        params_class: Params::TerminateWorkflowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_workflow_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Undeprecates a previously deprecated <i>activity type</i>. After an activity type has
    #       been undeprecated, you can create new tasks of that activity type.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>activityType.name</code>: String constraint. The key is
    #               <code>swf:activityType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>activityType.version</code>: String constraint. The key is
    #               <code>swf:activityType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UndeprecateActivityTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain of the deprecated activity type.</p>
    #
    # @option params [ActivityType] :activity_type
    #   <p>The activity type to undeprecate.</p>
    #
    # @return [Types::UndeprecateActivityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.undeprecate_activity_type(
    #     domain: 'domain', # required
    #     activity_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UndeprecateActivityTypeOutput
    #
    def undeprecate_activity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UndeprecateActivityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UndeprecateActivityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UndeprecateActivityType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::TypeAlreadyExistsFault]),
        data_parser: Parsers::UndeprecateActivityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UndeprecateActivityType,
        stubs: @stubs,
        params_class: Params::UndeprecateActivityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :undeprecate_activity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Undeprecates a previously deprecated domain. After a domain has been undeprecated it can be used
    #       to create new workflow executions or register new types.</p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use an IAM policy to constrain this action's parameters.</p>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UndeprecateDomainInput}.
    #
    # @option params [String] :name
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #
    # @return [Types::UndeprecateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.undeprecate_domain(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UndeprecateDomainOutput
    #
    def undeprecate_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UndeprecateDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UndeprecateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UndeprecateDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::DomainAlreadyExistsFault]),
        data_parser: Parsers::UndeprecateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UndeprecateDomain,
        stubs: @stubs,
        params_class: Params::UndeprecateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :undeprecate_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Undeprecates a previously deprecated <i>workflow type</i>. After a workflow type has
    #       been undeprecated, you can create new executions of that type. </p>
    #          <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not
    #         exactly reflect recent updates and changes.</p>
    #          </note>
    #          <p>
    #             <b>Access Control</b>
    #          </p>
    #          <p>You can use IAM policies to control this action's access to Amazon SWF resources as
    #       follows:</p>
    #          <ul>
    #             <li>
    #                <p>Use a <code>Resource</code> element with the domain name to limit the action to
    #           only specified domains.</p>
    #             </li>
    #             <li>
    #                <p>Use an <code>Action</code> element to allow or deny permission to call this
    #           action.</p>
    #             </li>
    #             <li>
    #                <p>Constrain the following parameters by using a <code>Condition</code> element with
    #           the appropriate keys.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.name</code>: String constraint. The key is
    #               <code>swf:workflowType.name</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>workflowType.version</code>: String constraint. The key is
    #               <code>swf:workflowType.version</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>If the caller doesn't have sufficient permissions to invoke the action, or the
    #       parameter values fall outside the specified constraints, the action fails. The associated
    #       event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>.
    #       For details and example IAM policies, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF
    #         Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UndeprecateWorkflowTypeInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #
    # @option params [WorkflowType] :workflow_type
    #   <p>The name of the domain of the deprecated workflow type.</p>
    #
    # @return [Types::UndeprecateWorkflowTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.undeprecate_workflow_type(
    #     domain: 'domain', # required
    #     workflow_type: {
    #       name: 'name', # required
    #       version: 'version' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UndeprecateWorkflowTypeOutput
    #
    def undeprecate_workflow_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UndeprecateWorkflowTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UndeprecateWorkflowTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UndeprecateWorkflowType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::TypeAlreadyExistsFault]),
        data_parser: Parsers::UndeprecateWorkflowType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UndeprecateWorkflowType,
        stubs: @stubs,
        params_class: Params::UndeprecateWorkflowTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :undeprecate_workflow_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove a tag from a Amazon SWF domain.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tags to remove from the Amazon SWF domain.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnknownResourceFault, Errors::OperationNotPermittedFault, Errors::LimitExceededFault]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
