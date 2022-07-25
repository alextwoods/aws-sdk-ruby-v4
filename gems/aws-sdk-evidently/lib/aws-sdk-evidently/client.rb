# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Evidently
  # An API client for Evidently
  # See {#initialize} for a full list of supported configuration options
  # <p>You can use Amazon CloudWatch Evidently to safely validate new features by serving them to a specified percentage
  #       of your users while you roll out the feature. You can monitor the performance of the new feature
  #       to help you decide when to ramp up traffic to your users. This helps you
  #       reduce risk and identify unintended consequences before you fully launch the feature.</p>
  #          <p>You can also conduct A/B experiments to make feature design decisions based on evidence
  #       and data. An experiment can test as many as five variations at once. Evidently collects
  #       experiment data and analyzes it using statistical methods. It also provides clear
  #       recommendations about which variations perform better. You can test both user-facing features
  #       and backend features.</p>
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
    def initialize(config = AWS::SDK::Evidently::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This operation assigns feature variation to user sessions. For each user session, you pass
    #       in an <code>entityID</code> that represents the user. Evidently then checks the evaluation
    #       rules and assigns the variation.</p>
    #          <p>The first rules that are evaluated are the override rules. If the user's
    #         <code>entityID</code> matches an override rule, the user is served the variation specified
    #       by that rule.</p>
    #          <p>Next, if there is a launch of the feature, the user might be assigned to a variation in
    #       the launch. The chance of this depends on the percentage of users that are allocated to that
    #       launch. If the user is enrolled in the launch, the variation they are served depends on the
    #       allocation of the various feature variations used for the launch.</p>
    #          <p>If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might
    #       be assigned to a variation in the experiment. The chance of this
    #       depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment,
    #       the variation they are served depends on the allocation of the various feature variations used for the experiment. </p>
    #          <p>If the user is not assigned to a launch or experiment, they are served the default variation.</p>
    #
    # Tags: ["dataplane"]
    #
    # @param [Hash] params
    #   See {Types::BatchEvaluateFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    #
    # @option params [Array<EvaluationRequest>] :requests
    #   <p>An array of structures, where each structure assigns a feature variation to one user session.</p>
    #
    # @return [Types::BatchEvaluateFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_evaluate_feature(
    #     project: 'project', # required
    #     requests: [
    #       {
    #         feature: 'feature', # required
    #         entity_id: 'entityId', # required
    #         evaluation_context: 'evaluationContext'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchEvaluateFeatureOutput
    #   resp.data.results #=> Array<EvaluationResult>
    #   resp.data.results[0] #=> Types::EvaluationResult
    #   resp.data.results[0].project #=> String
    #   resp.data.results[0].feature #=> String
    #   resp.data.results[0].variation #=> String
    #   resp.data.results[0].value #=> Types::VariableValue, one of [BoolValue, StringValue, LongValue, DoubleValue]
    #   resp.data.results[0].value.bool_value #=> Boolean
    #   resp.data.results[0].value.string_value #=> String
    #   resp.data.results[0].value.long_value #=> Integer
    #   resp.data.results[0].value.double_value #=> Float
    #   resp.data.results[0].entity_id #=> String
    #   resp.data.results[0].reason #=> String
    #   resp.data.results[0].details #=> String
    #
    def batch_evaluate_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchEvaluateFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchEvaluateFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "dataplane.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchEvaluateFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::BatchEvaluateFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchEvaluateFeature,
        stubs: @stubs,
        params_class: Params::BatchEvaluateFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_evaluate_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Evidently <i>experiment</i>. Before you create an experiment,
    #       you must create the feature to use for the experiment.</p>
    #          <p>An experiment helps you make feature design
    #        decisions based on evidence and data. An experiment can test as
    #        many as five variations at once. Evidently collects experiment data and analyzes it by statistical methods, and provides
    #        clear recommendations about which variations perform better.</p>
    #          <p>Don't use this operation to update an existing experiment. Instead, use
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html">UpdateExperiment</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to create the new experiment in.</p>
    #
    # @option params [String] :name
    #   <p>A name for the new experiment.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the experiment.</p>
    #
    # @option params [Array<TreatmentConfig>] :treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    #
    # @option params [Array<MetricGoalConfig>] :metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #          to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #          and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #          the experiment name as the <code>randomizationSalt</code>.</p>
    #
    # @option params [Integer] :sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 10,000 to allocate 10% of the available audience.</p>
    #
    # @option params [OnlineAbConfig] :online_ab_config
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. tThe "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the experiment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with an experiment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @return [Types::CreateExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experiment(
    #     project: 'project', # required
    #     name: 'name', # required
    #     description: 'description',
    #     treatments: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         feature: 'feature', # required
    #         variation: 'variation' # required
    #       }
    #     ], # required
    #     metric_goals: [
    #       {
    #         metric_definition: {
    #           name: 'name', # required
    #           entity_id_key: 'entityIdKey', # required
    #           value_key: 'valueKey', # required
    #           event_pattern: 'eventPattern',
    #           unit_label: 'unitLabel'
    #         }, # required
    #         desired_change: 'INCREASE' # accepts ["INCREASE", "DECREASE"]
    #       }
    #     ], # required
    #     randomization_salt: 'randomizationSalt',
    #     sampling_rate: 1,
    #     online_ab_config: {
    #       control_treatment_name: 'controlTreatmentName',
    #       treatment_weights: {
    #         'key' => 1
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.arn #=> String
    #   resp.data.experiment.name #=> String
    #   resp.data.experiment.project #=> String
    #   resp.data.experiment.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.experiment.status_reason #=> String
    #   resp.data.experiment.description #=> String
    #   resp.data.experiment.created_time #=> Time
    #   resp.data.experiment.last_updated_time #=> Time
    #   resp.data.experiment.schedule #=> Types::ExperimentSchedule
    #   resp.data.experiment.schedule.analysis_complete_time #=> Time
    #   resp.data.experiment.execution #=> Types::ExperimentExecution
    #   resp.data.experiment.execution.started_time #=> Time
    #   resp.data.experiment.execution.ended_time #=> Time
    #   resp.data.experiment.treatments #=> Array<Treatment>
    #   resp.data.experiment.treatments[0] #=> Types::Treatment
    #   resp.data.experiment.treatments[0].name #=> String
    #   resp.data.experiment.treatments[0].description #=> String
    #   resp.data.experiment.treatments[0].feature_variations #=> Hash<String, String>
    #   resp.data.experiment.treatments[0].feature_variations['key'] #=> String
    #   resp.data.experiment.metric_goals #=> Array<MetricGoal>
    #   resp.data.experiment.metric_goals[0] #=> Types::MetricGoal
    #   resp.data.experiment.metric_goals[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.data.experiment.metric_goals[0].desired_change #=> String, one of ["INCREASE", "DECREASE"]
    #   resp.data.experiment.randomization_salt #=> String
    #   resp.data.experiment.sampling_rate #=> Integer
    #   resp.data.experiment.type #=> String, one of ["aws.evidently.onlineab"]
    #   resp.data.experiment.online_ab_definition #=> Types::OnlineAbDefinition
    #   resp.data.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.data.experiment.online_ab_definition.treatment_weights #=> Hash<String, Integer>
    #   resp.data.experiment.online_ab_definition.treatment_weights['key'] #=> Integer
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.tags['key'] #=> String
    #
    def create_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExperiment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExperiment,
        stubs: @stubs,
        params_class: Params::CreateExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Evidently <i>feature</i> that you want to launch or test. You can define up to
    #        five variations of a feature, and use these variations in your launches and experiments. A feature must be created in
    #        a project. For information about creating a project, see <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html">CreateProject</a>.</p>
    #          <p>Don't use this operation to update an existing feature. Instead, use
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html">UpdateFeature</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that is to contain the new feature.</p>
    #
    # @option params [String] :name
    #   <p>The name for the new feature.</p>
    #
    # @option params [String] :evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any
    #         ongoing launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default
    #         variation to all users instead.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the feature.</p>
    #
    # @option params [Array<VariationConfig>] :variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    #
    # @option params [String] :default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #          the <code>variations</code> structure is used as the default variation.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the feature.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a feature.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @option params [Hash<String, String>] :entity_overrides
    #   <p>Specify users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #
    # @return [Types::CreateFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_feature(
    #     project: 'project', # required
    #     name: 'name', # required
    #     evaluation_strategy: 'ALL_RULES', # accepts ["ALL_RULES", "DEFAULT_VARIATION"]
    #     description: 'description',
    #     variations: [
    #       {
    #         name: 'name', # required
    #         value: {
    #           # One of:
    #           bool_value: false,
    #           string_value: 'stringValue',
    #           long_value: 1,
    #           double_value: 1.0
    #         } # required
    #       }
    #     ], # required
    #     default_variation: 'defaultVariation',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     entity_overrides: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFeatureOutput
    #   resp.data.feature #=> Types::Feature
    #   resp.data.feature.arn #=> String
    #   resp.data.feature.name #=> String
    #   resp.data.feature.project #=> String
    #   resp.data.feature.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.feature.created_time #=> Time
    #   resp.data.feature.last_updated_time #=> Time
    #   resp.data.feature.description #=> String
    #   resp.data.feature.evaluation_strategy #=> String, one of ["ALL_RULES", "DEFAULT_VARIATION"]
    #   resp.data.feature.value_type #=> String, one of ["STRING", "LONG", "DOUBLE", "BOOLEAN"]
    #   resp.data.feature.variations #=> Array<Variation>
    #   resp.data.feature.variations[0] #=> Types::Variation
    #   resp.data.feature.variations[0].name #=> String
    #   resp.data.feature.variations[0].value #=> Types::VariableValue, one of [BoolValue, StringValue, LongValue, DoubleValue]
    #   resp.data.feature.variations[0].value.bool_value #=> Boolean
    #   resp.data.feature.variations[0].value.string_value #=> String
    #   resp.data.feature.variations[0].value.long_value #=> Integer
    #   resp.data.feature.variations[0].value.double_value #=> Float
    #   resp.data.feature.default_variation #=> String
    #   resp.data.feature.evaluation_rules #=> Array<EvaluationRule>
    #   resp.data.feature.evaluation_rules[0] #=> Types::EvaluationRule
    #   resp.data.feature.evaluation_rules[0].name #=> String
    #   resp.data.feature.evaluation_rules[0].type #=> String
    #   resp.data.feature.tags #=> Hash<String, String>
    #   resp.data.feature.tags['key'] #=> String
    #   resp.data.feature.entity_overrides #=> Hash<String, String>
    #   resp.data.feature.entity_overrides['key'] #=> String
    #
    def create_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFeature,
        stubs: @stubs,
        params_class: Params::CreateFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <i>launch</i> of a given feature. Before you create a launch, you
    #       must create the feature to use for the launch.</p>
    #          <p>You can use a launch to safely validate new features by serving them to a specified
    #       percentage of your users while you roll out the feature. You can monitor the performance of
    #       the new feature to help you decide when to ramp up traffic to more users. This helps you
    #       reduce risk and identify unintended consequences before you fully launch the feature.</p>
    #          <p>Don't use this operation to update an existing launch. Instead, use
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html">UpdateLaunch</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to create the launch in.</p>
    #
    # @option params [String] :name
    #   <p>The name for the new launch.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the launch.</p>
    #
    # @option params [ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #
    # @option params [Array<MetricMonitorConfig>] :metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor
    #          the launch performance.</p>
    #
    # @option params [Array<LaunchGroupConfig>] :groups
    #   <p>An array of structures that contains the feature and variations that are to be used for the launch.</p>
    #
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #           to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #           and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationsSalt</code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the launch.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a launch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @return [Types::CreateLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch(
    #     project: 'project', # required
    #     name: 'name', # required
    #     description: 'description',
    #     scheduled_splits_config: {
    #       steps: [
    #         {
    #           start_time: Time.now, # required
    #           group_weights: {
    #             'key' => 1
    #           } # required
    #         }
    #       ] # required
    #     },
    #     metric_monitors: [
    #       {
    #         metric_definition: {
    #           name: 'name', # required
    #           entity_id_key: 'entityIdKey', # required
    #           value_key: 'valueKey', # required
    #           event_pattern: 'eventPattern',
    #           unit_label: 'unitLabel'
    #         } # required
    #       }
    #     ],
    #     groups: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         feature: 'feature', # required
    #         variation: 'variation' # required
    #       }
    #     ], # required
    #     randomization_salt: 'randomizationSalt',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLaunchOutput
    #   resp.data.launch #=> Types::Launch
    #   resp.data.launch.arn #=> String
    #   resp.data.launch.name #=> String
    #   resp.data.launch.project #=> String
    #   resp.data.launch.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.launch.status_reason #=> String
    #   resp.data.launch.description #=> String
    #   resp.data.launch.created_time #=> Time
    #   resp.data.launch.last_updated_time #=> Time
    #   resp.data.launch.execution #=> Types::LaunchExecution
    #   resp.data.launch.execution.started_time #=> Time
    #   resp.data.launch.execution.ended_time #=> Time
    #   resp.data.launch.groups #=> Array<LaunchGroup>
    #   resp.data.launch.groups[0] #=> Types::LaunchGroup
    #   resp.data.launch.groups[0].name #=> String
    #   resp.data.launch.groups[0].description #=> String
    #   resp.data.launch.groups[0].feature_variations #=> Hash<String, String>
    #   resp.data.launch.groups[0].feature_variations['key'] #=> String
    #   resp.data.launch.metric_monitors #=> Array<MetricMonitor>
    #   resp.data.launch.metric_monitors[0] #=> Types::MetricMonitor
    #   resp.data.launch.metric_monitors[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.data.launch.randomization_salt #=> String
    #   resp.data.launch.type #=> String, one of ["aws.evidently.splits"]
    #   resp.data.launch.scheduled_splits_definition #=> Types::ScheduledSplitsLaunchDefinition
    #   resp.data.launch.scheduled_splits_definition.steps #=> Array<ScheduledSplit>
    #   resp.data.launch.scheduled_splits_definition.steps[0] #=> Types::ScheduledSplit
    #   resp.data.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash<String, Integer>
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights['key'] #=> Integer
    #   resp.data.launch.tags #=> Hash<String, String>
    #   resp.data.launch.tags['key'] #=> String
    #
    def create_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLaunch,
        stubs: @stubs,
        params_class: Params::CreateLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a project, which is the logical object in Evidently that can contain features, launches, and
    #       experiments. Use projects to group similar features together.</p>
    #          <p>To update an existing project, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html">UpdateProject</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name for the project.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the project.</p>
    #
    # @option params [ProjectDataDeliveryConfig] :data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #         evaluation events for longer term storage, if you choose to do so. If you choose
    #         not to store these events, Evidently deletes them after using them to produce metrics and other experiment
    #         results that you can view.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the project.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a project.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     name: 'name', # required
    #     description: 'description',
    #     data_delivery: {
    #       s3_destination: {
    #         bucket: 'bucket',
    #         prefix: 'prefix'
    #       },
    #       cloud_watch_logs: {
    #         log_group: 'logGroup'
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.project.description #=> String
    #   resp.data.project.created_time #=> Time
    #   resp.data.project.last_updated_time #=> Time
    #   resp.data.project.feature_count #=> Integer
    #   resp.data.project.launch_count #=> Integer
    #   resp.data.project.active_launch_count #=> Integer
    #   resp.data.project.experiment_count #=> Integer
    #   resp.data.project.active_experiment_count #=> Integer
    #   resp.data.project.data_delivery #=> Types::ProjectDataDelivery
    #   resp.data.project.data_delivery.s3_destination #=> Types::S3Destination
    #   resp.data.project.data_delivery.s3_destination.bucket #=> String
    #   resp.data.project.data_delivery.s3_destination.prefix #=> String
    #   resp.data.project.data_delivery.cloud_watch_logs #=> Types::CloudWatchLogsDestination
    #   resp.data.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.project.tags #=> Hash<String, String>
    #   resp.data.project.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Deletes an Evidently experiment. The feature used for the experiment is not deleted.</p>
    #          <p>To stop an experiment without deleting it, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html">StopExperiment</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to delete.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment to delete.</p>
    #
    # @return [Types::DeleteExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experiment(
    #     project: 'project', # required
    #     experiment: 'experiment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExperimentOutput
    #
    def delete_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExperiment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceUnavailableException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExperiment,
        stubs: @stubs,
        params_class: Params::DeleteExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Evidently feature.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature to delete.</p>
    #
    # @option params [String] :feature
    #   <p>The name of the feature to delete.</p>
    #
    # @return [Types::DeleteFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_feature(
    #     project: 'project', # required
    #     feature: 'feature' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFeatureOutput
    #
    def delete_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFeature,
        stubs: @stubs,
        params_class: Params::DeleteFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Evidently launch. The feature used for the launch is not deleted.</p>
    #          <p>To stop a launch without deleting it, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html">StopLaunch</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch to delete.</p>
    #
    # @option params [String] :launch
    #   <p>The name of the launch to delete.</p>
    #
    # @return [Types::DeleteLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch(
    #     project: 'project', # required
    #     launch: 'launch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLaunchOutput
    #
    def delete_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLaunch,
        stubs: @stubs,
        params_class: Params::DeleteLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Evidently project. Before you can delete a project, you must delete all the
    #       features that the project contains. To delete a feature, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html">DeleteFeature</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to delete.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project: 'project' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>This operation assigns a feature variation to one given user session. You pass in an
    #         <code>entityID</code> that represents the user. Evidently then checks the evaluation rules
    #       and assigns the variation.</p>
    #          <p>The first rules that are evaluated are the override rules. If the user's
    #         <code>entityID</code> matches an override rule, the user is served the variation specified
    #       by that rule.</p>
    #          <p>Next, if there is a launch of the feature, the user might be assigned to a variation in
    #       the launch. The chance of this depends on the percentage of users that are allocated to that
    #       launch. If the user is enrolled in the launch, the variation they are served depends on the
    #       allocation of the various feature variations used for the launch.</p>
    #          <p>If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might
    #       be assigned to a variation in the experiment. The chance of this
    #       depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment,
    #       the variation they are served depends on the allocation of the various feature variations used for the experiment. </p>
    #          <p>If the user is not assigned to a launch or experiment, they are served the default variation.</p>
    #
    # Tags: ["dataplane"]
    #
    # @param [Hash] params
    #   See {Types::EvaluateFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains this feature.</p>
    #
    # @option params [String] :feature
    #   <p>The name of the feature being evaluated.</p>
    #
    # @option params [String] :entity_id
    #   <p>An internal ID that represents a unique user of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    #
    # @option params [String] :evaluation_context
    #   <p>A JSON block of attributes that you can optionally pass in. This JSON block is included
    #         in the evaluation events sent to Evidently from the user session. </p>
    #
    # @return [Types::EvaluateFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_feature(
    #     project: 'project', # required
    #     feature: 'feature', # required
    #     entity_id: 'entityId', # required
    #     evaluation_context: 'evaluationContext'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EvaluateFeatureOutput
    #   resp.data.variation #=> String
    #   resp.data.value #=> Types::VariableValue, one of [BoolValue, StringValue, LongValue, DoubleValue]
    #   resp.data.value.bool_value #=> Boolean
    #   resp.data.value.string_value #=> String
    #   resp.data.value.long_value #=> Integer
    #   resp.data.value.double_value #=> Float
    #   resp.data.reason #=> String
    #   resp.data.details #=> String
    #
    def evaluate_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EvaluateFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EvaluateFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "dataplane.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EvaluateFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::EvaluateFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EvaluateFeature,
        stubs: @stubs,
        params_class: Params::EvaluateFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :evaluate_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details about one experiment. You must already know the
    #       experiment name. To retrieve a list of experiments in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html">ListExperiments</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment that you want to see the details of.</p>
    #
    # @return [Types::GetExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment(
    #     project: 'project', # required
    #     experiment: 'experiment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.arn #=> String
    #   resp.data.experiment.name #=> String
    #   resp.data.experiment.project #=> String
    #   resp.data.experiment.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.experiment.status_reason #=> String
    #   resp.data.experiment.description #=> String
    #   resp.data.experiment.created_time #=> Time
    #   resp.data.experiment.last_updated_time #=> Time
    #   resp.data.experiment.schedule #=> Types::ExperimentSchedule
    #   resp.data.experiment.schedule.analysis_complete_time #=> Time
    #   resp.data.experiment.execution #=> Types::ExperimentExecution
    #   resp.data.experiment.execution.started_time #=> Time
    #   resp.data.experiment.execution.ended_time #=> Time
    #   resp.data.experiment.treatments #=> Array<Treatment>
    #   resp.data.experiment.treatments[0] #=> Types::Treatment
    #   resp.data.experiment.treatments[0].name #=> String
    #   resp.data.experiment.treatments[0].description #=> String
    #   resp.data.experiment.treatments[0].feature_variations #=> Hash<String, String>
    #   resp.data.experiment.treatments[0].feature_variations['key'] #=> String
    #   resp.data.experiment.metric_goals #=> Array<MetricGoal>
    #   resp.data.experiment.metric_goals[0] #=> Types::MetricGoal
    #   resp.data.experiment.metric_goals[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.data.experiment.metric_goals[0].desired_change #=> String, one of ["INCREASE", "DECREASE"]
    #   resp.data.experiment.randomization_salt #=> String
    #   resp.data.experiment.sampling_rate #=> Integer
    #   resp.data.experiment.type #=> String, one of ["aws.evidently.onlineab"]
    #   resp.data.experiment.online_ab_definition #=> Types::OnlineAbDefinition
    #   resp.data.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.data.experiment.online_ab_definition.treatment_weights #=> Hash<String, Integer>
    #   resp.data.experiment.online_ab_definition.treatment_weights['key'] #=> Integer
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Retrieves the results of a running or completed experiment. No results are available until
    #        there have been 100 events for each variation and at least 10 minutes have passed since the start of the experiment.</p>
    #          <p>Experiment
    #        results are available up to 63 days after the start of the experiment. They are not available after that because
    #        of CloudWatch data retention policies.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExperimentResultsInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment that you want to see the results of.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment to retrieve the results of.</p>
    #
    # @option params [Time] :start_time
    #   <p>The date and time that the experiment started.</p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time that the experiment ended, if it is completed. This must be no longer than 30 days
    #         after the experiment start time.</p>
    #
    # @option params [Array<String>] :metric_names
    #   <p>The names of the experiment metrics that you want to see the results of.</p>
    #
    # @option params [Array<String>] :treatment_names
    #   <p>The names of the experiment treatments that you want to see the results for.</p>
    #
    # @option params [String] :base_stat
    #   <p>The statistic used to calculate experiment results. Currently the only valid value is <code>mean</code>,
    #         which uses the mean of the collected values as the statistic.</p>
    #
    # @option params [Array<String>] :result_stats
    #   <p>The statistics that you want to see in the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PValue</code> specifies to use p-values for the results. A p-value is used in hypothesis
    #             testing to measure how often you are willing to make a mistake in rejecting the null
    #             hypothesis. A general practice is to reject the null hypothesis and declare that the
    #             results are statistically significant when the p-value is less than 0.05.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfidenceInterval</code> specifies a confidence interval for the results. The
    #             confidence interval represents the range of values for the chosen metric that is likely to
    #             contain the true difference between the <code>baseStat</code> of a variation and the
    #             baseline. Evidently returns the 95% confidence interval. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TreatmentEffect</code> is the difference in the statistic specified by the
    #               <code>baseStat</code> parameter between each variation and the default variation. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BaseStat</code> returns the statistical values collected for the metric for each
    #             variation. The statistic uses the same statistic specified in the <code>baseStat</code>
    #             parameter. Therefore, if <code>baseStat</code> is <code>mean</code>, this returns the mean
    #             of the values collected for each variation.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :report_names
    #   <p>The names of the report types that you want to see. Currently, <code>BayesianInference</code>
    #          is the only valid value.</p>
    #
    # @option params [Integer] :period
    #   <p>In seconds, the amount of time to aggregate results together. </p>
    #
    # @return [Types::GetExperimentResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment_results(
    #     project: 'project', # required
    #     experiment: 'experiment', # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     metric_names: [
    #       'member'
    #     ], # required
    #     treatment_names: [
    #       'member'
    #     ], # required
    #     base_stat: 'Mean', # accepts ["Mean"]
    #     result_stats: [
    #       'BaseStat' # accepts ["BaseStat", "TreatmentEffect", "ConfidenceInterval", "PValue"]
    #     ],
    #     report_names: [
    #       'BayesianInference' # accepts ["BayesianInference"]
    #     ],
    #     period: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExperimentResultsOutput
    #   resp.data.results_data #=> Array<ExperimentResultsData>
    #   resp.data.results_data[0] #=> Types::ExperimentResultsData
    #   resp.data.results_data[0].metric_name #=> String
    #   resp.data.results_data[0].treatment_name #=> String
    #   resp.data.results_data[0].result_stat #=> String, one of ["Mean", "TreatmentEffect", "ConfidenceIntervalUpperBound", "ConfidenceIntervalLowerBound", "PValue"]
    #   resp.data.results_data[0].values #=> Array<Float>
    #   resp.data.results_data[0].values[0] #=> Float
    #   resp.data.reports #=> Array<ExperimentReport>
    #   resp.data.reports[0] #=> Types::ExperimentReport
    #   resp.data.reports[0].metric_name #=> String
    #   resp.data.reports[0].treatment_name #=> String
    #   resp.data.reports[0].report_name #=> String, one of ["BayesianInference"]
    #   resp.data.reports[0].content #=> String
    #   resp.data.timestamps #=> Array<Time>
    #   resp.data.timestamps[0] #=> Time
    #   resp.data.details #=> String
    #
    def get_experiment_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExperimentResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExperimentResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExperimentResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetExperimentResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExperimentResults,
        stubs: @stubs,
        params_class: Params::GetExperimentResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_experiment_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details about one feature. You must already know the feature name. To
    #       retrieve a list of features in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html">ListFeatures</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #
    # @option params [String] :feature
    #   <p>The name of the feature that you want to retrieve information for.</p>
    #
    # @return [Types::GetFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feature(
    #     project: 'project', # required
    #     feature: 'feature' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFeatureOutput
    #   resp.data.feature #=> Types::Feature
    #   resp.data.feature.arn #=> String
    #   resp.data.feature.name #=> String
    #   resp.data.feature.project #=> String
    #   resp.data.feature.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.feature.created_time #=> Time
    #   resp.data.feature.last_updated_time #=> Time
    #   resp.data.feature.description #=> String
    #   resp.data.feature.evaluation_strategy #=> String, one of ["ALL_RULES", "DEFAULT_VARIATION"]
    #   resp.data.feature.value_type #=> String, one of ["STRING", "LONG", "DOUBLE", "BOOLEAN"]
    #   resp.data.feature.variations #=> Array<Variation>
    #   resp.data.feature.variations[0] #=> Types::Variation
    #   resp.data.feature.variations[0].name #=> String
    #   resp.data.feature.variations[0].value #=> Types::VariableValue, one of [BoolValue, StringValue, LongValue, DoubleValue]
    #   resp.data.feature.variations[0].value.bool_value #=> Boolean
    #   resp.data.feature.variations[0].value.string_value #=> String
    #   resp.data.feature.variations[0].value.long_value #=> Integer
    #   resp.data.feature.variations[0].value.double_value #=> Float
    #   resp.data.feature.default_variation #=> String
    #   resp.data.feature.evaluation_rules #=> Array<EvaluationRule>
    #   resp.data.feature.evaluation_rules[0] #=> Types::EvaluationRule
    #   resp.data.feature.evaluation_rules[0].name #=> String
    #   resp.data.feature.evaluation_rules[0].type #=> String
    #   resp.data.feature.tags #=> Hash<String, String>
    #   resp.data.feature.tags['key'] #=> String
    #   resp.data.feature.entity_overrides #=> Hash<String, String>
    #   resp.data.feature.entity_overrides['key'] #=> String
    #
    def get_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFeature,
        stubs: @stubs,
        params_class: Params::GetFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details about one launch. You must already know the
    #        launch name. To retrieve a list of launches in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html">ListLaunches</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch.</p>
    #
    # @option params [String] :launch
    #   <p>The name of the launch that you want to see the details of.</p>
    #
    # @return [Types::GetLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch(
    #     project: 'project', # required
    #     launch: 'launch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchOutput
    #   resp.data.launch #=> Types::Launch
    #   resp.data.launch.arn #=> String
    #   resp.data.launch.name #=> String
    #   resp.data.launch.project #=> String
    #   resp.data.launch.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.launch.status_reason #=> String
    #   resp.data.launch.description #=> String
    #   resp.data.launch.created_time #=> Time
    #   resp.data.launch.last_updated_time #=> Time
    #   resp.data.launch.execution #=> Types::LaunchExecution
    #   resp.data.launch.execution.started_time #=> Time
    #   resp.data.launch.execution.ended_time #=> Time
    #   resp.data.launch.groups #=> Array<LaunchGroup>
    #   resp.data.launch.groups[0] #=> Types::LaunchGroup
    #   resp.data.launch.groups[0].name #=> String
    #   resp.data.launch.groups[0].description #=> String
    #   resp.data.launch.groups[0].feature_variations #=> Hash<String, String>
    #   resp.data.launch.groups[0].feature_variations['key'] #=> String
    #   resp.data.launch.metric_monitors #=> Array<MetricMonitor>
    #   resp.data.launch.metric_monitors[0] #=> Types::MetricMonitor
    #   resp.data.launch.metric_monitors[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.data.launch.randomization_salt #=> String
    #   resp.data.launch.type #=> String, one of ["aws.evidently.splits"]
    #   resp.data.launch.scheduled_splits_definition #=> Types::ScheduledSplitsLaunchDefinition
    #   resp.data.launch.scheduled_splits_definition.steps #=> Array<ScheduledSplit>
    #   resp.data.launch.scheduled_splits_definition.steps[0] #=> Types::ScheduledSplit
    #   resp.data.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash<String, Integer>
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights['key'] #=> Integer
    #   resp.data.launch.tags #=> Hash<String, String>
    #   resp.data.launch.tags['key'] #=> String
    #
    def get_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunch,
        stubs: @stubs,
        params_class: Params::GetLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details about one launch. You must already know the
    #        project name. To retrieve a list of projects in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html">ListProjects</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProjectInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to see the details of.</p>
    #
    # @return [Types::GetProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project(
    #     project: 'project' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.project.description #=> String
    #   resp.data.project.created_time #=> Time
    #   resp.data.project.last_updated_time #=> Time
    #   resp.data.project.feature_count #=> Integer
    #   resp.data.project.launch_count #=> Integer
    #   resp.data.project.active_launch_count #=> Integer
    #   resp.data.project.experiment_count #=> Integer
    #   resp.data.project.active_experiment_count #=> Integer
    #   resp.data.project.data_delivery #=> Types::ProjectDataDelivery
    #   resp.data.project.data_delivery.s3_destination #=> Types::S3Destination
    #   resp.data.project.data_delivery.s3_destination.bucket #=> String
    #   resp.data.project.data_delivery.s3_destination.prefix #=> String
    #   resp.data.project.data_delivery.cloud_watch_logs #=> Types::CloudWatchLogsDestination
    #   resp.data.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.project.tags #=> Hash<String, String>
    #   resp.data.project.tags['key'] #=> String
    #
    def get_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProject,
        stubs: @stubs,
        params_class: Params::GetProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration details about all the experiments in the specified project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExperimentsInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the experiment list from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListExperiments</code> operation.</p>
    #
    # @option params [String] :status
    #   <p>Use this optional parameter to limit the returned results to only the experiments with the status that you specify here.</p>
    #
    # @return [Types::ListExperimentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiments(
    #     project: 'project', # required
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     status: 'CREATED' # accepts ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExperimentsOutput
    #   resp.data.experiments #=> Array<Experiment>
    #   resp.data.experiments[0] #=> Types::Experiment
    #   resp.data.experiments[0].arn #=> String
    #   resp.data.experiments[0].name #=> String
    #   resp.data.experiments[0].project #=> String
    #   resp.data.experiments[0].status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.experiments[0].status_reason #=> String
    #   resp.data.experiments[0].description #=> String
    #   resp.data.experiments[0].created_time #=> Time
    #   resp.data.experiments[0].last_updated_time #=> Time
    #   resp.data.experiments[0].schedule #=> Types::ExperimentSchedule
    #   resp.data.experiments[0].schedule.analysis_complete_time #=> Time
    #   resp.data.experiments[0].execution #=> Types::ExperimentExecution
    #   resp.data.experiments[0].execution.started_time #=> Time
    #   resp.data.experiments[0].execution.ended_time #=> Time
    #   resp.data.experiments[0].treatments #=> Array<Treatment>
    #   resp.data.experiments[0].treatments[0] #=> Types::Treatment
    #   resp.data.experiments[0].treatments[0].name #=> String
    #   resp.data.experiments[0].treatments[0].description #=> String
    #   resp.data.experiments[0].treatments[0].feature_variations #=> Hash<String, String>
    #   resp.data.experiments[0].treatments[0].feature_variations['key'] #=> String
    #   resp.data.experiments[0].metric_goals #=> Array<MetricGoal>
    #   resp.data.experiments[0].metric_goals[0] #=> Types::MetricGoal
    #   resp.data.experiments[0].metric_goals[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.experiments[0].metric_goals[0].metric_definition.name #=> String
    #   resp.data.experiments[0].metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.data.experiments[0].metric_goals[0].metric_definition.value_key #=> String
    #   resp.data.experiments[0].metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.data.experiments[0].metric_goals[0].metric_definition.unit_label #=> String
    #   resp.data.experiments[0].metric_goals[0].desired_change #=> String, one of ["INCREASE", "DECREASE"]
    #   resp.data.experiments[0].randomization_salt #=> String
    #   resp.data.experiments[0].sampling_rate #=> Integer
    #   resp.data.experiments[0].type #=> String, one of ["aws.evidently.onlineab"]
    #   resp.data.experiments[0].online_ab_definition #=> Types::OnlineAbDefinition
    #   resp.data.experiments[0].online_ab_definition.control_treatment_name #=> String
    #   resp.data.experiments[0].online_ab_definition.treatment_weights #=> Hash<String, Integer>
    #   resp.data.experiments[0].online_ab_definition.treatment_weights['key'] #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Returns configuration details about all the features in the specified project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFeaturesInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the feature list from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListFeatures</code> operation.</p>
    #
    # @return [Types::ListFeaturesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_features(
    #     project: 'project', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFeaturesOutput
    #   resp.data.features #=> Array<FeatureSummary>
    #   resp.data.features[0] #=> Types::FeatureSummary
    #   resp.data.features[0].arn #=> String
    #   resp.data.features[0].name #=> String
    #   resp.data.features[0].project #=> String
    #   resp.data.features[0].status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.features[0].created_time #=> Time
    #   resp.data.features[0].last_updated_time #=> Time
    #   resp.data.features[0].evaluation_strategy #=> String, one of ["ALL_RULES", "DEFAULT_VARIATION"]
    #   resp.data.features[0].evaluation_rules #=> Array<EvaluationRule>
    #   resp.data.features[0].evaluation_rules[0] #=> Types::EvaluationRule
    #   resp.data.features[0].evaluation_rules[0].name #=> String
    #   resp.data.features[0].evaluation_rules[0].type #=> String
    #   resp.data.features[0].default_variation #=> String
    #   resp.data.features[0].tags #=> Hash<String, String>
    #   resp.data.features[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_features(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFeaturesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFeaturesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFeatures
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListFeatures
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFeatures,
        stubs: @stubs,
        params_class: Params::ListFeaturesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_features
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration details about all the launches in the specified project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLaunchesInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the launch list from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListLaunches</code> operation.</p>
    #
    # @option params [String] :status
    #   <p>Use this optional parameter to limit the returned results to only the launches with the status that you specify here.</p>
    #
    # @return [Types::ListLaunchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launches(
    #     project: 'project', # required
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     status: 'CREATED' # accepts ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLaunchesOutput
    #   resp.data.launches #=> Array<Launch>
    #   resp.data.launches[0] #=> Types::Launch
    #   resp.data.launches[0].arn #=> String
    #   resp.data.launches[0].name #=> String
    #   resp.data.launches[0].project #=> String
    #   resp.data.launches[0].status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.launches[0].status_reason #=> String
    #   resp.data.launches[0].description #=> String
    #   resp.data.launches[0].created_time #=> Time
    #   resp.data.launches[0].last_updated_time #=> Time
    #   resp.data.launches[0].execution #=> Types::LaunchExecution
    #   resp.data.launches[0].execution.started_time #=> Time
    #   resp.data.launches[0].execution.ended_time #=> Time
    #   resp.data.launches[0].groups #=> Array<LaunchGroup>
    #   resp.data.launches[0].groups[0] #=> Types::LaunchGroup
    #   resp.data.launches[0].groups[0].name #=> String
    #   resp.data.launches[0].groups[0].description #=> String
    #   resp.data.launches[0].groups[0].feature_variations #=> Hash<String, String>
    #   resp.data.launches[0].groups[0].feature_variations['key'] #=> String
    #   resp.data.launches[0].metric_monitors #=> Array<MetricMonitor>
    #   resp.data.launches[0].metric_monitors[0] #=> Types::MetricMonitor
    #   resp.data.launches[0].metric_monitors[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.launches[0].metric_monitors[0].metric_definition.name #=> String
    #   resp.data.launches[0].metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.data.launches[0].metric_monitors[0].metric_definition.value_key #=> String
    #   resp.data.launches[0].metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.data.launches[0].metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.data.launches[0].randomization_salt #=> String
    #   resp.data.launches[0].type #=> String, one of ["aws.evidently.splits"]
    #   resp.data.launches[0].scheduled_splits_definition #=> Types::ScheduledSplitsLaunchDefinition
    #   resp.data.launches[0].scheduled_splits_definition.steps #=> Array<ScheduledSplit>
    #   resp.data.launches[0].scheduled_splits_definition.steps[0] #=> Types::ScheduledSplit
    #   resp.data.launches[0].scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.data.launches[0].scheduled_splits_definition.steps[0].group_weights #=> Hash<String, Integer>
    #   resp.data.launches[0].scheduled_splits_definition.steps[0].group_weights['key'] #=> Integer
    #   resp.data.launches[0].tags #=> Hash<String, String>
    #   resp.data.launches[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_launches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLaunchesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLaunchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLaunches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListLaunches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLaunches,
        stubs: @stubs,
        params_class: Params::ListLaunchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_launches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration details about all the projects in the current Region in your
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListProjects</code> operation.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<ProjectSummary>
    #   resp.data.projects[0] #=> Types::ProjectSummary
    #   resp.data.projects[0].arn #=> String
    #   resp.data.projects[0].name #=> String
    #   resp.data.projects[0].status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.projects[0].description #=> String
    #   resp.data.projects[0].created_time #=> Time
    #   resp.data.projects[0].last_updated_time #=> Time
    #   resp.data.projects[0].feature_count #=> Integer
    #   resp.data.projects[0].launch_count #=> Integer
    #   resp.data.projects[0].active_launch_count #=> Integer
    #   resp.data.projects[0].experiment_count #=> Integer
    #   resp.data.projects[0].active_experiment_count #=> Integer
    #   resp.data.projects[0].tags #=> Hash<String, String>
    #   resp.data.projects[0].tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Displays the tags associated with an Evidently resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Sends performance events to Evidently. These events can be used to evaluate a launch or
    #       an experiment.</p>
    #
    # Tags: ["dataplane"]
    #
    # @param [Hash] params
    #   See {Types::PutProjectEventsInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to write the events to.</p>
    #
    # @option params [Array<Event>] :events
    #   <p>An array of event structures that contain the performance data that is being sent to
    #         Evidently.</p>
    #
    # @return [Types::PutProjectEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_project_events(
    #     project: 'project', # required
    #     events: [
    #       {
    #         timestamp: Time.now, # required
    #         type: 'aws.evidently.evaluation', # required - accepts ["aws.evidently.evaluation", "aws.evidently.custom"]
    #         data: 'data' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutProjectEventsOutput
    #   resp.data.failed_event_count #=> Integer
    #   resp.data.event_results #=> Array<PutProjectEventsResultEntry>
    #   resp.data.event_results[0] #=> Types::PutProjectEventsResultEntry
    #   resp.data.event_results[0].event_id #=> String
    #   resp.data.event_results[0].error_code #=> String
    #   resp.data.event_results[0].error_message #=> String
    #
    # @example Post evaluation Event for Project
    #
    #   #
    #   #
    #   resp = client.put_project_events({
    #     project: "ExampleProject",
    #     events: [
    #       {
    #         timestamp: Time.at(1627580583),
    #         type: "aws.evidently.evaluation",
    #         data: "{\"feature\":\"ExampleFeature\",\"entityId\":\"username@email.com\",\"entityAttributes\":{\"browser\":{\"s\":\"Chrome\"}},\"variation\":\"variationA\",\"type\":\"EXPERIMENT_RULE_MATCH\",\"details\":{\"experiment\":\"Jan2020_landing_page_banner\",\"treatment\":\"control\",\"salt\":\"ADJNC1237ASDNU\"}}"
    #       }
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     failed_event_count: 0,
    #     event_results: [
    #       {
    #         event_id: "e55c1f5f-309b-440e-b0d8-64506987c20f",
    #         error_code: "null",
    #         error_message: "null"
    #       }
    #     ]
    #   }
    #
    def put_project_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProjectEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProjectEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "dataplane.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProjectEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutProjectEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutProjectEvents,
        stubs: @stubs,
        params_class: Params::PutProjectEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_project_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an existing experiment. To create an experiment,
    #         use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html">CreateExperiment</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to start.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment to start.</p>
    #
    # @option params [Time] :analysis_complete_time
    #   <p>The date and time to end the experiment. This must be no more than 30 days after
    #         the experiment starts.</p>
    #
    # @return [Types::StartExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_experiment(
    #     project: 'project', # required
    #     experiment: 'experiment', # required
    #     analysis_complete_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartExperimentOutput
    #   resp.data.started_time #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Starts an existing launch. To create a launch,
    #        use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html">CreateLaunch</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch to start.</p>
    #
    # @option params [String] :launch
    #   <p>The name of the launch to start.</p>
    #
    # @return [Types::StartLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_launch(
    #     project: 'project', # required
    #     launch: 'launch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartLaunchOutput
    #   resp.data.launch #=> Types::Launch
    #   resp.data.launch.arn #=> String
    #   resp.data.launch.name #=> String
    #   resp.data.launch.project #=> String
    #   resp.data.launch.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.launch.status_reason #=> String
    #   resp.data.launch.description #=> String
    #   resp.data.launch.created_time #=> Time
    #   resp.data.launch.last_updated_time #=> Time
    #   resp.data.launch.execution #=> Types::LaunchExecution
    #   resp.data.launch.execution.started_time #=> Time
    #   resp.data.launch.execution.ended_time #=> Time
    #   resp.data.launch.groups #=> Array<LaunchGroup>
    #   resp.data.launch.groups[0] #=> Types::LaunchGroup
    #   resp.data.launch.groups[0].name #=> String
    #   resp.data.launch.groups[0].description #=> String
    #   resp.data.launch.groups[0].feature_variations #=> Hash<String, String>
    #   resp.data.launch.groups[0].feature_variations['key'] #=> String
    #   resp.data.launch.metric_monitors #=> Array<MetricMonitor>
    #   resp.data.launch.metric_monitors[0] #=> Types::MetricMonitor
    #   resp.data.launch.metric_monitors[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.data.launch.randomization_salt #=> String
    #   resp.data.launch.type #=> String, one of ["aws.evidently.splits"]
    #   resp.data.launch.scheduled_splits_definition #=> Types::ScheduledSplitsLaunchDefinition
    #   resp.data.launch.scheduled_splits_definition.steps #=> Array<ScheduledSplit>
    #   resp.data.launch.scheduled_splits_definition.steps[0] #=> Types::ScheduledSplit
    #   resp.data.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash<String, Integer>
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights['key'] #=> Integer
    #   resp.data.launch.tags #=> Hash<String, String>
    #   resp.data.launch.tags['key'] #=> String
    #
    def start_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::StartLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartLaunch,
        stubs: @stubs,
        params_class: Params::StartLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an experiment that is currently running. If you stop an experiment, you can't
    #       resume it or restart it.</p>
    #
    # @param [Hash] params
    #   See {Types::StopExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to stop.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment to stop.</p>
    #
    # @option params [String] :desired_state
    #   <p>Specify whether the experiment is to be considered <code>COMPLETED</code> or
    #         <code>CANCELLED</code> after it stops.</p>
    #
    # @option params [String] :reason
    #   <p>A string that describes why you are stopping the experiment.</p>
    #
    # @return [Types::StopExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_experiment(
    #     project: 'project', # required
    #     experiment: 'experiment', # required
    #     desired_state: 'COMPLETED', # accepts ["COMPLETED", "CANCELLED"]
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopExperimentOutput
    #   resp.data.ended_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Stops a launch that is currently running. After you stop a launch, you will not be able to resume it or restart it.
    #        Also, it
    #        will not be evaluated as a rule for traffic allocation, and the traffic that was allocated to the launch
    #        will instead be available to the feature's experiment, if there is one. Otherwise, all traffic
    #        will be served the default variation after the launch is stopped.</p>
    #
    # @param [Hash] params
    #   See {Types::StopLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch that you want to stop.</p>
    #
    # @option params [String] :launch
    #   <p>The name of the launch to stop.</p>
    #
    # @option params [String] :desired_state
    #   <p>Specify whether to consider the launch as <code>COMPLETED</code> or
    #           <code>CANCELLED</code> after it stops.</p>
    #
    # @option params [String] :reason
    #   <p>A string that describes why you are stopping the launch.</p>
    #
    # @return [Types::StopLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_launch(
    #     project: 'project', # required
    #     launch: 'launch', # required
    #     desired_state: 'COMPLETED', # accepts ["COMPLETED", "CANCELLED"]
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopLaunchOutput
    #   resp.data.ended_time #=> Time
    #
    def stop_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::StopLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopLaunch,
        stubs: @stubs,
        params_class: Params::StopLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently resource. Projects,
    #        features, launches, and experiments can be tagged.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #        permissions by granting a user
    #        permission to access or change only resources with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags.
    #        If you specify a new tag key for the resource,
    #        this tag is appended to the list of tags associated
    #        with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces
    #        the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're adding tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes one or more tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're removing tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates an Evidently experiment. </p>
    #          <p>Don't use this operation to update an experiment's tag. Instead, use
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateExperimentInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment that you want to update.</p>
    #
    # @option params [String] :experiment
    #   <p>The name of the experiment to update.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the experiment.</p>
    #
    # @option params [Array<TreatmentConfig>] :treatments
    #   <p>An array of structures that define the variations being tested in the experiment.</p>
    #
    # @option params [Array<MetricGoalConfig>] :metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the experiment name as the <code>randomizationSalt</code>.</p>
    #
    # @option params [Integer] :sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 20,000 to allocate 20% of the available audience.</p>
    #
    # @option params [OnlineAbConfig] :online_ab_config
    #   <p>A structure that contains the configuration of which variation o use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #
    # @return [Types::UpdateExperimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experiment(
    #     project: 'project', # required
    #     experiment: 'experiment', # required
    #     description: 'description',
    #     treatments: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         feature: 'feature', # required
    #         variation: 'variation' # required
    #       }
    #     ],
    #     metric_goals: [
    #       {
    #         metric_definition: {
    #           name: 'name', # required
    #           entity_id_key: 'entityIdKey', # required
    #           value_key: 'valueKey', # required
    #           event_pattern: 'eventPattern',
    #           unit_label: 'unitLabel'
    #         }, # required
    #         desired_change: 'INCREASE' # accepts ["INCREASE", "DECREASE"]
    #       }
    #     ],
    #     randomization_salt: 'randomizationSalt',
    #     sampling_rate: 1,
    #     online_ab_config: {
    #       control_treatment_name: 'controlTreatmentName',
    #       treatment_weights: {
    #         'key' => 1
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateExperimentOutput
    #   resp.data.experiment #=> Types::Experiment
    #   resp.data.experiment.arn #=> String
    #   resp.data.experiment.name #=> String
    #   resp.data.experiment.project #=> String
    #   resp.data.experiment.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.experiment.status_reason #=> String
    #   resp.data.experiment.description #=> String
    #   resp.data.experiment.created_time #=> Time
    #   resp.data.experiment.last_updated_time #=> Time
    #   resp.data.experiment.schedule #=> Types::ExperimentSchedule
    #   resp.data.experiment.schedule.analysis_complete_time #=> Time
    #   resp.data.experiment.execution #=> Types::ExperimentExecution
    #   resp.data.experiment.execution.started_time #=> Time
    #   resp.data.experiment.execution.ended_time #=> Time
    #   resp.data.experiment.treatments #=> Array<Treatment>
    #   resp.data.experiment.treatments[0] #=> Types::Treatment
    #   resp.data.experiment.treatments[0].name #=> String
    #   resp.data.experiment.treatments[0].description #=> String
    #   resp.data.experiment.treatments[0].feature_variations #=> Hash<String, String>
    #   resp.data.experiment.treatments[0].feature_variations['key'] #=> String
    #   resp.data.experiment.metric_goals #=> Array<MetricGoal>
    #   resp.data.experiment.metric_goals[0] #=> Types::MetricGoal
    #   resp.data.experiment.metric_goals[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.data.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.data.experiment.metric_goals[0].desired_change #=> String, one of ["INCREASE", "DECREASE"]
    #   resp.data.experiment.randomization_salt #=> String
    #   resp.data.experiment.sampling_rate #=> Integer
    #   resp.data.experiment.type #=> String, one of ["aws.evidently.onlineab"]
    #   resp.data.experiment.online_ab_definition #=> Types::OnlineAbDefinition
    #   resp.data.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.data.experiment.online_ab_definition.treatment_weights #=> Hash<String, Integer>
    #   resp.data.experiment.online_ab_definition.treatment_weights['key'] #=> Integer
    #   resp.data.experiment.tags #=> Hash<String, String>
    #   resp.data.experiment.tags['key'] #=> String
    #
    def update_experiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateExperimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateExperimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateExperiment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateExperiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateExperiment,
        stubs: @stubs,
        params_class: Params::UpdateExperimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_experiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing feature.</p>
    #          <p>You can't use this operation to update the tags of an existing feature. Instead, use
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFeatureInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature to be updated.</p>
    #
    # @option params [String] :feature
    #   <p>The name of the feature to be updated.</p>
    #
    # @option params [String] :evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any ongoing
    #         launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default variation
    #         to all users instead.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the feature.</p>
    #
    # @option params [Array<VariationConfig>] :add_or_update_variations
    #   <p>To update variation configurations for this feature, or add new ones, specify this structure.
    #         In this array, include any variations that you want to add or update. If the array includes a variation name that
    #         already exists for this feature, it is updated. If it includes a new variation name, it is added
    #         as a new variation.</p>
    #
    # @option params [Array<String>] :remove_variations
    #   <p>Removes a variation from the feature. If the variation you specify doesn't exist, then this
    #       makes no change and does not report an error.</p>
    #            <p>This operation fails if you try to remove a variation that is part of an
    #       ongoing launch or experiment.</p>
    #
    # @option params [String] :default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #
    # @option params [Hash<String, String>] :entity_overrides
    #   <p>Specified users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #
    # @return [Types::UpdateFeatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_feature(
    #     project: 'project', # required
    #     feature: 'feature', # required
    #     evaluation_strategy: 'ALL_RULES', # accepts ["ALL_RULES", "DEFAULT_VARIATION"]
    #     description: 'description',
    #     add_or_update_variations: [
    #       {
    #         name: 'name', # required
    #         value: {
    #           # One of:
    #           bool_value: false,
    #           string_value: 'stringValue',
    #           long_value: 1,
    #           double_value: 1.0
    #         } # required
    #       }
    #     ],
    #     remove_variations: [
    #       'member'
    #     ],
    #     default_variation: 'defaultVariation',
    #     entity_overrides: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFeatureOutput
    #   resp.data.feature #=> Types::Feature
    #   resp.data.feature.arn #=> String
    #   resp.data.feature.name #=> String
    #   resp.data.feature.project #=> String
    #   resp.data.feature.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.feature.created_time #=> Time
    #   resp.data.feature.last_updated_time #=> Time
    #   resp.data.feature.description #=> String
    #   resp.data.feature.evaluation_strategy #=> String, one of ["ALL_RULES", "DEFAULT_VARIATION"]
    #   resp.data.feature.value_type #=> String, one of ["STRING", "LONG", "DOUBLE", "BOOLEAN"]
    #   resp.data.feature.variations #=> Array<Variation>
    #   resp.data.feature.variations[0] #=> Types::Variation
    #   resp.data.feature.variations[0].name #=> String
    #   resp.data.feature.variations[0].value #=> Types::VariableValue, one of [BoolValue, StringValue, LongValue, DoubleValue]
    #   resp.data.feature.variations[0].value.bool_value #=> Boolean
    #   resp.data.feature.variations[0].value.string_value #=> String
    #   resp.data.feature.variations[0].value.long_value #=> Integer
    #   resp.data.feature.variations[0].value.double_value #=> Float
    #   resp.data.feature.default_variation #=> String
    #   resp.data.feature.evaluation_rules #=> Array<EvaluationRule>
    #   resp.data.feature.evaluation_rules[0] #=> Types::EvaluationRule
    #   resp.data.feature.evaluation_rules[0].name #=> String
    #   resp.data.feature.evaluation_rules[0].type #=> String
    #   resp.data.feature.tags #=> Hash<String, String>
    #   resp.data.feature.tags['key'] #=> String
    #   resp.data.feature.entity_overrides #=> Hash<String, String>
    #   resp.data.feature.entity_overrides['key'] #=> String
    #
    def update_feature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFeatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFeatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFeature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateFeature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFeature,
        stubs: @stubs,
        params_class: Params::UpdateFeatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_feature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a launch of a given feature. </p>
    #          <p>Don't use this operation to update the tags of an existing launch. Instead, use
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLaunchInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch that you want to update.</p>
    #
    # @option params [String] :launch
    #   <p>The name of the launch that is to be updated.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the launch.</p>
    #
    # @option params [Array<LaunchGroupConfig>] :groups
    #   <p>An array of structures that contains the feature and variations that are to be used for
    #         the launch.</p>
    #
    # @option params [Array<MetricMonitorConfig>] :metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor
    #       the launch performance.</p>
    #
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    #
    # @option params [ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #
    # @return [Types::UpdateLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch(
    #     project: 'project', # required
    #     launch: 'launch', # required
    #     description: 'description',
    #     groups: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         feature: 'feature', # required
    #         variation: 'variation' # required
    #       }
    #     ],
    #     metric_monitors: [
    #       {
    #         metric_definition: {
    #           name: 'name', # required
    #           entity_id_key: 'entityIdKey', # required
    #           value_key: 'valueKey', # required
    #           event_pattern: 'eventPattern',
    #           unit_label: 'unitLabel'
    #         } # required
    #       }
    #     ],
    #     randomization_salt: 'randomizationSalt',
    #     scheduled_splits_config: {
    #       steps: [
    #         {
    #           start_time: Time.now, # required
    #           group_weights: {
    #             'key' => 1
    #           } # required
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLaunchOutput
    #   resp.data.launch #=> Types::Launch
    #   resp.data.launch.arn #=> String
    #   resp.data.launch.name #=> String
    #   resp.data.launch.project #=> String
    #   resp.data.launch.status #=> String, one of ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #   resp.data.launch.status_reason #=> String
    #   resp.data.launch.description #=> String
    #   resp.data.launch.created_time #=> Time
    #   resp.data.launch.last_updated_time #=> Time
    #   resp.data.launch.execution #=> Types::LaunchExecution
    #   resp.data.launch.execution.started_time #=> Time
    #   resp.data.launch.execution.ended_time #=> Time
    #   resp.data.launch.groups #=> Array<LaunchGroup>
    #   resp.data.launch.groups[0] #=> Types::LaunchGroup
    #   resp.data.launch.groups[0].name #=> String
    #   resp.data.launch.groups[0].description #=> String
    #   resp.data.launch.groups[0].feature_variations #=> Hash<String, String>
    #   resp.data.launch.groups[0].feature_variations['key'] #=> String
    #   resp.data.launch.metric_monitors #=> Array<MetricMonitor>
    #   resp.data.launch.metric_monitors[0] #=> Types::MetricMonitor
    #   resp.data.launch.metric_monitors[0].metric_definition #=> Types::MetricDefinition
    #   resp.data.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.data.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.data.launch.randomization_salt #=> String
    #   resp.data.launch.type #=> String, one of ["aws.evidently.splits"]
    #   resp.data.launch.scheduled_splits_definition #=> Types::ScheduledSplitsLaunchDefinition
    #   resp.data.launch.scheduled_splits_definition.steps #=> Array<ScheduledSplit>
    #   resp.data.launch.scheduled_splits_definition.steps[0] #=> Types::ScheduledSplit
    #   resp.data.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash<String, Integer>
    #   resp.data.launch.scheduled_splits_definition.steps[0].group_weights['key'] #=> Integer
    #   resp.data.launch.tags #=> Hash<String, String>
    #   resp.data.launch.tags['key'] #=> String
    #
    def update_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLaunch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLaunch,
        stubs: @stubs,
        params_class: Params::UpdateLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the description of an existing project.</p>
    #          <p>To create a new project, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html">CreateProject</a>.</p>
    #          <p>Don't use this operation to update the data storage options of a project. Instead, use
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html">UpdateProjectDataDelivery</a>. </p>
    #          <p>Don't use this operation to update the tags of a project. Instead, use
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project to update.</p>
    #
    # @option params [String] :description
    #   <p>An optional description of the project.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     project: 'project', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.project.description #=> String
    #   resp.data.project.created_time #=> Time
    #   resp.data.project.last_updated_time #=> Time
    #   resp.data.project.feature_count #=> Integer
    #   resp.data.project.launch_count #=> Integer
    #   resp.data.project.active_launch_count #=> Integer
    #   resp.data.project.experiment_count #=> Integer
    #   resp.data.project.active_experiment_count #=> Integer
    #   resp.data.project.data_delivery #=> Types::ProjectDataDelivery
    #   resp.data.project.data_delivery.s3_destination #=> Types::S3Destination
    #   resp.data.project.data_delivery.s3_destination.bucket #=> String
    #   resp.data.project.data_delivery.s3_destination.prefix #=> String
    #   resp.data.project.data_delivery.cloud_watch_logs #=> Types::CloudWatchLogsDestination
    #   resp.data.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.project.tags #=> Hash<String, String>
    #   resp.data.project.tags['key'] #=> String
    #
    def update_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProject,
        stubs: @stubs,
        params_class: Params::UpdateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the data storage options for this project. If you store evaluation events, you an
    #       keep them and analyze them on your own. If you choose not to store evaluation events,
    #       Evidently deletes them after using them to produce metrics and other experiment results that
    #       you can view.</p>
    #          <p>You can't specify both <code>cloudWatchLogs</code> and <code>s3Destination</code> in the same operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectDataDeliveryInput}.
    #
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to modify the data storage options for.</p>
    #
    # @option params [S3DestinationConfig] :s3_destination
    #   <p>A structure containing the S3 bucket name and bucket prefix where you want to store evaluation events.</p>
    #
    # @option params [CloudWatchLogsDestinationConfig] :cloud_watch_logs
    #   <p>A structure containing the CloudWatch Logs log group where you want to store evaluation
    #         events.</p>
    #
    # @return [Types::UpdateProjectDataDeliveryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project_data_delivery(
    #     project: 'project', # required
    #     s3_destination: {
    #       bucket: 'bucket',
    #       prefix: 'prefix'
    #     },
    #     cloud_watch_logs: {
    #       log_group: 'logGroup'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectDataDeliveryOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.status #=> String, one of ["AVAILABLE", "UPDATING"]
    #   resp.data.project.description #=> String
    #   resp.data.project.created_time #=> Time
    #   resp.data.project.last_updated_time #=> Time
    #   resp.data.project.feature_count #=> Integer
    #   resp.data.project.launch_count #=> Integer
    #   resp.data.project.active_launch_count #=> Integer
    #   resp.data.project.experiment_count #=> Integer
    #   resp.data.project.active_experiment_count #=> Integer
    #   resp.data.project.data_delivery #=> Types::ProjectDataDelivery
    #   resp.data.project.data_delivery.s3_destination #=> Types::S3Destination
    #   resp.data.project.data_delivery.s3_destination.bucket #=> String
    #   resp.data.project.data_delivery.s3_destination.prefix #=> String
    #   resp.data.project.data_delivery.cloud_watch_logs #=> Types::CloudWatchLogsDestination
    #   resp.data.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.project.tags #=> Hash<String, String>
    #   resp.data.project.tags['key'] #=> String
    #
    def update_project_data_delivery(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectDataDeliveryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectDataDeliveryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProjectDataDelivery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateProjectDataDelivery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProjectDataDelivery,
        stubs: @stubs,
        params_class: Params::UpdateProjectDataDeliveryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project_data_delivery
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
