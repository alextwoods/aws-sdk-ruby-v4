# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Fis
  # An API client for FaultInjectionSimulator
  # See {#initialize} for a full list of supported configuration options
  # <p>Fault Injection Simulator is a managed service that enables you to perform fault injection
  #            experiments on your Amazon Web Services workloads. For more information, see the <a href="https://docs.aws.amazon.com/fis/latest/userguide/">Fault Injection Simulator User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Fis::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an experiment template. </p>
    #          <p>An experiment template includes the following components:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Targets</b>: A target can be a specific resource in
    #                your Amazon Web Services environment, or one or more resources that match criteria that you
    #                specify, for example, resources that have specific tags.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Actions</b>: The actions to carry out on the
    #                target. You can specify multiple actions, the duration of each action, and when to start each action during an experiment.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Stop conditions</b>: If a stop condition is
    #                triggered while an experiment is running, the experiment is automatically
    #                stopped. You can define a stop condition as a CloudWatch alarm.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html">Experiment templates</a>
    #          in the <i>Fault Injection Simulator User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateExperimentTemplateInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :description
    #   <p>A description for the experiment template.</p>
    #
    # @option params [Array<CreateExperimentTemplateStopConditionInput>] :stop_conditions
    #   <p>The stop conditions.</p>
    #
    # @option params [Hash<String, CreateExperimentTemplateTargetInput>] :targets
    #   <p>The targets for the experiment.</p>
    #
    # @option params [Hash<String, CreateExperimentTemplateActionInput>] :actions
    #   <p>The actions for the experiment.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the experiment template.</p>
    #
    # @option params [CreateExperimentTemplateLogConfigurationInput] :log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    # @return [Types::CreateExperimentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experiment_template(
    #     client_token: 'clientToken', # required
    #     description: 'description', # required
    #     stop_conditions: [
    #       {
    #         source: 'source', # required
    #         value: 'value'
    #       }
    #     ], # required
    #     targets: {
    #       'key' => {
    #         resource_type: 'resourceType', # required
    #         resource_arns: [
    #           'member'
    #         ],
    #         resource_tags: {
    #           'key' => 'value'
    #         },
    #         filters: [
    #           {
    #             path: 'path', # required
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ],
    #         selection_mode: 'selectionMode', # required
    #         parameters: {
    #           'key' => 'value'
    #         }
    #       }
    #     },
    #     actions: {
    #       'key' => {
    #         action_id: 'actionId', # required
    #         description: 'description',
    #         parameters: {
    #           'key' => 'value'
    #         },
    #         targets: {
    #           'key' => 'value'
    #         },
    #         start_after: [
    #           'member'
    #         ]
    #       }
    #     }, # required
    #     role_arn: 'roleArn', # required
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: 'logGroupArn' # required
    #       },
    #       s3_configuration: {
    #         bucket_name: 'bucketName', # required
    #         prefix: 'prefix'
    #       },
    #       log_schema_version: 1 # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExperimentTemplateOutput
    #   resp.data.experiment_template #=> Types::ExperimentTemplate
    #   resp.data.experiment_template.id #=> String
    #   resp.data.experiment_template.description #=> String
    #   resp.data.experiment_template.targets #=> Hash<String, ExperimentTemplateTarget>
    #   resp.data.experiment_template.targets['key'] #=> Types::ExperimentTemplateTarget
    #   resp.data.experiment_template.targets['key'].resource_type #=> String
    #   resp.data.experiment_template.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment_template.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment_template.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment_template.targets['key'].filters #=> Array<ExperimentTemplateTargetFilter>
    #   resp.data.experiment_template.targets['key'].filters[0] #=> Types::ExperimentTemplateTargetFilter
    #   resp.data.experiment_template.targets['key'].filters[0].path #=> String
    #   resp.data.experiment_template.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment_template.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment_template.targets['key'].selection_mode #=> String
    #   resp.data.experiment_template.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions #=> Hash<String, ExperimentTemplateAction>
    #   resp.data.experiment_template.actions['key'] #=> Types::ExperimentTemplateAction
    #   resp.data.experiment_template.actions['key'].action_id #=> String
    #   resp.data.experiment_template.actions['key'].description #=> String
    #   resp.data.experiment_template.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].targets['key'] #=> String
    #   resp.data.experiment_template.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment_template.actions['key'].start_after[0] #=> String
    #   resp.data.experiment_template.stop_conditions #=> Array<ExperimentTemplateStopCondition>
    #   resp.data.experiment_template.stop_conditions[0] #=> Types::ExperimentTemplateStopCondition
    #   resp.data.experiment_template.stop_conditions[0].source #=> String
    #   resp.data.experiment_template.stop_conditions[0].value #=> String
    #   resp.data.experiment_template.creation_time #=> Time
    #   resp.data.experiment_template.last_update_time #=> Time
    #   resp.data.experiment_template.role_arn #=> String
    #   resp.data.experiment_template.tags #=> Hash<String, String>
    #   resp.data.experiment_template.log_configuration #=> Types::ExperimentTemplateLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration #=> Types::ExperimentTemplateS3LogConfiguration
    #   resp.data.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment_template.log_configuration.log_schema_version #=> Integer
    #
    def create_experiment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExperimentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExperimentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExperimentTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::CreateExperimentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExperimentTemplate,
        stubs: @stubs,
        params_class: Params::CreateExperimentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_experiment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified experiment template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExperimentTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    #
    # @return [Types::DeleteExperimentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experiment_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExperimentTemplateOutput
    #   resp.data.experiment_template #=> Types::ExperimentTemplate
    #   resp.data.experiment_template.id #=> String
    #   resp.data.experiment_template.description #=> String
    #   resp.data.experiment_template.targets #=> Hash<String, ExperimentTemplateTarget>
    #   resp.data.experiment_template.targets['key'] #=> Types::ExperimentTemplateTarget
    #   resp.data.experiment_template.targets['key'].resource_type #=> String
    #   resp.data.experiment_template.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment_template.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment_template.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment_template.targets['key'].filters #=> Array<ExperimentTemplateTargetFilter>
    #   resp.data.experiment_template.targets['key'].filters[0] #=> Types::ExperimentTemplateTargetFilter
    #   resp.data.experiment_template.targets['key'].filters[0].path #=> String
    #   resp.data.experiment_template.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment_template.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment_template.targets['key'].selection_mode #=> String
    #   resp.data.experiment_template.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions #=> Hash<String, ExperimentTemplateAction>
    #   resp.data.experiment_template.actions['key'] #=> Types::ExperimentTemplateAction
    #   resp.data.experiment_template.actions['key'].action_id #=> String
    #   resp.data.experiment_template.actions['key'].description #=> String
    #   resp.data.experiment_template.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].targets['key'] #=> String
    #   resp.data.experiment_template.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment_template.actions['key'].start_after[0] #=> String
    #   resp.data.experiment_template.stop_conditions #=> Array<ExperimentTemplateStopCondition>
    #   resp.data.experiment_template.stop_conditions[0] #=> Types::ExperimentTemplateStopCondition
    #   resp.data.experiment_template.stop_conditions[0].source #=> String
    #   resp.data.experiment_template.stop_conditions[0].value #=> String
    #   resp.data.experiment_template.creation_time #=> Time
    #   resp.data.experiment_template.last_update_time #=> Time
    #   resp.data.experiment_template.role_arn #=> String
    #   resp.data.experiment_template.tags #=> Hash<String, String>
    #   resp.data.experiment_template.log_configuration #=> Types::ExperimentTemplateLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration #=> Types::ExperimentTemplateS3LogConfiguration
    #   resp.data.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment_template.log_configuration.log_schema_version #=> Integer
    #
    def delete_experiment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExperimentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExperimentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExperimentTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteExperimentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExperimentTemplate,
        stubs: @stubs,
        params_class: Params::DeleteExperimentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_experiment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified FIS action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetActionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the action.</p>
    #
    # @return [Types::GetActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_action(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetActionOutput
    #   resp.data.action #=> Types::Action
    #   resp.data.action.id #=> String
    #   resp.data.action.description #=> String
    #   resp.data.action.parameters #=> Hash<String, ActionParameter>
    #   resp.data.action.parameters['key'] #=> Types::ActionParameter
    #   resp.data.action.parameters['key'].description #=> String
    #   resp.data.action.parameters['key'].required #=> Boolean
    #   resp.data.action.targets #=> Hash<String, ActionTarget>
    #   resp.data.action.targets['key'] #=> Types::ActionTarget
    #   resp.data.action.targets['key'].resource_type #=> String
    #   resp.data.action.tags #=> Hash<String, String>
    #   resp.data.action.tags['key'] #=> String
    #
    def get_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAction,
        stubs: @stubs,
        params_class: Params::GetActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified experiment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExperimentInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the experiment.</p>
    #
    # @return [Types::GetExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.id #=> String
    #   resp.data.experiment.experiment_template_id #=> String
    #   resp.data.experiment.role_arn #=> String
    #   resp.data.experiment.state #=> Types::ExperimentState
    #   resp.data.experiment.state.status #=> String, one of ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed"]
    #   resp.data.experiment.state.reason #=> String
    #   resp.data.experiment.targets #=> Hash<String, ExperimentTarget>
    #   resp.data.experiment.targets['key'] #=> Types::ExperimentTarget
    #   resp.data.experiment.targets['key'].resource_type #=> String
    #   resp.data.experiment.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment.targets['key'].filters #=> Array<ExperimentTargetFilter>
    #   resp.data.experiment.targets['key'].filters[0] #=> Types::ExperimentTargetFilter
    #   resp.data.experiment.targets['key'].filters[0].path #=> String
    #   resp.data.experiment.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment.targets['key'].selection_mode #=> String
    #   resp.data.experiment.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions #=> Hash<String, ExperimentAction>
    #   resp.data.experiment.actions['key'] #=> Types::ExperimentAction
    #   resp.data.experiment.actions['key'].action_id #=> String
    #   resp.data.experiment.actions['key'].description #=> String
    #   resp.data.experiment.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].targets['key'] #=> String
    #   resp.data.experiment.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment.actions['key'].start_after[0] #=> String
    #   resp.data.experiment.actions['key'].state #=> Types::ExperimentActionState
    #   resp.data.experiment.actions['key'].state.status #=> String, one of ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed"]
    #   resp.data.experiment.actions['key'].state.reason #=> String
    #   resp.data.experiment.actions['key'].start_time #=> Time
    #   resp.data.experiment.actions['key'].end_time #=> Time
    #   resp.data.experiment.stop_conditions #=> Array<ExperimentStopCondition>
    #   resp.data.experiment.stop_conditions[0] #=> Types::ExperimentStopCondition
    #   resp.data.experiment.stop_conditions[0].source #=> String
    #   resp.data.experiment.stop_conditions[0].value #=> String
    #   resp.data.experiment.creation_time #=> Time
    #   resp.data.experiment.start_time #=> Time
    #   resp.data.experiment.end_time #=> Time
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.log_configuration #=> Types::ExperimentLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentCloudWatchLogsLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment.log_configuration.s3_configuration #=> Types::ExperimentS3LogConfiguration
    #   resp.data.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment.log_configuration.log_schema_version #=> Integer
    #
    def get_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExperiment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExperiment,
        stubs: @stubs,
        params_class: Params::GetExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified experiment template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExperimentTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    #
    # @return [Types::GetExperimentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment_template(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExperimentTemplateOutput
    #   resp.data.experiment_template #=> Types::ExperimentTemplate
    #   resp.data.experiment_template.id #=> String
    #   resp.data.experiment_template.description #=> String
    #   resp.data.experiment_template.targets #=> Hash<String, ExperimentTemplateTarget>
    #   resp.data.experiment_template.targets['key'] #=> Types::ExperimentTemplateTarget
    #   resp.data.experiment_template.targets['key'].resource_type #=> String
    #   resp.data.experiment_template.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment_template.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment_template.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment_template.targets['key'].filters #=> Array<ExperimentTemplateTargetFilter>
    #   resp.data.experiment_template.targets['key'].filters[0] #=> Types::ExperimentTemplateTargetFilter
    #   resp.data.experiment_template.targets['key'].filters[0].path #=> String
    #   resp.data.experiment_template.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment_template.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment_template.targets['key'].selection_mode #=> String
    #   resp.data.experiment_template.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions #=> Hash<String, ExperimentTemplateAction>
    #   resp.data.experiment_template.actions['key'] #=> Types::ExperimentTemplateAction
    #   resp.data.experiment_template.actions['key'].action_id #=> String
    #   resp.data.experiment_template.actions['key'].description #=> String
    #   resp.data.experiment_template.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].targets['key'] #=> String
    #   resp.data.experiment_template.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment_template.actions['key'].start_after[0] #=> String
    #   resp.data.experiment_template.stop_conditions #=> Array<ExperimentTemplateStopCondition>
    #   resp.data.experiment_template.stop_conditions[0] #=> Types::ExperimentTemplateStopCondition
    #   resp.data.experiment_template.stop_conditions[0].source #=> String
    #   resp.data.experiment_template.stop_conditions[0].value #=> String
    #   resp.data.experiment_template.creation_time #=> Time
    #   resp.data.experiment_template.last_update_time #=> Time
    #   resp.data.experiment_template.role_arn #=> String
    #   resp.data.experiment_template.tags #=> Hash<String, String>
    #   resp.data.experiment_template.log_configuration #=> Types::ExperimentTemplateLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration #=> Types::ExperimentTemplateS3LogConfiguration
    #   resp.data.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment_template.log_configuration.log_schema_version #=> Integer
    #
    def get_experiment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExperimentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExperimentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExperimentTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetExperimentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExperimentTemplate,
        stubs: @stubs,
        params_class: Params::GetExperimentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_experiment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified resource type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTargetResourceTypeInput}.
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #
    # @return [Types::GetTargetResourceTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_target_resource_type(
    #     resource_type: 'resourceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTargetResourceTypeOutput
    #   resp.data.target_resource_type #=> Types::TargetResourceType
    #   resp.data.target_resource_type.resource_type #=> String
    #   resp.data.target_resource_type.description #=> String
    #   resp.data.target_resource_type.parameters #=> Hash<String, TargetResourceTypeParameter>
    #   resp.data.target_resource_type.parameters['key'] #=> Types::TargetResourceTypeParameter
    #   resp.data.target_resource_type.parameters['key'].description #=> String
    #   resp.data.target_resource_type.parameters['key'].required #=> Boolean
    #
    def get_target_resource_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTargetResourceTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTargetResourceTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTargetResourceType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetTargetResourceType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTargetResourceType,
        stubs: @stubs,
        params_class: Params::GetTargetResourceTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_target_resource_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the available FIS actions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_actions(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActionsOutput
    #   resp.data.actions #=> Array<ActionSummary>
    #   resp.data.actions[0] #=> Types::ActionSummary
    #   resp.data.actions[0].id #=> String
    #   resp.data.actions[0].description #=> String
    #   resp.data.actions[0].targets #=> Hash<String, ActionTarget>
    #   resp.data.actions[0].targets['key'] #=> Types::ActionTarget
    #   resp.data.actions[0].targets['key'].resource_type #=> String
    #   resp.data.actions[0].tags #=> Hash<String, String>
    #   resp.data.actions[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::ListActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActions,
        stubs: @stubs,
        params_class: Params::ListActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your experiment templates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExperimentTemplatesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListExperimentTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiment_templates(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExperimentTemplatesOutput
    #   resp.data.experiment_templates #=> Array<ExperimentTemplateSummary>
    #   resp.data.experiment_templates[0] #=> Types::ExperimentTemplateSummary
    #   resp.data.experiment_templates[0].id #=> String
    #   resp.data.experiment_templates[0].description #=> String
    #   resp.data.experiment_templates[0].creation_time #=> Time
    #   resp.data.experiment_templates[0].last_update_time #=> Time
    #   resp.data.experiment_templates[0].tags #=> Hash<String, String>
    #   resp.data.experiment_templates[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_experiment_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExperimentTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExperimentTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExperimentTemplates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::ListExperimentTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExperimentTemplates,
        stubs: @stubs,
        params_class: Params::ListExperimentTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_experiment_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your experiments.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExperimentsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListExperimentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiments(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExperimentsOutput
    #   resp.data.experiments #=> Array<ExperimentSummary>
    #   resp.data.experiments[0] #=> Types::ExperimentSummary
    #   resp.data.experiments[0].id #=> String
    #   resp.data.experiments[0].experiment_template_id #=> String
    #   resp.data.experiments[0].state #=> Types::ExperimentState
    #   resp.data.experiments[0].state.status #=> String, one of ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed"]
    #   resp.data.experiments[0].state.reason #=> String
    #   resp.data.experiments[0].creation_time #=> Time
    #   resp.data.experiments[0].tags #=> Hash<String, String>
    #   resp.data.experiments[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_experiments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExperimentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExperimentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExperiments
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::ListExperiments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExperiments,
        stubs: @stubs,
        params_class: Params::ListExperimentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_experiments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Lists the target resource types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetResourceTypesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListTargetResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_target_resource_types(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetResourceTypesOutput
    #   resp.data.target_resource_types #=> Array<TargetResourceTypeSummary>
    #   resp.data.target_resource_types[0] #=> Types::TargetResourceTypeSummary
    #   resp.data.target_resource_types[0].resource_type #=> String
    #   resp.data.target_resource_types[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_target_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetResourceTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetResourceTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::ListTargetResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetResourceTypes,
        stubs: @stubs,
        params_class: Params::ListTargetResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_target_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts running an experiment from the specified experiment template.</p>
    #
    # @param [Hash] params
    #   See {Types::StartExperimentInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the experiment.</p>
    #
    # @return [Types::StartExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_experiment(
    #     client_token: 'clientToken', # required
    #     experiment_template_id: 'experimentTemplateId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.id #=> String
    #   resp.data.experiment.experiment_template_id #=> String
    #   resp.data.experiment.role_arn #=> String
    #   resp.data.experiment.state #=> Types::ExperimentState
    #   resp.data.experiment.state.status #=> String, one of ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed"]
    #   resp.data.experiment.state.reason #=> String
    #   resp.data.experiment.targets #=> Hash<String, ExperimentTarget>
    #   resp.data.experiment.targets['key'] #=> Types::ExperimentTarget
    #   resp.data.experiment.targets['key'].resource_type #=> String
    #   resp.data.experiment.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment.targets['key'].filters #=> Array<ExperimentTargetFilter>
    #   resp.data.experiment.targets['key'].filters[0] #=> Types::ExperimentTargetFilter
    #   resp.data.experiment.targets['key'].filters[0].path #=> String
    #   resp.data.experiment.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment.targets['key'].selection_mode #=> String
    #   resp.data.experiment.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions #=> Hash<String, ExperimentAction>
    #   resp.data.experiment.actions['key'] #=> Types::ExperimentAction
    #   resp.data.experiment.actions['key'].action_id #=> String
    #   resp.data.experiment.actions['key'].description #=> String
    #   resp.data.experiment.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].targets['key'] #=> String
    #   resp.data.experiment.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment.actions['key'].start_after[0] #=> String
    #   resp.data.experiment.actions['key'].state #=> Types::ExperimentActionState
    #   resp.data.experiment.actions['key'].state.status #=> String, one of ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed"]
    #   resp.data.experiment.actions['key'].state.reason #=> String
    #   resp.data.experiment.actions['key'].start_time #=> Time
    #   resp.data.experiment.actions['key'].end_time #=> Time
    #   resp.data.experiment.stop_conditions #=> Array<ExperimentStopCondition>
    #   resp.data.experiment.stop_conditions[0] #=> Types::ExperimentStopCondition
    #   resp.data.experiment.stop_conditions[0].source #=> String
    #   resp.data.experiment.stop_conditions[0].value #=> String
    #   resp.data.experiment.creation_time #=> Time
    #   resp.data.experiment.start_time #=> Time
    #   resp.data.experiment.end_time #=> Time
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.log_configuration #=> Types::ExperimentLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentCloudWatchLogsLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment.log_configuration.s3_configuration #=> Types::ExperimentS3LogConfiguration
    #   resp.data.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment.log_configuration.log_schema_version #=> Integer
    #
    def start_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartExperiment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::StartExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartExperiment,
        stubs: @stubs,
        params_class: Params::StartExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the specified experiment.</p>
    #
    # @param [Hash] params
    #   See {Types::StopExperimentInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the experiment.</p>
    #
    # @return [Types::StopExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_experiment(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.id #=> String
    #   resp.data.experiment.experiment_template_id #=> String
    #   resp.data.experiment.role_arn #=> String
    #   resp.data.experiment.state #=> Types::ExperimentState
    #   resp.data.experiment.state.status #=> String, one of ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed"]
    #   resp.data.experiment.state.reason #=> String
    #   resp.data.experiment.targets #=> Hash<String, ExperimentTarget>
    #   resp.data.experiment.targets['key'] #=> Types::ExperimentTarget
    #   resp.data.experiment.targets['key'].resource_type #=> String
    #   resp.data.experiment.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment.targets['key'].filters #=> Array<ExperimentTargetFilter>
    #   resp.data.experiment.targets['key'].filters[0] #=> Types::ExperimentTargetFilter
    #   resp.data.experiment.targets['key'].filters[0].path #=> String
    #   resp.data.experiment.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment.targets['key'].selection_mode #=> String
    #   resp.data.experiment.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions #=> Hash<String, ExperimentAction>
    #   resp.data.experiment.actions['key'] #=> Types::ExperimentAction
    #   resp.data.experiment.actions['key'].action_id #=> String
    #   resp.data.experiment.actions['key'].description #=> String
    #   resp.data.experiment.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment.actions['key'].targets['key'] #=> String
    #   resp.data.experiment.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment.actions['key'].start_after[0] #=> String
    #   resp.data.experiment.actions['key'].state #=> Types::ExperimentActionState
    #   resp.data.experiment.actions['key'].state.status #=> String, one of ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed"]
    #   resp.data.experiment.actions['key'].state.reason #=> String
    #   resp.data.experiment.actions['key'].start_time #=> Time
    #   resp.data.experiment.actions['key'].end_time #=> Time
    #   resp.data.experiment.stop_conditions #=> Array<ExperimentStopCondition>
    #   resp.data.experiment.stop_conditions[0] #=> Types::ExperimentStopCondition
    #   resp.data.experiment.stop_conditions[0].source #=> String
    #   resp.data.experiment.stop_conditions[0].value #=> String
    #   resp.data.experiment.creation_time #=> Time
    #   resp.data.experiment.start_time #=> Time
    #   resp.data.experiment.end_time #=> Time
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.log_configuration #=> Types::ExperimentLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentCloudWatchLogsLogConfiguration
    #   resp.data.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment.log_configuration.s3_configuration #=> Types::ExperimentS3LogConfiguration
    #   resp.data.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment.log_configuration.log_schema_version #=> Integer
    #
    def stop_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopExperiment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StopExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopExperiment,
        stubs: @stubs,
        params_class: Params::StopExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Removes the specified tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Updates the specified experiment template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateExperimentTemplateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the experiment template.</p>
    #
    # @option params [String] :description
    #   <p>A description for the template.</p>
    #
    # @option params [Array<UpdateExperimentTemplateStopConditionInput>] :stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #
    # @option params [Hash<String, UpdateExperimentTemplateTargetInput>] :targets
    #   <p>The targets for the experiment.</p>
    #
    # @option params [Hash<String, UpdateExperimentTemplateActionInputItem>] :actions
    #   <p>The actions for the experiment.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #
    # @option params [UpdateExperimentTemplateLogConfigurationInput] :log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    # @return [Types::UpdateExperimentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experiment_template(
    #     id: 'id', # required
    #     description: 'description',
    #     stop_conditions: [
    #       {
    #         source: 'source', # required
    #         value: 'value'
    #       }
    #     ],
    #     targets: {
    #       'key' => {
    #         resource_type: 'resourceType', # required
    #         resource_arns: [
    #           'member'
    #         ],
    #         resource_tags: {
    #           'key' => 'value'
    #         },
    #         filters: [
    #           {
    #             path: 'path', # required
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ],
    #         selection_mode: 'selectionMode', # required
    #         parameters: {
    #           'key' => 'value'
    #         }
    #       }
    #     },
    #     actions: {
    #       'key' => {
    #         action_id: 'actionId',
    #         description: 'description',
    #         parameters: {
    #           'key' => 'value'
    #         },
    #         targets: {
    #           'key' => 'value'
    #         },
    #         start_after: [
    #           'member'
    #         ]
    #       }
    #     },
    #     role_arn: 'roleArn',
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: 'logGroupArn' # required
    #       },
    #       s3_configuration: {
    #         bucket_name: 'bucketName', # required
    #         prefix: 'prefix'
    #       },
    #       log_schema_version: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateExperimentTemplateOutput
    #   resp.data.experiment_template #=> Types::ExperimentTemplate
    #   resp.data.experiment_template.id #=> String
    #   resp.data.experiment_template.description #=> String
    #   resp.data.experiment_template.targets #=> Hash<String, ExperimentTemplateTarget>
    #   resp.data.experiment_template.targets['key'] #=> Types::ExperimentTemplateTarget
    #   resp.data.experiment_template.targets['key'].resource_type #=> String
    #   resp.data.experiment_template.targets['key'].resource_arns #=> Array<String>
    #   resp.data.experiment_template.targets['key'].resource_arns[0] #=> String
    #   resp.data.experiment_template.targets['key'].resource_tags #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].resource_tags['key'] #=> String
    #   resp.data.experiment_template.targets['key'].filters #=> Array<ExperimentTemplateTargetFilter>
    #   resp.data.experiment_template.targets['key'].filters[0] #=> Types::ExperimentTemplateTargetFilter
    #   resp.data.experiment_template.targets['key'].filters[0].path #=> String
    #   resp.data.experiment_template.targets['key'].filters[0].values #=> Array<String>
    #   resp.data.experiment_template.targets['key'].filters[0].values[0] #=> String
    #   resp.data.experiment_template.targets['key'].selection_mode #=> String
    #   resp.data.experiment_template.targets['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.targets['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions #=> Hash<String, ExperimentTemplateAction>
    #   resp.data.experiment_template.actions['key'] #=> Types::ExperimentTemplateAction
    #   resp.data.experiment_template.actions['key'].action_id #=> String
    #   resp.data.experiment_template.actions['key'].description #=> String
    #   resp.data.experiment_template.actions['key'].parameters #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].parameters['key'] #=> String
    #   resp.data.experiment_template.actions['key'].targets #=> Hash<String, String>
    #   resp.data.experiment_template.actions['key'].targets['key'] #=> String
    #   resp.data.experiment_template.actions['key'].start_after #=> Array<String>
    #   resp.data.experiment_template.actions['key'].start_after[0] #=> String
    #   resp.data.experiment_template.stop_conditions #=> Array<ExperimentTemplateStopCondition>
    #   resp.data.experiment_template.stop_conditions[0] #=> Types::ExperimentTemplateStopCondition
    #   resp.data.experiment_template.stop_conditions[0].source #=> String
    #   resp.data.experiment_template.stop_conditions[0].value #=> String
    #   resp.data.experiment_template.creation_time #=> Time
    #   resp.data.experiment_template.last_update_time #=> Time
    #   resp.data.experiment_template.role_arn #=> String
    #   resp.data.experiment_template.tags #=> Hash<String, String>
    #   resp.data.experiment_template.log_configuration #=> Types::ExperimentTemplateLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration #=> Types::ExperimentTemplateCloudWatchLogsLogConfiguration
    #   resp.data.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration #=> Types::ExperimentTemplateS3LogConfiguration
    #   resp.data.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.data.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.data.experiment_template.log_configuration.log_schema_version #=> Integer
    #
    def update_experiment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateExperimentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateExperimentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateExperimentTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateExperimentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateExperimentTemplate,
        stubs: @stubs,
        params_class: Params::UpdateExperimentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_experiment_template
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
