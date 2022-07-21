# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AutoScalingPlans
  # An API client for AnyScaleScalingPlannerFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Auto Scaling</fullname>
  #
  #
  #          <p>Use AWS Auto Scaling to create scaling plans for your applications to
  #          automatically scale your scalable AWS resources. </p>
  #          <p>
  #             <b>API Summary</b>
  #          </p>
  #          <p>You can use the AWS Auto Scaling service API to accomplish the following tasks:</p>
  #          <ul>
  #             <li>
  #                <p>Create and manage scaling plans</p>
  #             </li>
  #             <li>
  #                <p>Define target tracking scaling policies to dynamically scale your resources based
  #                on utilization</p>
  #             </li>
  #             <li>
  #                <p>Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic scaling to scale your
  #                Amazon EC2 capacity faster</p>
  #             </li>
  #             <li>
  #                <p>Set minimum and maximum capacity limits</p>
  #             </li>
  #             <li>
  #                <p>Retrieve information on existing scaling plans</p>
  #             </li>
  #             <li>
  #                <p>Access current forecast data and historical forecast data for up to 56 days
  #                previous</p>
  #             </li>
  #          </ul>
  #
  #          <p>To learn more about AWS Auto Scaling, including information about granting IAM users required
  #          permissions for AWS Auto Scaling actions, see the <a href="https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html">AWS Auto Scaling User Guide</a>. </p>
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
    def initialize(config = AWS::SDK::AutoScalingPlans::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a scaling plan. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateScalingPlanInput}.
    #
    # @option params [String] :scaling_plan_name
    #   <p>The name of the scaling plan. Names cannot contain vertical bars, colons, or forward
    #            slashes.</p>
    #
    # @option params [ApplicationSource] :application_source
    #   <p>A CloudFormation stack or set of tags. You can create one scaling plan per application
    #            source.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    # @option params [Array<ScalingInstruction>] :scaling_instructions
    #   <p>The scaling instructions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    # @return [Types::CreateScalingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scaling_plan(
    #     scaling_plan_name: 'ScalingPlanName', # required
    #     application_source: {
    #       cloud_formation_stack_arn: 'CloudFormationStackARN',
    #       tag_filters: [
    #         {
    #           key: 'Key',
    #           values: [
    #             'member'
    #           ]
    #         }
    #       ]
    #     }, # required
    #     scaling_instructions: [
    #       {
    #         service_namespace: 'autoscaling', # required - accepts ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #         resource_id: 'ResourceId', # required
    #         scalable_dimension: 'autoscaling:autoScalingGroup:DesiredCapacity', # required - accepts ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         target_tracking_configurations: [
    #           {
    #             predefined_scaling_metric_specification: {
    #               predefined_scaling_metric_type: 'ASGAverageCPUUtilization', # required - accepts ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"]
    #               resource_label: 'ResourceLabel'
    #             },
    #             customized_scaling_metric_specification: {
    #               metric_name: 'MetricName', # required
    #               namespace: 'Namespace', # required
    #               dimensions: [
    #                 {
    #                   name: 'Name', # required
    #                   value: 'Value' # required
    #                 }
    #               ],
    #               statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #               unit: 'Unit'
    #             },
    #             target_value: 1.0, # required
    #             disable_scale_in: false,
    #             scale_out_cooldown: 1,
    #             scale_in_cooldown: 1,
    #             estimated_instance_warmup: 1
    #           }
    #         ], # required
    #         predefined_load_metric_specification: {
    #           predefined_load_metric_type: 'ASGTotalCPUUtilization', # required - accepts ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #           resource_label: 'ResourceLabel'
    #         },
    #         customized_load_metric_specification: {
    #           metric_name: 'MetricName', # required
    #           namespace: 'Namespace', # required
    #           statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #           unit: 'Unit'
    #         },
    #         scheduled_action_buffer_time: 1,
    #         predictive_scaling_max_capacity_behavior: 'SetForecastCapacityToMaxCapacity', # accepts ["SetForecastCapacityToMaxCapacity", "SetMaxCapacityToForecastCapacity", "SetMaxCapacityAboveForecastCapacity"]
    #         predictive_scaling_max_capacity_buffer: 1,
    #         predictive_scaling_mode: 'ForecastAndScale', # accepts ["ForecastAndScale", "ForecastOnly"]
    #         scaling_policy_update_behavior: 'KeepExternalPolicies', # accepts ["KeepExternalPolicies", "ReplaceExternalPolicies"]
    #         disable_dynamic_scaling: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateScalingPlanOutput
    #   resp.data.scaling_plan_version #=> Integer
    #
    def create_scaling_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScalingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScalingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScalingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::ValidationException, Errors::LimitExceededException, Errors::ConcurrentUpdateException]),
        data_parser: Parsers::CreateScalingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScalingPlan,
        stubs: @stubs,
        params_class: Params::CreateScalingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scaling_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified scaling plan.</p>
    #          <p>Deleting a scaling plan deletes the underlying <a>ScalingInstruction</a> for
    #          all of the scalable resources that are covered by the plan.</p>
    #          <p>If the plan has launched resources or has scaling activities in progress, you must
    #          delete those resources separately.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScalingPlanInput}.
    #
    # @option params [String] :scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    # @option params [Integer] :scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    # @return [Types::DeleteScalingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_plan(
    #     scaling_plan_name: 'ScalingPlanName', # required
    #     scaling_plan_version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScalingPlanOutput
    #
    def delete_scaling_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScalingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScalingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScalingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ObjectNotFoundException, Errors::InternalServiceException, Errors::ValidationException, Errors::ConcurrentUpdateException]),
        data_parser: Parsers::DeleteScalingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScalingPlan,
        stubs: @stubs,
        params_class: Params::DeleteScalingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scaling_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the scalable resources in the specified scaling plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingPlanResourcesInput}.
    #
    # @option params [String] :scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    # @option params [Integer] :scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable resources to return. The value must be between
    #            1 and 50. The default value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScalingPlanResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_plan_resources(
    #     scaling_plan_name: 'ScalingPlanName', # required
    #     scaling_plan_version: 1, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingPlanResourcesOutput
    #   resp.data.scaling_plan_resources #=> Array<ScalingPlanResource>
    #   resp.data.scaling_plan_resources[0] #=> Types::ScalingPlanResource
    #   resp.data.scaling_plan_resources[0].scaling_plan_name #=> String
    #   resp.data.scaling_plan_resources[0].scaling_plan_version #=> Integer
    #   resp.data.scaling_plan_resources[0].service_namespace #=> String, one of ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #   resp.data.scaling_plan_resources[0].resource_id #=> String
    #   resp.data.scaling_plan_resources[0].scalable_dimension #=> String, one of ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #   resp.data.scaling_plan_resources[0].scaling_policies #=> Array<ScalingPolicy>
    #   resp.data.scaling_plan_resources[0].scaling_policies[0] #=> Types::ScalingPolicy
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].policy_name #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].policy_type #=> String, one of ["TargetTrackingScaling"]
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration #=> Types::TargetTrackingConfiguration
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.predefined_scaling_metric_specification #=> Types::PredefinedScalingMetricSpecification
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.predefined_scaling_metric_specification.predefined_scaling_metric_type #=> String, one of ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"]
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.predefined_scaling_metric_specification.resource_label #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification #=> Types::CustomizedScalingMetricSpecification
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.metric_name #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.namespace #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions[0] #=> Types::MetricDimension
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions[0].name #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.dimensions[0].value #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.statistic #=> String, one of ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.customized_scaling_metric_specification.unit #=> String
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.target_value #=> Float
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.disable_scale_in #=> Boolean
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.scale_out_cooldown #=> Integer
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.scale_in_cooldown #=> Integer
    #   resp.data.scaling_plan_resources[0].scaling_policies[0].target_tracking_configuration.estimated_instance_warmup #=> Integer
    #   resp.data.scaling_plan_resources[0].scaling_status_code #=> String, one of ["Inactive", "PartiallyActive", "Active"]
    #   resp.data.scaling_plan_resources[0].scaling_status_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_scaling_plan_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingPlanResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingPlanResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingPlanResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InternalServiceException, Errors::ValidationException, Errors::ConcurrentUpdateException]),
        data_parser: Parsers::DescribeScalingPlanResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingPlanResources,
        stubs: @stubs,
        params_class: Params::DescribeScalingPlanResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_plan_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your scaling plans.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingPlansInput}.
    #
    # @option params [Array<String>] :scaling_plan_names
    #   <p>The names of the scaling plans (up to 10). If you specify application sources, you
    #            cannot specify scaling plan names.</p>
    #
    # @option params [Integer] :scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #            <note>
    #               <p>If you specify a scaling plan version, you must also specify a scaling plan
    #               name.</p>
    #            </note>
    #
    # @option params [Array<ApplicationSource>] :application_sources
    #   <p>The sources for the applications (up to 10). If you specify scaling plan names, you
    #            cannot specify application sources.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of scalable resources to return. This value can be between
    #            1 and 50. The default value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @return [Types::DescribeScalingPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_plans(
    #     scaling_plan_names: [
    #       'member'
    #     ],
    #     scaling_plan_version: 1,
    #     application_sources: [
    #       {
    #         cloud_formation_stack_arn: 'CloudFormationStackARN',
    #         tag_filters: [
    #           {
    #             key: 'Key',
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingPlansOutput
    #   resp.data.scaling_plans #=> Array<ScalingPlan>
    #   resp.data.scaling_plans[0] #=> Types::ScalingPlan
    #   resp.data.scaling_plans[0].scaling_plan_name #=> String
    #   resp.data.scaling_plans[0].scaling_plan_version #=> Integer
    #   resp.data.scaling_plans[0].application_source #=> Types::ApplicationSource
    #   resp.data.scaling_plans[0].application_source.cloud_formation_stack_arn #=> String
    #   resp.data.scaling_plans[0].application_source.tag_filters #=> Array<TagFilter>
    #   resp.data.scaling_plans[0].application_source.tag_filters[0] #=> Types::TagFilter
    #   resp.data.scaling_plans[0].application_source.tag_filters[0].key #=> String
    #   resp.data.scaling_plans[0].application_source.tag_filters[0].values #=> Array<String>
    #   resp.data.scaling_plans[0].application_source.tag_filters[0].values[0] #=> String
    #   resp.data.scaling_plans[0].scaling_instructions #=> Array<ScalingInstruction>
    #   resp.data.scaling_plans[0].scaling_instructions[0] #=> Types::ScalingInstruction
    #   resp.data.scaling_plans[0].scaling_instructions[0].service_namespace #=> String, one of ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].resource_id #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].scalable_dimension #=> String, one of ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].min_capacity #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].max_capacity #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations #=> Array<TargetTrackingConfiguration>
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0] #=> Types::TargetTrackingConfiguration
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].predefined_scaling_metric_specification #=> Types::PredefinedScalingMetricSpecification
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].predefined_scaling_metric_specification.predefined_scaling_metric_type #=> String, one of ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].predefined_scaling_metric_specification.resource_label #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification #=> Types::CustomizedScalingMetricSpecification
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.metric_name #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.namespace #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions[0] #=> Types::MetricDimension
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions[0].name #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.dimensions[0].value #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.statistic #=> String, one of ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].customized_scaling_metric_specification.unit #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].target_value #=> Float
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].disable_scale_in #=> Boolean
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].scale_out_cooldown #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].scale_in_cooldown #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].target_tracking_configurations[0].estimated_instance_warmup #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].predefined_load_metric_specification #=> Types::PredefinedLoadMetricSpecification
    #   resp.data.scaling_plans[0].scaling_instructions[0].predefined_load_metric_specification.predefined_load_metric_type #=> String, one of ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].predefined_load_metric_specification.resource_label #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification #=> Types::CustomizedLoadMetricSpecification
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification.metric_name #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification.namespace #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification.statistic #=> String, one of ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].customized_load_metric_specification.unit #=> String
    #   resp.data.scaling_plans[0].scaling_instructions[0].scheduled_action_buffer_time #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].predictive_scaling_max_capacity_behavior #=> String, one of ["SetForecastCapacityToMaxCapacity", "SetMaxCapacityToForecastCapacity", "SetMaxCapacityAboveForecastCapacity"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].predictive_scaling_max_capacity_buffer #=> Integer
    #   resp.data.scaling_plans[0].scaling_instructions[0].predictive_scaling_mode #=> String, one of ["ForecastAndScale", "ForecastOnly"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].scaling_policy_update_behavior #=> String, one of ["KeepExternalPolicies", "ReplaceExternalPolicies"]
    #   resp.data.scaling_plans[0].scaling_instructions[0].disable_dynamic_scaling #=> Boolean
    #   resp.data.scaling_plans[0].status_code #=> String, one of ["Active", "ActiveWithProblems", "CreationInProgress", "CreationFailed", "DeletionInProgress", "DeletionFailed", "UpdateInProgress", "UpdateFailed"]
    #   resp.data.scaling_plans[0].status_message #=> String
    #   resp.data.scaling_plans[0].status_start_time #=> Time
    #   resp.data.scaling_plans[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_scaling_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingPlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InternalServiceException, Errors::ValidationException, Errors::ConcurrentUpdateException]),
        data_parser: Parsers::DescribeScalingPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingPlans,
        stubs: @stubs,
        params_class: Params::DescribeScalingPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the forecast data for a scalable resource.</p>
    #          <p>Capacity forecasts are represented as predicted values, or data points, that are
    #          calculated using historical data points from a specified CloudWatch load metric. Data points are
    #          available for up to 56 days. </p>
    #
    # @param [Hash] params
    #   See {Types::GetScalingPlanResourceForecastDataInput}.
    #
    # @option params [String] :scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    # @option params [Integer] :scaling_plan_version
    #   <p>The version number of the scaling plan. Currently, the only valid value is
    #               <code>1</code>.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The namespace of the AWS service. The only valid value is <code>autoscaling</code>.
    #         </p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource. This string consists of a prefix (<code>autoScalingGroup</code>)
    #            followed by the name of a specified Auto Scaling group (<code>my-asg</code>). Example:
    #               <code>autoScalingGroup/my-asg</code>. </p>
    #
    # @option params [String] :scalable_dimension
    #   <p>The scalable dimension for the resource. The only valid value is
    #               <code>autoscaling:autoScalingGroup:DesiredCapacity</code>. </p>
    #
    # @option params [String] :forecast_data_type
    #   <p>The type of forecast data to get.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LoadForecast</code>: The load metric forecast. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityForecast</code>: The capacity forecast. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActionMinCapacity</code>: The minimum capacity for each scheduled
    #                  scaling action. This data is calculated as the larger of two values: the capacity
    #                  forecast or the minimum capacity in the scaling instruction.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ScheduledActionMaxCapacity</code>: The maximum capacity for each scheduled
    #                  scaling action. The calculation used is determined by the predictive scaling maximum
    #                  capacity behavior setting in the scaling instruction.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. The date and
    #            time can be at most 56 days before the current date and time. </p>
    #
    # @option params [Time] :end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum time
    #            duration between the start and end time is seven days. </p>
    #            <p>Although this parameter can accept a date and time that is more than two days in the
    #            future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for
    #            periods of two days in advance.</p>
    #
    # @return [Types::GetScalingPlanResourceForecastDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scaling_plan_resource_forecast_data(
    #     scaling_plan_name: 'ScalingPlanName', # required
    #     scaling_plan_version: 1, # required
    #     service_namespace: 'autoscaling', # required - accepts ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #     resource_id: 'ResourceId', # required
    #     scalable_dimension: 'autoscaling:autoScalingGroup:DesiredCapacity', # required - accepts ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #     forecast_data_type: 'CapacityForecast', # required - accepts ["CapacityForecast", "LoadForecast", "ScheduledActionMinCapacity", "ScheduledActionMaxCapacity"]
    #     start_time: Time.now, # required
    #     end_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetScalingPlanResourceForecastDataOutput
    #   resp.data.datapoints #=> Array<Datapoint>
    #   resp.data.datapoints[0] #=> Types::Datapoint
    #   resp.data.datapoints[0].timestamp #=> Time
    #   resp.data.datapoints[0].value #=> Float
    #
    def get_scaling_plan_resource_forecast_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetScalingPlanResourceForecastDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetScalingPlanResourceForecastDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetScalingPlanResourceForecastData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::ValidationException]),
        data_parser: Parsers::GetScalingPlanResourceForecastData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetScalingPlanResourceForecastData,
        stubs: @stubs,
        params_class: Params::GetScalingPlanResourceForecastDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_scaling_plan_resource_forecast_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified scaling plan.</p>
    #          <p>You cannot update a scaling plan if it is in the process of being created, updated, or
    #          deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScalingPlanInput}.
    #
    # @option params [String] :scaling_plan_name
    #   <p>The name of the scaling plan.</p>
    #
    # @option params [Integer] :scaling_plan_version
    #   <p>The version number of the scaling plan. The only valid value is <code>1</code>.
    #            Currently, you cannot have multiple scaling plan versions.</p>
    #
    # @option params [ApplicationSource] :application_source
    #   <p>A CloudFormation stack or set of tags.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    # @option params [Array<ScalingInstruction>] :scaling_instructions
    #   <p>The scaling instructions.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>
    #
    # @return [Types::UpdateScalingPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scaling_plan(
    #     scaling_plan_name: 'ScalingPlanName', # required
    #     scaling_plan_version: 1, # required
    #     application_source: {
    #       cloud_formation_stack_arn: 'CloudFormationStackARN',
    #       tag_filters: [
    #         {
    #           key: 'Key',
    #           values: [
    #             'member'
    #           ]
    #         }
    #       ]
    #     },
    #     scaling_instructions: [
    #       {
    #         service_namespace: 'autoscaling', # required - accepts ["autoscaling", "ecs", "ec2", "rds", "dynamodb"]
    #         resource_id: 'ResourceId', # required
    #         scalable_dimension: 'autoscaling:autoScalingGroup:DesiredCapacity', # required - accepts ["autoscaling:autoScalingGroup:DesiredCapacity", "ecs:service:DesiredCount", "ec2:spot-fleet-request:TargetCapacity", "rds:cluster:ReadReplicaCount", "dynamodb:table:ReadCapacityUnits", "dynamodb:table:WriteCapacityUnits", "dynamodb:index:ReadCapacityUnits", "dynamodb:index:WriteCapacityUnits"]
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #         target_tracking_configurations: [
    #           {
    #             predefined_scaling_metric_specification: {
    #               predefined_scaling_metric_type: 'ASGAverageCPUUtilization', # required - accepts ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "DynamoDBReadCapacityUtilization", "DynamoDBWriteCapacityUtilization", "ECSServiceAverageCPUUtilization", "ECSServiceAverageMemoryUtilization", "ALBRequestCountPerTarget", "RDSReaderAverageCPUUtilization", "RDSReaderAverageDatabaseConnections", "EC2SpotFleetRequestAverageCPUUtilization", "EC2SpotFleetRequestAverageNetworkIn", "EC2SpotFleetRequestAverageNetworkOut"]
    #               resource_label: 'ResourceLabel'
    #             },
    #             customized_scaling_metric_specification: {
    #               metric_name: 'MetricName', # required
    #               namespace: 'Namespace', # required
    #               dimensions: [
    #                 {
    #                   name: 'Name', # required
    #                   value: 'Value' # required
    #                 }
    #               ],
    #               statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #               unit: 'Unit'
    #             },
    #             target_value: 1.0, # required
    #             disable_scale_in: false,
    #             scale_out_cooldown: 1,
    #             scale_in_cooldown: 1,
    #             estimated_instance_warmup: 1
    #           }
    #         ], # required
    #         predefined_load_metric_specification: {
    #           predefined_load_metric_type: 'ASGTotalCPUUtilization', # required - accepts ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #           resource_label: 'ResourceLabel'
    #         },
    #         customized_load_metric_specification: {
    #           metric_name: 'MetricName', # required
    #           namespace: 'Namespace', # required
    #           statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #           unit: 'Unit'
    #         },
    #         scheduled_action_buffer_time: 1,
    #         predictive_scaling_max_capacity_behavior: 'SetForecastCapacityToMaxCapacity', # accepts ["SetForecastCapacityToMaxCapacity", "SetMaxCapacityToForecastCapacity", "SetMaxCapacityAboveForecastCapacity"]
    #         predictive_scaling_max_capacity_buffer: 1,
    #         predictive_scaling_mode: 'ForecastAndScale', # accepts ["ForecastAndScale", "ForecastOnly"]
    #         scaling_policy_update_behavior: 'KeepExternalPolicies', # accepts ["KeepExternalPolicies", "ReplaceExternalPolicies"]
    #         disable_dynamic_scaling: false
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScalingPlanOutput
    #
    def update_scaling_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScalingPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScalingPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScalingPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ObjectNotFoundException, Errors::InternalServiceException, Errors::ValidationException, Errors::ConcurrentUpdateException]),
        data_parser: Parsers::UpdateScalingPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScalingPlan,
        stubs: @stubs,
        params_class: Params::UpdateScalingPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scaling_plan
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
