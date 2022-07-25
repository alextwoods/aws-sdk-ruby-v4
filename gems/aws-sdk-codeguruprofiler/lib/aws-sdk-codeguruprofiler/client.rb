# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CodeGuruProfiler
  # An API client for CodeGuruProfiler
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #           This section provides documentation for the Amazon CodeGuru Profiler API operations.
  #       </p>
  #          <p>
  #          Amazon CodeGuru Profiler collects runtime performance data from your live applications, and provides
  #          recommendations that can help you fine-tune your application performance. Using machine learning
  #          algorithms, CodeGuru Profiler can help you find your most expensive lines of code and suggest ways you can
  #          improve efficiency and remove CPU bottlenecks.
  #       </p>
  #          <p>
  #          Amazon CodeGuru Profiler provides different visualizations of profiling data to help you identify what code is
  #          running on the CPU, see how much time is consumed, and suggest ways to reduce CPU utilization.
  #       </p>
  #          <note>
  #             <p>Amazon CodeGuru Profiler currently supports applications written in all Java virtual machine (JVM)
  #             languages and Python. While CodeGuru Profiler supports both visualizations and recommendations for applications
  #             written in Java, it can also generate visualizations and a subset of recommendations for
  #             applications written in other JVM languages and Python.</p>
  #          </note>
  #          <p>
  #          For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html">What is Amazon CodeGuru Profiler</a> in
  #          the <i>Amazon CodeGuru Profiler User Guide</i>.
  #       </p>
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
    def initialize(config = AWS::SDK::CodeGuruProfiler::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Add up to 2 anomaly notifications channels for a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::AddNotificationChannelsInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group that we are setting up notifications for.</p>
    #
    # @option params [Array<Channel>] :channels
    #   <p>One or 2 channels to report to when anomalies are detected.</p>
    #
    # @return [Types::AddNotificationChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_notification_channels(
    #     profiling_group_name: 'profilingGroupName', # required
    #     channels: [
    #       {
    #         id: 'id',
    #         uri: 'uri', # required
    #         event_publishers: [
    #           'AnomalyDetection' # accepts ["AnomalyDetection"]
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddNotificationChannelsOutput
    #   resp.data.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.notification_configuration.channels #=> Array<Channel>
    #   resp.data.notification_configuration.channels[0] #=> Types::Channel
    #   resp.data.notification_configuration.channels[0].id #=> String
    #   resp.data.notification_configuration.channels[0].uri #=> String
    #   resp.data.notification_configuration.channels[0].event_publishers #=> Array<String>
    #   resp.data.notification_configuration.channels[0].event_publishers[0] #=> String, one of ["AnomalyDetection"]
    #
    def add_notification_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddNotificationChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddNotificationChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddNotificationChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AddNotificationChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddNotificationChannels,
        stubs: @stubs,
        params_class: Params::AddNotificationChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_notification_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns the time series of values for a requested list
    #          of frame metrics from a time period.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetFrameMetricDataInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group associated with the
    #            the frame metrics used to return the time series values.
    #         </p>
    #
    # @option params [Time] :start_time
    #   <p>
    #            The start time of the time period for the frame metrics used to return the time series values.
    #            This is specified
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #            The end time of the time period for the returned time series values.
    #            This is specified
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #
    # @option params [String] :period
    #   <p>
    #            The duration of the frame metrics used to return the time series values.
    #            Specify using the ISO 8601 format. The maximum period duration
    #            is one day (<code>PT24H</code> or <code>P1D</code>).
    #         </p>
    #
    # @option params [String] :target_resolution
    #   <p>The requested resolution of time steps for the returned time series of values.
    #            If the requested target resolution is not available due to data not being retained we provide a best effort
    #            result by falling back to the most granular available resolution after the target resolution.
    #            There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<FrameMetric>] :frame_metrics
    #   <p>
    #            The details of the metrics that are used to request a time series of values. The metric includes
    #            the name of the frame, the aggregation type to calculate the metric value for the
    #            frame, and the thread states to use to get the count for the metric value of the frame.</p>
    #
    # @return [Types::BatchGetFrameMetricDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_frame_metric_data(
    #     profiling_group_name: 'profilingGroupName', # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     period: 'period',
    #     target_resolution: 'PT5M', # accepts ["PT5M", "PT1H", "P1D"]
    #     frame_metrics: [
    #       {
    #         frame_name: 'frameName', # required
    #         type: 'AggregatedRelativeTotalTime', # required - accepts ["AggregatedRelativeTotalTime"]
    #         thread_states: [
    #           'member'
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetFrameMetricDataOutput
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.resolution #=> String, one of ["PT5M", "PT1H", "P1D"]
    #   resp.data.end_times #=> Array<TimestampStructure>
    #   resp.data.end_times[0] #=> Types::TimestampStructure
    #   resp.data.end_times[0].value #=> Time
    #   resp.data.unprocessed_end_times #=> Hash<String, Array<TimestampStructure>>
    #   resp.data.frame_metric_data #=> Array<FrameMetricDatum>
    #   resp.data.frame_metric_data[0] #=> Types::FrameMetricDatum
    #   resp.data.frame_metric_data[0].frame_metric #=> Types::FrameMetric
    #   resp.data.frame_metric_data[0].frame_metric.frame_name #=> String
    #   resp.data.frame_metric_data[0].frame_metric.type #=> String, one of ["AggregatedRelativeTotalTime"]
    #   resp.data.frame_metric_data[0].frame_metric.thread_states #=> Array<String>
    #   resp.data.frame_metric_data[0].frame_metric.thread_states[0] #=> String
    #   resp.data.frame_metric_data[0].values #=> Array<Float>
    #   resp.data.frame_metric_data[0].values[0] #=> Float
    #
    def batch_get_frame_metric_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetFrameMetricDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetFrameMetricDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetFrameMetricData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetFrameMetricData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetFrameMetricData,
        stubs: @stubs,
        params_class: Params::BatchGetFrameMetricDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_frame_metric_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #           Used by profiler agents to report their current state and to receive remote
    #           configuration updates. For example, <code>ConfigureAgent</code> can be used
    #          to tell an agent whether to profile or not and for how long to return profiling data.
    #       </p>
    #
    # Tags: ["dataplane"]
    #
    # @param [Hash] params
    #   See {Types::ConfigureAgentInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group for which the configured agent is collecting profiling data.
    #         </p>
    #
    # @option params [String] :fleet_instance_id
    #   <p> A universally unique identifier (UUID) for a profiling instance. For example, if the
    #            profiling instance is an Amazon EC2 instance, it is the instance ID. If it is an AWS
    #            Fargate container, it is the container's task ID. </p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p> Metadata captured about the compute platform the agent is running on. It includes
    #            information about sampling and reporting. The valid fields are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPUTE_PLATFORM</code> - The compute platform on which the agent is running
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AGENT_ID</code> - The ID for an agent instance.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_REQUEST_ID</code> - The AWS request ID of a Lambda invocation.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXECUTION_ENVIRONMENT</code> - The execution environment a Lambda function is running on.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_FUNCTION_ARN</code> - The Amazon Resource Name (ARN) that is used to invoke a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_MEMORY_LIMIT_IN_MB</code> - The memory allocated to a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_REMAINING_TIME_IN_MILLISECONDS</code> - The time in milliseconds before execution of a Lambda function times out.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS</code> - The time in milliseconds between two invocations of a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS</code> - The time in milliseconds for the previous Lambda invocation.
    #               </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ConfigureAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_agent(
    #     profiling_group_name: 'profilingGroupName', # required
    #     fleet_instance_id: 'fleetInstanceId',
    #     metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfigureAgentOutput
    #   resp.data.configuration #=> Types::AgentConfiguration
    #   resp.data.configuration.should_profile #=> Boolean
    #   resp.data.configuration.period_in_seconds #=> Integer
    #   resp.data.configuration.agent_parameters #=> Hash<String, String>
    #   resp.data.configuration.agent_parameters['key'] #=> String
    #
    def configure_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfigureAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfigureAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfigureAgent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ConfigureAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfigureAgent,
        stubs: @stubs,
        params_class: Params::ConfigureAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :configure_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProfilingGroupInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to create.</p>
    #
    # @option params [String] :compute_platform
    #   <p>
    #            The compute platform of the profiling group. Use <code>AWSLambda</code> if your application
    #            runs on AWS Lambda. Use <code>Default</code> if your application runs on a compute platform that
    #            is not AWS Lambda, such an Amazon EC2 instance, an on-premises server, or a different platform.
    #            If not specified, <code>Default</code> is used.
    #         </p>
    #
    # @option params [String] :client_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental creation of duplicate profiling groups if there are failures and retries. </p>
    #
    # @option params [AgentOrchestrationConfig] :agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for the created profiling group.
    #         </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #            A list of tags to add to the created profiling group.
    #         </p>
    #
    # @return [Types::CreateProfilingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profiling_group(
    #     profiling_group_name: 'profilingGroupName', # required
    #     compute_platform: 'Default', # accepts ["Default", "AWSLambda"]
    #     client_token: 'clientToken', # required
    #     agent_orchestration_config: {
    #       profiling_enabled: false # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProfilingGroupOutput
    #   resp.data.profiling_group #=> Types::ProfilingGroupDescription
    #   resp.data.profiling_group.name #=> String
    #   resp.data.profiling_group.agent_orchestration_config #=> Types::AgentOrchestrationConfig
    #   resp.data.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.data.profiling_group.arn #=> String
    #   resp.data.profiling_group.created_at #=> Time
    #   resp.data.profiling_group.updated_at #=> Time
    #   resp.data.profiling_group.profiling_status #=> Types::ProfilingStatus
    #   resp.data.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile #=> Types::AggregatedProfileTime
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of ["PT5M", "PT1H", "P1D"]
    #   resp.data.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.data.profiling_group.compute_platform #=> String, one of ["Default", "AWSLambda"]
    #   resp.data.profiling_group.tags #=> Hash<String, String>
    #   resp.data.profiling_group.tags['key'] #=> String
    #
    def create_profiling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProfilingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProfilingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProfilingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateProfilingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProfilingGroup,
        stubs: @stubs,
        params_class: Params::CreateProfilingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_profiling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfilingGroupInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to delete.</p>
    #
    # @return [Types::DeleteProfilingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profiling_group(
    #     profiling_group_name: 'profilingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfilingGroupOutput
    #
    def delete_profiling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfilingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfilingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfilingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteProfilingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfilingGroup,
        stubs: @stubs,
        params_class: Params::DeleteProfilingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profiling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                <code>ProfilingGroupDescription</code>
    #             </a>
    #          object that contains information about the requested profiling group.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProfilingGroupInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group to get information about.
    #         </p>
    #
    # @return [Types::DescribeProfilingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_profiling_group(
    #     profiling_group_name: 'profilingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProfilingGroupOutput
    #   resp.data.profiling_group #=> Types::ProfilingGroupDescription
    #   resp.data.profiling_group.name #=> String
    #   resp.data.profiling_group.agent_orchestration_config #=> Types::AgentOrchestrationConfig
    #   resp.data.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.data.profiling_group.arn #=> String
    #   resp.data.profiling_group.created_at #=> Time
    #   resp.data.profiling_group.updated_at #=> Time
    #   resp.data.profiling_group.profiling_status #=> Types::ProfilingStatus
    #   resp.data.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile #=> Types::AggregatedProfileTime
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of ["PT5M", "PT1H", "P1D"]
    #   resp.data.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.data.profiling_group.compute_platform #=> String, one of ["Default", "AWSLambda"]
    #   resp.data.profiling_group.tags #=> Hash<String, String>
    #   resp.data.profiling_group.tags['key'] #=> String
    #
    def describe_profiling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProfilingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProfilingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProfilingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeProfilingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProfilingGroup,
        stubs: @stubs,
        params_class: Params::DescribeProfilingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_profiling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Returns a list of
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html">
    #                <code>FindingsReportSummary</code>
    #             </a>
    #             objects that contain analysis results for all profiling groups in your AWS account.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsReportAccountSummaryInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>GetFindingsReportAccountSummary</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code> GetFindingsReportAccountSummary</code> in paginated output.
    #               When this parameter is used, <code>GetFindingsReportAccountSummary</code> only returns <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial
    #               request can be seen by sending another <code>GetFindingsReportAccountSummary</code> request with the returned
    #               <code>nextToken</code> value.</p>
    #
    # @option params [Boolean] :daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set
    #               to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>,
    #               analysis data is returned from smaller time windows (for example, one hour).</p>
    #
    # @return [Types::GetFindingsReportAccountSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_report_account_summary(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     daily_reports_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsReportAccountSummaryOutput
    #   resp.data.report_summaries #=> Array<FindingsReportSummary>
    #   resp.data.report_summaries[0] #=> Types::FindingsReportSummary
    #   resp.data.report_summaries[0].id #=> String
    #   resp.data.report_summaries[0].profiling_group_name #=> String
    #   resp.data.report_summaries[0].profile_start_time #=> Time
    #   resp.data.report_summaries[0].profile_end_time #=> Time
    #   resp.data.report_summaries[0].total_number_of_findings #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_findings_report_account_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsReportAccountSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsReportAccountSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingsReportAccountSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::GetFindingsReportAccountSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingsReportAccountSummary,
        stubs: @stubs,
        params_class: Params::GetFindingsReportAccountSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings_report_account_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the current configuration for anomaly notifications for a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNotificationConfigurationInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group we want to get the notification configuration for.</p>
    #
    # @return [Types::GetNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_configuration(
    #     profiling_group_name: 'profilingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNotificationConfigurationOutput
    #   resp.data.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.notification_configuration.channels #=> Array<Channel>
    #   resp.data.notification_configuration.channels[0] #=> Types::Channel
    #   resp.data.notification_configuration.channels[0].id #=> String
    #   resp.data.notification_configuration.channels[0].uri #=> String
    #   resp.data.notification_configuration.channels[0].event_publishers #=> Array<String>
    #   resp.data.notification_configuration.channels[0].event_publishers[0] #=> String, one of ["AnomalyDetection"]
    #
    def get_notification_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNotificationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNotificationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNotificationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNotificationConfiguration,
        stubs: @stubs,
        params_class: Params::GetNotificationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_notification_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Returns the JSON-formatted resource-based policy on a profiling group.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     profiling_group_name: 'profilingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        stubs: @stubs,
        params_class: Params::GetPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Gets the aggregated profile of a profiling group for a specified time range.
    #          Amazon CodeGuru Profiler collects posted agent profiles for a profiling group
    #          into aggregated profiles.
    #      </p>
    #
    #          <note>
    #             <p>
    #             Because aggregated profiles expire over time <code>GetProfile</code> is not idempotent.
    #          </p>
    #          </note>
    #
    #          <p>
    #          Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: <code>startTime</code>,
    #          <code>endTime</code>, <code>period</code>. The maximum time range allowed is 7 days. If you specify all 3 parameters,
    #          an exception is thrown. If you specify only <code>period</code>, the latest aggregated profile is returned.
    #       </p>
    #
    #          <p>
    #          Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to
    #          UTC. The aggregation period of an aggregated profile determines how long it is retained. For more
    #          information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html">
    #                <code>AggregatedProfileTime</code>
    #             </a>. The aggregated profile's aggregation period determines how long
    #          it is retained by CodeGuru Profiler.
    #       </p>
    #
    #          <ul>
    #             <li>
    #                <p>
    #                If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If the aggregation period is 1 hour, the aggregated profile is retained for 60 days.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If the aggregation period is 1 day, the aggregated profile is retained for 3 years.
    #             </p>
    #             </li>
    #          </ul>
    #
    #          <p>There are two use cases for calling <code>GetProfile</code>.</p>
    #          <ol>
    #             <li>
    #                <p>
    #                If you want to return an aggregated profile that already exists, use
    #                <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html">
    #                      <code>ListProfileTimes</code>
    #                   </a> to
    #                view the time ranges of existing aggregated profiles. Use them in a <code>GetProfile</code> request to return a specific,
    #                existing aggregated profile.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile,
    #                then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time
    #                range and return them as one aggregated profile.
    #             </p>
    #
    #                <p> If aggregated profiles do not exist for the full time range requested, then
    #                aggregated profiles for a smaller time range are returned. For example, if the
    #                requested time range is from 00:00 to 00:20, and the existing aggregated profiles are
    #                from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. </p>
    #
    #
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::GetProfileInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to get.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start time of the profile to get. Specify using
    #            the ISO 8601 format. For example,
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #
    #            <p>
    #            If you specify <code>startTime</code>, then you must also specify <code>period</code>
    #            or <code>endTime</code>, but not both.
    #         </p>
    #
    # @option params [String] :period
    #   <p>
    #            Used with <code>startTime</code> or <code>endTime</code> to specify
    #            the time range for the returned aggregated profile. Specify using
    #            the ISO 8601 format. For example, <code>P1DT1H1M1S</code>.
    #         </p>
    #
    #            <p>
    #            To get the latest aggregated profile, specify only <code>period</code>.
    #         </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #            The end time of the requested profile. Specify using
    #            the ISO 8601 format. For example,
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #            <p>
    #            If you specify <code>endTime</code>, then you must also specify <code>period</code>
    #            or <code>startTime</code>, but not both.
    #         </p>
    #
    # @option params [Integer] :max_depth
    #   <p>
    #            The maximum depth of the stacks in the code that is represented in
    #            the aggregated profile. For example, if CodeGuru Profiler finds a method <code>A</code>,
    #            which calls method <code>B</code>, which calls method <code>C</code>, which
    #            calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is
    #            set to 2, then the aggregated profile contains representations of methods <code>A</code>
    #            and <code>B</code>.
    #         </p>
    #
    # @option params [String] :accept
    #   <p>
    #            The format of the returned profiling data. The format maps to the
    #            <code>Accept</code> and <code>Content-Type</code> headers of the
    #            HTTP request. You can specify one of the following:
    #           or the default .
    #         </p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information,
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile(
    #     profiling_group_name: 'profilingGroupName', # required
    #     start_time: Time.now,
    #     period: 'period',
    #     end_time: Time.now,
    #     max_depth: 1,
    #     accept: 'accept'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProfileOutput
    #   resp.data.profile #=> String
    #   resp.data.content_type #=> String
    #   resp.data.content_encoding #=> String
    #
    def get_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProfile,
        stubs: @stubs,
        params_class: Params::GetProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Returns a list of
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html">
    #                <code>Recommendation</code>
    #             </a>
    #             objects that contain recommendations for a profiling group for a given time period. A list of
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html">
    #                <code>Anomaly</code>
    #             </a>
    #             objects that contains details about anomalies detected in the profiling group for the same time period is also
    #             returned.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationsInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>
    #               The name of the profiling group to get analysis data about.
    #           </p>
    #
    # @option params [Time] :start_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>.
    #               This is specified
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>.
    #               This is specified
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #
    # @option params [String] :locale
    #   <p>
    #               The language used to provide analysis. Specify using a string that is one
    #               of the following <code>BCP 47</code> language codes.
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>de-DE</code> - German, Germany
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-GB</code> - English, United Kingdom
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-US</code> - English, United States
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>es-ES</code> - Spanish, Spain
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>fr-FR</code> - French, France
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>it-IT</code> - Italian, Italy
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ja-JP</code> - Japanese, Japan
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ko-KR</code> - Korean, Republic of Korea
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>pt-BR</code> - Portugese, Brazil
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-CN</code> - Chinese, China
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-TW</code> - Chinese, Taiwan
    #                   </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations(
    #     profiling_group_name: 'profilingGroupName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     locale: 'locale'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationsOutput
    #   resp.data.profiling_group_name #=> String
    #   resp.data.profile_start_time #=> Time
    #   resp.data.profile_end_time #=> Time
    #   resp.data.recommendations #=> Array<Recommendation>
    #   resp.data.recommendations[0] #=> Types::Recommendation
    #   resp.data.recommendations[0].all_matches_count #=> Integer
    #   resp.data.recommendations[0].all_matches_sum #=> Float
    #   resp.data.recommendations[0].pattern #=> Types::Pattern
    #   resp.data.recommendations[0].pattern.id #=> String
    #   resp.data.recommendations[0].pattern.name #=> String
    #   resp.data.recommendations[0].pattern.description #=> String
    #   resp.data.recommendations[0].pattern.resolution_steps #=> String
    #   resp.data.recommendations[0].pattern.target_frames #=> Array<Array<String>>
    #   resp.data.recommendations[0].pattern.target_frames[0] #=> Array<String>
    #   resp.data.recommendations[0].pattern.target_frames[0][0] #=> String
    #   resp.data.recommendations[0].pattern.threshold_percent #=> Float
    #   resp.data.recommendations[0].pattern.counters_to_aggregate #=> Array<String>
    #   resp.data.recommendations[0].pattern.counters_to_aggregate[0] #=> String
    #   resp.data.recommendations[0].top_matches #=> Array<Match>
    #   resp.data.recommendations[0].top_matches[0] #=> Types::Match
    #   resp.data.recommendations[0].top_matches[0].target_frames_index #=> Integer
    #   resp.data.recommendations[0].top_matches[0].frame_address #=> String
    #   resp.data.recommendations[0].top_matches[0].threshold_breach_value #=> Float
    #   resp.data.recommendations[0].start_time #=> Time
    #   resp.data.recommendations[0].end_time #=> Time
    #   resp.data.anomalies #=> Array<Anomaly>
    #   resp.data.anomalies[0] #=> Types::Anomaly
    #   resp.data.anomalies[0].metric #=> Types::Metric
    #   resp.data.anomalies[0].metric.frame_name #=> String
    #   resp.data.anomalies[0].metric.type #=> String, one of ["AggregatedRelativeTotalTime"]
    #   resp.data.anomalies[0].metric.thread_states #=> Array<String>
    #   resp.data.anomalies[0].reason #=> String
    #   resp.data.anomalies[0].instances #=> Array<AnomalyInstance>
    #   resp.data.anomalies[0].instances[0] #=> Types::AnomalyInstance
    #   resp.data.anomalies[0].instances[0].id #=> String
    #   resp.data.anomalies[0].instances[0].start_time #=> Time
    #   resp.data.anomalies[0].instances[0].end_time #=> Time
    #   resp.data.anomalies[0].instances[0].user_feedback #=> Types::UserFeedback
    #   resp.data.anomalies[0].instances[0].user_feedback.type #=> String, one of ["Positive", "Negative"]
    #
    def get_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendations,
        stubs: @stubs,
        params_class: Params::GetRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the available reports for a given profiling group and time range.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsReportsInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group from which to search for analysis data.</p>
    #
    # @option params [Time] :start_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>.
    #               This is specified
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #
    # @option params [Time] :end_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>.
    #               This is specified
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListFindingsReportsRequest</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #         the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of report results returned by <code>ListFindingsReports</code>
    #            in paginated output. When this parameter is used, <code>ListFindingsReports</code> only returns
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListFindingsReports</code> request with the returned
    #            <code>nextToken</code> value.</p>
    #
    # @option params [Boolean] :daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set
    #           to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>,
    #           analysis data is returned from smaller time windows (for example, one hour).</p>
    #
    # @return [Types::ListFindingsReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings_reports(
    #     profiling_group_name: 'profilingGroupName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     daily_reports_only: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsReportsOutput
    #   resp.data.findings_report_summaries #=> Array<FindingsReportSummary>
    #   resp.data.findings_report_summaries[0] #=> Types::FindingsReportSummary
    #   resp.data.findings_report_summaries[0].id #=> String
    #   resp.data.findings_report_summaries[0].profiling_group_name #=> String
    #   resp.data.findings_report_summaries[0].profile_start_time #=> Time
    #   resp.data.findings_report_summaries[0].profile_end_time #=> Time
    #   resp.data.findings_report_summaries[0].total_number_of_findings #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_findings_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingsReportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingsReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindingsReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListFindingsReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindingsReports,
        stubs: @stubs,
        params_class: Params::ListFindingsReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_findings_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the start times of the available aggregated profiles of a profiling group
    #         for an aggregation period within the specified time range.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProfileTimesInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start time of the time range from which to list the profiles.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time of the time range from which to list the profiles.</p>
    #
    # @option params [String] :period
    #   <p>
    #            The aggregation period. This specifies the period during which an aggregation profile
    #            collects posted agent profiles for a profiling group. There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :order_by
    #   <p>The order (ascending or descending by start time of the profile) to
    #           use when listing profiles. Defaults to <code>TIMESTAMP_DESCENDING</code>.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of profile time results returned by <code>ListProfileTimes</code>
    #            in paginated output. When this parameter is used, <code>ListProfileTimes</code> only returns
    #            <code>maxResults</code> results in a single page with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListProfileTimes</code> request with the returned
    #            <code>nextToken</code> value.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #            <code>ListProfileTimes</code> request where <code>maxResults</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results
    #            that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @return [Types::ListProfileTimesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_times(
    #     profiling_group_name: 'profilingGroupName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 'PT5M', # required - accepts ["PT5M", "PT1H", "P1D"]
    #     order_by: 'TimestampDescending', # accepts ["TimestampDescending", "TimestampAscending"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfileTimesOutput
    #   resp.data.profile_times #=> Array<ProfileTime>
    #   resp.data.profile_times[0] #=> Types::ProfileTime
    #   resp.data.profile_times[0].start #=> Time
    #   resp.data.next_token #=> String
    #
    def list_profile_times(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfileTimesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfileTimesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfileTimes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListProfileTimes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfileTimes,
        stubs: @stubs,
        params_class: Params::ListProfileTimesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profile_times
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a list of profiling groups. The profiling groups are returned as
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                <code>ProfilingGroupDescription</code>
    #             </a>
    #          objects.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListProfilingGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #            <code>ListProfilingGroups</code> request where <code>maxResults</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results
    #            that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of profiling groups results returned by <code>ListProfilingGroups</code>
    #            in paginated output. When this parameter is used, <code>ListProfilingGroups</code> only returns
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListProfilingGroups</code> request with the returned
    #            <code>nextToken</code> value.
    #         </p>
    #
    # @option params [Boolean] :include_description
    #   <p>A <code>Boolean</code> value indicating whether to include a description. If <code>true</code>,
    #         then a list of
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> objects
    #         that contain detailed information about profiling groups is returned. If <code>false</code>, then
    #         a list of profiling group names is returned.</p>
    #
    # @return [Types::ListProfilingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiling_groups(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     include_description: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfilingGroupsOutput
    #   resp.data.profiling_group_names #=> Array<String>
    #   resp.data.profiling_group_names[0] #=> String
    #   resp.data.profiling_groups #=> Array<ProfilingGroupDescription>
    #   resp.data.profiling_groups[0] #=> Types::ProfilingGroupDescription
    #   resp.data.profiling_groups[0].name #=> String
    #   resp.data.profiling_groups[0].agent_orchestration_config #=> Types::AgentOrchestrationConfig
    #   resp.data.profiling_groups[0].agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.data.profiling_groups[0].arn #=> String
    #   resp.data.profiling_groups[0].created_at #=> Time
    #   resp.data.profiling_groups[0].updated_at #=> Time
    #   resp.data.profiling_groups[0].profiling_status #=> Types::ProfilingStatus
    #   resp.data.profiling_groups[0].profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.data.profiling_groups[0].profiling_status.latest_aggregated_profile #=> Types::AggregatedProfileTime
    #   resp.data.profiling_groups[0].profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.data.profiling_groups[0].profiling_status.latest_aggregated_profile.period #=> String, one of ["PT5M", "PT1H", "P1D"]
    #   resp.data.profiling_groups[0].profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.data.profiling_groups[0].compute_platform #=> String, one of ["Default", "AWSLambda"]
    #   resp.data.profiling_groups[0].tags #=> Hash<String, String>
    #   resp.data.profiling_groups[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_profiling_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfilingGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfilingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfilingGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListProfilingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfilingGroups,
        stubs: @stubs,
        params_class: Params::ListProfilingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profiling_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a list of the tags that are assigned to a specified resource.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to return.
    #         </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>
    #          Submits profiling data to an aggregated profile of a profiling group. To get an
    #          aggregated profile that is created with this profiling data, use
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html">
    #                <code>GetProfile</code>
    #             </a>.
    #       </p>
    #
    # Tags: ["dataplane"]
    #
    # @param [Hash] params
    #   See {Types::PostAgentProfileInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group with the aggregated profile that receives the
    #            submitted profiling data.
    #         </p>
    #
    # @option params [String] :agent_profile
    #   <p>
    #            The submitted profiling data.
    #         </p>
    #
    # @option params [String] :profile_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental submission of duplicate profiling data if there are failures and retries. </p>
    #
    # @option params [String] :content_type
    #   <p>
    #            The format of the submitted profiling data. The format maps to the
    #            <code>Accept</code> and <code>Content-Type</code> headers of the
    #            HTTP request. You can specify one of the following:
    #            or the default .
    #         </p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information,
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PostAgentProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_agent_profile(
    #     profiling_group_name: 'profilingGroupName', # required
    #     agent_profile: 'agentProfile', # required
    #     profile_token: 'profileToken',
    #     content_type: 'contentType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostAgentProfileOutput
    #
    def post_agent_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostAgentProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostAgentProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostAgentProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PostAgentProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostAgentProfile,
        stubs: @stubs,
        params_class: Params::PostAgentProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_agent_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Adds permissions to a profiling group's resource-based policy
    #             that are provided using an action group. If a profiling group doesn't have
    #             a resource-based policy, one is created for it using the permissions in the action group and
    #             the roles and users in the <code>principals</code> parameter.
    #         </p>
    #
    #         <p> The one supported action group that can be added is <code>agentPermission</code>
    #             which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For
    #             more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based
    #                 policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User
    #                 Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html">
    #                <code>PostAgentProfile</code>
    #             </a>. </p>
    #
    #         <p>
    #             The first time you call <code>PutPermission</code> on a profiling group, do not specify a <code>revisionId</code> because
    #             it doesn't have a resource-based policy. Subsequent calls must provide a <code>revisionId</code> to specify
    #             which revision of the resource-based policy to add the permissions to.
    #         </p>
    #
    #         <p>
    #             The response contains the profiling group's JSON-formatted resource policy.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::PutPermissionInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to grant access to.</p>
    #
    # @option params [String] :action_group
    #   <p>
    #               Specifies an action group that contains permissions to add to
    #               a profiling group resource. One action group is supported, <code>agentPermissions</code>, which
    #               grants permission to perform actions required by the profiling agent, <code>ConfigureAgent</code>
    #               and <code>PostAgentProfile</code> permissions.
    #           </p>
    #
    # @option params [Array<String>] :principals
    #   <p>
    #               A list ARNs for the roles and users you want to grant access to the profiling group.
    #               Wildcards are not are supported in the ARNs.
    #           </p>
    #
    # @option params [String] :revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the policy you
    #               are adding to the profiling group. Do not specify
    #               this when you add permissions to a profiling group for the first time. If a policy already exists on the
    #               profiling group, you must specify the <code>revisionId</code>.
    #           </p>
    #
    # @return [Types::PutPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission(
    #     profiling_group_name: 'profilingGroupName', # required
    #     action_group: 'agentPermissions', # required - accepts ["agentPermissions"]
    #     principals: [
    #       'member'
    #     ], # required
    #     revision_id: 'revisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPermissionOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
    #
    def put_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PutPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPermission,
        stubs: @stubs,
        params_class: Params::PutPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove one anomaly notifications channel for a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveNotificationChannelInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group we want to change notification configuration for.</p>
    #
    # @option params [String] :channel_id
    #   <p>The id of the channel that we want to stop receiving notifications.</p>
    #
    # @return [Types::RemoveNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_notification_channel(
    #     profiling_group_name: 'profilingGroupName', # required
    #     channel_id: 'channelId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveNotificationChannelOutput
    #   resp.data.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.notification_configuration.channels #=> Array<Channel>
    #   resp.data.notification_configuration.channels[0] #=> Types::Channel
    #   resp.data.notification_configuration.channels[0].id #=> String
    #   resp.data.notification_configuration.channels[0].uri #=> String
    #   resp.data.notification_configuration.channels[0].event_publishers #=> Array<String>
    #   resp.data.notification_configuration.channels[0].event_publishers[0] #=> String, one of ["AnomalyDetection"]
    #
    def remove_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveNotificationChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RemoveNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveNotificationChannel,
        stubs: @stubs,
        params_class: Params::RemoveNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Removes permissions from a profiling group's resource-based policy that are provided
    #             using an action group. The one supported action group that can be removed is
    #                 <code>agentPermission</code> which grants <code>ConfigureAgent</code> and
    #                 <code>PostAgent</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon
    #                 CodeGuru Profiler User Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html">
    #                <code>PostAgentProfile</code>
    #             </a>. </p>
    #
    # @param [Hash] params
    #   See {Types::RemovePermissionInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    #
    # @option params [String] :action_group
    #   <p>
    #               Specifies an action group that contains the permissions to remove from
    #               a profiling group's resource-based policy. One action group is supported, <code>agentPermissions</code>, which
    #               grants <code>ConfigureAgent</code> and <code>PostAgentProfile</code> permissions.
    #           </p>
    #
    # @option params [String] :revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the resource-based policy from which
    #               you want to remove permissions.
    #           </p>
    #
    # @return [Types::RemovePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission(
    #     profiling_group_name: 'profilingGroupName', # required
    #     action_group: 'agentPermissions', # required - accepts ["agentPermissions"]
    #     revision_id: 'revisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemovePermissionOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
    #
    def remove_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemovePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemovePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemovePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RemovePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemovePermission,
        stubs: @stubs,
        params_class: Params::RemovePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is
    #             useful or not.</p>
    #
    # @param [Hash] params
    #   See {Types::SubmitFeedbackInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group that is associated with the analysis data.</p>
    #
    # @option params [String] :anomaly_instance_id
    #   <p>The universally unique identifier (UUID) of the
    #               <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html">
    #                  <code>AnomalyInstance</code>
    #               </a> object
    #               that is included in the analysis data.</p>
    #
    # @option params [String] :type
    #   <p>
    #               The feedback tpye. Thee are two valid values, <code>Positive</code> and <code>Negative</code>.
    #           </p>
    #
    # @option params [String] :comment
    #   <p>Optional feedback about this anomaly.</p>
    #
    # @return [Types::SubmitFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_feedback(
    #     profiling_group_name: 'profilingGroupName', # required
    #     anomaly_instance_id: 'anomalyInstanceId', # required
    #     type: 'Positive', # required - accepts ["Positive", "Negative"]
    #     comment: 'comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitFeedbackOutput
    #
    def submit_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitFeedback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::SubmitFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitFeedback,
        stubs: @stubs,
        params_class: Params::SubmitFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Use to assign one or more tags to a resource.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that the tags are added to.
    #         </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #            The list of tags that are added to the specified resource.
    #         </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>
    #          Use to remove one or more tags from a resource.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to remove.
    #         </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #            A list of tag keys. Existing tags of resources with keys in this list are removed from
    #            the specified resource.
    #         </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates a profiling group.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProfilingGroupInput}.
    #
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to update.</p>
    #
    # @option params [AgentOrchestrationConfig] :agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for a profiling group.
    #         </p>
    #
    # @return [Types::UpdateProfilingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profiling_group(
    #     profiling_group_name: 'profilingGroupName', # required
    #     agent_orchestration_config: {
    #       profiling_enabled: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProfilingGroupOutput
    #   resp.data.profiling_group #=> Types::ProfilingGroupDescription
    #   resp.data.profiling_group.name #=> String
    #   resp.data.profiling_group.agent_orchestration_config #=> Types::AgentOrchestrationConfig
    #   resp.data.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.data.profiling_group.arn #=> String
    #   resp.data.profiling_group.created_at #=> Time
    #   resp.data.profiling_group.updated_at #=> Time
    #   resp.data.profiling_group.profiling_status #=> Types::ProfilingStatus
    #   resp.data.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile #=> Types::AggregatedProfileTime
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.data.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of ["PT5M", "PT1H", "P1D"]
    #   resp.data.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.data.profiling_group.compute_platform #=> String, one of ["Default", "AWSLambda"]
    #   resp.data.profiling_group.tags #=> Hash<String, String>
    #   resp.data.profiling_group.tags['key'] #=> String
    #
    def update_profiling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProfilingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProfilingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProfilingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateProfilingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProfilingGroup,
        stubs: @stubs,
        params_class: Params::UpdateProfilingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_profiling_group
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
