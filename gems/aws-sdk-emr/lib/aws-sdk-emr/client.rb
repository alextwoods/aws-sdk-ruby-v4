# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EMR
  # An API client for ElasticMapReduce
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EMR is a web service that makes it easier to process large amounts of
  #          data efficiently. Amazon EMR uses Hadoop processing combined with several Amazon Web Services services to do tasks such as web indexing, data mining, log file analysis,
  #          machine learning, scientific simulation, and data warehouse management.</p>
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
    def initialize(config = AWS::SDK::EMR::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds an instance fleet to a running cluster.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AddInstanceFleetInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    # @option params [InstanceFleetConfig] :instance_fleet
    #   <p>Specifies the configuration of the instance fleet.</p>
    #
    # @return [Types::AddInstanceFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_fleet(
    #     cluster_id: 'ClusterId', # required
    #     instance_fleet: {
    #       name: 'Name',
    #       instance_fleet_type: 'MASTER', # required - accepts ["MASTER", "CORE", "TASK"]
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #       instance_type_configs: [
    #         {
    #           instance_type: 'InstanceType', # required
    #           weighted_capacity: 1,
    #           bid_price: 'BidPrice',
    #           bid_price_as_percentage_of_on_demand_price: 1.0,
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: {
    #                   volume_type: 'VolumeType', # required
    #                   iops: 1,
    #                   size_in_gb: 1 # required
    #                 }, # required
    #                 volumes_per_instance: 1
    #               }
    #             ],
    #             ebs_optimized: false
    #           },
    #           configurations: [
    #             {
    #               classification: 'Classification',
    #               properties: {
    #                 'key' => 'value'
    #               }
    #             }
    #           ],
    #           custom_ami_id: 'CustomAmiId'
    #         }
    #       ],
    #       launch_specifications: {
    #         spot_specification: {
    #           timeout_duration_minutes: 1, # required
    #           timeout_action: 'SWITCH_TO_ON_DEMAND', # required - accepts ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"]
    #           block_duration_minutes: 1,
    #           allocation_strategy: 'capacity-optimized' # accepts ["capacity-optimized"]
    #         },
    #         on_demand_specification: {
    #           allocation_strategy: 'lowest-price', # required - accepts ["lowest-price"]
    #           capacity_reservation_options: {
    #             usage_strategy: 'use-capacity-reservations-first', # accepts ["use-capacity-reservations-first"]
    #             capacity_reservation_preference: 'open', # accepts ["open", "none"]
    #             capacity_reservation_resource_group_arn: 'CapacityReservationResourceGroupArn'
    #           }
    #         }
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddInstanceFleetOutput
    #   resp.data.cluster_id #=> String
    #   resp.data.instance_fleet_id #=> String
    #   resp.data.cluster_arn #=> String
    #
    def add_instance_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddInstanceFleetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddInstanceFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddInstanceFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::AddInstanceFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddInstanceFleet,
        stubs: @stubs,
        params_class: Params::AddInstanceFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_instance_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more instance groups to a running cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::AddInstanceGroupsInput}.
    #
    # @option params [Array<InstanceGroupConfig>] :instance_groups
    #   <p>Instance groups to add.</p>
    #
    # @option params [String] :job_flow_id
    #   <p>Job flow in which to add the instance groups.</p>
    #
    # @return [Types::AddInstanceGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_instance_groups(
    #     instance_groups: [
    #       {
    #         name: 'Name',
    #         market: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #         instance_role: 'MASTER', # required - accepts ["MASTER", "CORE", "TASK"]
    #         bid_price: 'BidPrice',
    #         instance_type: 'InstanceType', # required
    #         instance_count: 1, # required
    #         configurations: [
    #           {
    #             classification: 'Classification',
    #             properties: {
    #               'key' => 'value'
    #             }
    #           }
    #         ],
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: {
    #                 volume_type: 'VolumeType', # required
    #                 iops: 1,
    #                 size_in_gb: 1 # required
    #               }, # required
    #               volumes_per_instance: 1
    #             }
    #           ],
    #           ebs_optimized: false
    #         },
    #         auto_scaling_policy: {
    #           constraints: {
    #             min_capacity: 1, # required
    #             max_capacity: 1 # required
    #           }, # required
    #           rules: [
    #             {
    #               name: 'Name', # required
    #               description: 'Description',
    #               action: {
    #                 market: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #                 simple_scaling_policy_configuration: {
    #                   adjustment_type: 'CHANGE_IN_CAPACITY', # accepts ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1
    #                 } # required
    #               }, # required
    #               trigger: {
    #                 cloud_watch_alarm_definition: {
    #                   comparison_operator: 'GREATER_THAN_OR_EQUAL', # required - accepts ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #                   evaluation_periods: 1,
    #                   metric_name: 'MetricName', # required
    #                   namespace: 'Namespace',
    #                   period: 1, # required
    #                   statistic: 'SAMPLE_COUNT', # accepts ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #                   threshold: 1.0, # required
    #                   unit: 'NONE', # accepts ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #                   dimensions: [
    #                     {
    #                       key: 'Key',
    #                       value: 'Value'
    #                     }
    #                   ]
    #                 } # required
    #               } # required
    #             }
    #           ] # required
    #         },
    #         custom_ami_id: 'CustomAmiId'
    #       }
    #     ], # required
    #     job_flow_id: 'JobFlowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddInstanceGroupsOutput
    #   resp.data.job_flow_id #=> String
    #   resp.data.instance_group_ids #=> Array<String>
    #   resp.data.instance_group_ids[0] #=> String
    #   resp.data.cluster_arn #=> String
    #
    def add_instance_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddInstanceGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddInstanceGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddInstanceGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::AddInstanceGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddInstanceGroups,
        stubs: @stubs,
        params_class: Params::AddInstanceGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_instance_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed
    #          in each job flow.</p>
    #          <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may
    #          require more than 256 steps to process your data. You can bypass the 256-step limitation in
    #          various ways, including using SSH to connect to the master node and submitting queries
    #          directly to the software running on the master node, such as Hive and Hadoop. For more
    #          information on how to do this, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a
    #             Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p>
    #          <p>A step specifies the location of a JAR file stored either on the master node of the
    #          cluster or in Amazon S3. Each step is performed by the main function of the main
    #          class of the JAR file. The main class can be specified either in the manifest of the JAR or
    #          by using the MainFunction parameter of the step.</p>
    #          <p>Amazon EMR executes each step in the order listed. For a step to be considered
    #          complete, the main function must exit with a zero exit code and all Hadoop jobs started
    #          while the step was running must have completed and run successfully.</p>
    #          <p>You can only add steps to a cluster that is in one of the following states: STARTING,
    #          BOOTSTRAPPING, RUNNING, or WAITING.</p>
    #          <note>
    #             <p>The string values passed into <code>HadoopJarStep</code> object cannot exceed a total
    #             of 10240 characters.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AddJobFlowStepsInput}.
    #
    # @option params [String] :job_flow_id
    #   <p>A string that uniquely identifies the job flow. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>ListClusters</a>.
    #         </p>
    #
    # @option params [Array<StepConfig>] :steps
    #   <p> A list of <a>StepConfig</a> to be executed by the job flow. </p>
    #
    # @return [Types::AddJobFlowStepsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_job_flow_steps(
    #     job_flow_id: 'JobFlowId', # required
    #     steps: [
    #       {
    #         name: 'Name', # required
    #         action_on_failure: 'TERMINATE_JOB_FLOW', # accepts ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #         hadoop_jar_step: {
    #           properties: [
    #             {
    #               key: 'Key',
    #               value: 'Value'
    #             }
    #           ],
    #           jar: 'Jar', # required
    #           main_class: 'MainClass',
    #           args: [
    #             'member'
    #           ]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddJobFlowStepsOutput
    #   resp.data.step_ids #=> Array<String>
    #   resp.data.step_ids[0] #=> String
    #
    def add_job_flow_steps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddJobFlowStepsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddJobFlowStepsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddJobFlowSteps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::AddJobFlowSteps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddJobFlowSteps,
        stubs: @stubs,
        params_class: Params::AddJobFlowStepsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_job_flow_steps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR
    #          Studio. Tags make it easier to associate resources in various ways, such as grouping
    #          clusters to track your Amazon EMR resource allocation costs. For more information,
    #          see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag
    #             Clusters</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The Amazon EMR resource identifier to which tags will be added. For example, a
    #            cluster identifier or an Amazon EMR Studio ID.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to associate with a resource. Tags are user-defined key-value pairs that
    #            consist of a required key string with a maximum of 128 characters, and an optional value
    #            string with a maximum of 256 characters.</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     resource_id: 'ResourceId', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
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

    # <p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in
    #          each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee
    #          that a step will be canceled, even if the request is successfully submitted. When you use
    #             Amazon EMR versions 5.28.0 and later, you can cancel steps that are in a
    #             <code>PENDING</code> or <code>RUNNING</code> state. In earlier versions of Amazon EMR, you can only cancel steps that are in a <code>PENDING</code> state. </p>
    #
    # @param [Hash] params
    #   See {Types::CancelStepsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The <code>ClusterID</code> for the specified steps that will be canceled. Use <a>RunJobFlow</a> and <a>ListClusters</a> to get ClusterIDs. </p>
    #
    # @option params [Array<String>] :step_ids
    #   <p>The list of <code>StepIDs</code> to cancel. Use <a>ListSteps</a> to get steps
    #            and their states for the specified cluster.</p>
    #
    # @option params [String] :step_cancellation_option
    #   <p>The option to choose to cancel <code>RUNNING</code> steps. By default, the value is
    #               <code>SEND_INTERRUPT</code>.</p>
    #
    # @return [Types::CancelStepsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_steps(
    #     cluster_id: 'ClusterId', # required
    #     step_ids: [
    #       'member'
    #     ], # required
    #     step_cancellation_option: 'SEND_INTERRUPT' # accepts ["SEND_INTERRUPT", "TERMINATE_PROCESS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelStepsOutput
    #   resp.data.cancel_steps_info_list #=> Array<CancelStepsInfo>
    #   resp.data.cancel_steps_info_list[0] #=> Types::CancelStepsInfo
    #   resp.data.cancel_steps_info_list[0].step_id #=> String
    #   resp.data.cancel_steps_info_list[0].status #=> String, one of ["SUBMITTED", "FAILED"]
    #   resp.data.cancel_steps_info_list[0].reason #=> String
    #
    def cancel_steps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelStepsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelStepsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelSteps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::CancelSteps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelSteps,
        stubs: @stubs,
        params_class: Params::CancelStepsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_steps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a security configuration, which is stored in the service and can be specified
    #          when a cluster is created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSecurityConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    #
    # @option params [String] :security_configuration
    #   <p>The security configuration details in JSON format. For JSON parameters and examples, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html">Use Security
    #               Configurations to Set Up Cluster Security</a> in the <i>Amazon EMR
    #               Management Guide</i>.</p>
    #
    # @return [Types::CreateSecurityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_configuration(
    #     name: 'Name', # required
    #     security_configuration: 'SecurityConfiguration' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSecurityConfigurationOutput
    #   resp.data.name #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def create_security_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSecurityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSecurityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSecurityConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateSecurityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSecurityConfiguration,
        stubs: @stubs,
        params_class: Params::CreateSecurityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_security_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon EMR Studio.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStudioInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    #
    # @option params [String] :description
    #   <p>A detailed description of the Amazon EMR Studio.</p>
    #
    # @option params [String] :auth_mode
    #   <p>Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the
    #            Studio.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have
    #            a maximum of 5 subnets. The subnets must belong to the VPC specified by <code>VpcId</code>.
    #            Studio users can create a Workspace in any of the specified subnets.</p>
    #
    # @option params [String] :service_role
    #   <p>The IAM role that the Amazon EMR Studio assumes. The service role provides a way
    #            for Amazon EMR Studio to interoperate with other Amazon Web Services
    #            services.</p>
    #
    # @option params [String] :user_role
    #   <p>The IAM user role that users and groups assume when logged in to an Amazon EMR
    #            Studio. Only specify a <code>UserRole</code> when you use Amazon Web Services SSO
    #            authentication. The permissions attached to the <code>UserRole</code> can be scoped down
    #            for each user or group using session policies.</p>
    #
    # @option params [String] :workspace_security_group_id
    #   <p>The ID of the Amazon EMR Studio Workspace security group. The Workspace security
    #            group allows outbound network traffic to resources in the Engine security group, and it
    #            must be in the same VPC specified by <code>VpcId</code>.</p>
    #
    # @option params [String] :engine_security_group_id
    #   <p>The ID of the Amazon EMR Studio Engine security group. The Engine security group
    #            allows inbound network traffic from the Workspace security group, and it must be in the
    #            same VPC specified by <code>VpcId</code>.</p>
    #
    # @option params [String] :default_s3_location
    #   <p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #            notebook files.</p>
    #
    # @option params [String] :idp_auth_url
    #   <p>The authentication endpoint of your identity provider (IdP). Specify this value when you
    #            use IAM authentication and want to let federated users log in to a Studio
    #            with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects
    #            users to this endpoint to enter credentials.</p>
    #
    # @option params [String] :idp_relay_state_parameter_name
    #   <p>The name that your identity provider (IdP) uses for its <code>RelayState</code>
    #            parameter. For example, <code>RelayState</code> or <code>TargetSource</code>. Specify this
    #            value when you use IAM authentication and want to let federated users log in
    #            to a Studio using the Studio URL. The <code>RelayState</code> parameter differs by
    #            IdP.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to associate with the Amazon EMR Studio. Tags are user-defined
    #            key-value pairs that consist of a required key string with a maximum of 128 characters, and
    #            an optional value string with a maximum of 256 characters.</p>
    #
    # @return [Types::CreateStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio(
    #     name: 'Name', # required
    #     description: 'Description',
    #     auth_mode: 'SSO', # required - accepts ["SSO", "IAM"]
    #     vpc_id: 'VpcId', # required
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     service_role: 'ServiceRole', # required
    #     user_role: 'UserRole',
    #     workspace_security_group_id: 'WorkspaceSecurityGroupId', # required
    #     engine_security_group_id: 'EngineSecurityGroupId', # required
    #     default_s3_location: 'DefaultS3Location', # required
    #     idp_auth_url: 'IdpAuthUrl',
    #     idp_relay_state_parameter_name: 'IdpRelayStateParameterName',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStudioOutput
    #   resp.data.studio_id #=> String
    #   resp.data.url #=> String
    #
    def create_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStudio,
        stubs: @stubs,
        params_class: Params::CreateStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Maps a user or group to the Amazon EMR Studio specified by
    #          <code>StudioId</code>, and applies a session policy to refine Studio permissions for that
    #          user or group. Use <code>CreateStudioSessionMapping</code> to assign users to a Studio when
    #          you use Amazon Web Services SSO authentication. For instructions on how to assign users to a
    #          Studio when you use IAM authentication, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups">Assign a user or group to your EMR Studio</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStudioSessionMappingInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio to which the user or group will be
    #            mapped.</p>
    #
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO
    #            Identity Store. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    #
    # @option params [String] :identity_name
    #   <p>The name of the user or group. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    #
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to map to the Amazon EMR Studio is a user or a
    #            group.</p>
    #
    # @option params [String] :session_policy_arn
    #   <p>The Amazon Resource Name (ARN) for the session policy that will be applied to the user
    #            or group. You should specify the ARN for the session policy that you want to apply, not the
    #            ARN of your user role. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-user-role.html">Create an EMR Studio User
    #               Role with Session Policies</a>.</p>
    #
    # @return [Types::CreateStudioSessionMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio_session_mapping(
    #     studio_id: 'StudioId', # required
    #     identity_id: 'IdentityId',
    #     identity_name: 'IdentityName',
    #     identity_type: 'USER', # required - accepts ["USER", "GROUP"]
    #     session_policy_arn: 'SessionPolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStudioSessionMappingOutput
    #
    def create_studio_session_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStudioSessionMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStudioSessionMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStudioSessionMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateStudioSessionMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStudioSessionMapping,
        stubs: @stubs,
        params_class: Params::CreateStudioSessionMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_studio_session_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a security configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSecurityConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    #
    # @return [Types::DeleteSecurityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_configuration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSecurityConfigurationOutput
    #
    def delete_security_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSecurityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSecurityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSecurityConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteSecurityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSecurityConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteSecurityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_security_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an Amazon EMR Studio from the Studio metadata store.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStudioInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    # @return [Types::DeleteStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio(
    #     studio_id: 'StudioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStudioOutput
    #
    def delete_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStudio,
        stubs: @stubs,
        params_class: Params::DeleteStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user or group from an Amazon EMR Studio.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStudioSessionMappingInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR Studio. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    # @option params [String] :identity_name
    #   <p>The name of the user name or group to remove from the Amazon EMR Studio. For
    #            more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Store API Reference</i>.
    #            Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>
    #
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to delete from the Amazon EMR Studio is a user or
    #            a group.</p>
    #
    # @return [Types::DeleteStudioSessionMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_session_mapping(
    #     studio_id: 'StudioId', # required
    #     identity_id: 'IdentityId',
    #     identity_name: 'IdentityName',
    #     identity_type: 'USER' # required - accepts ["USER", "GROUP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStudioSessionMappingOutput
    #
    def delete_studio_session_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStudioSessionMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStudioSessionMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStudioSessionMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteStudioSessionMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStudioSessionMapping,
        stubs: @stubs,
        params_class: Params::DeleteStudioSessionMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_studio_session_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides cluster-level details including status, hardware and software configuration,
    #          VPC settings, and so on.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster to describe.</p>
    #
    # @return [Types::DescribeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.id #=> String
    #   resp.data.cluster.name #=> String
    #   resp.data.cluster.status #=> Types::ClusterStatus
    #   resp.data.cluster.status.state #=> String, one of ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #   resp.data.cluster.status.state_change_reason #=> Types::ClusterStateChangeReason
    #   resp.data.cluster.status.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"]
    #   resp.data.cluster.status.state_change_reason.message #=> String
    #   resp.data.cluster.status.timeline #=> Types::ClusterTimeline
    #   resp.data.cluster.status.timeline.creation_date_time #=> Time
    #   resp.data.cluster.status.timeline.ready_date_time #=> Time
    #   resp.data.cluster.status.timeline.end_date_time #=> Time
    #   resp.data.cluster.ec2_instance_attributes #=> Types::Ec2InstanceAttributes
    #   resp.data.cluster.ec2_instance_attributes.ec2_key_name #=> String
    #   resp.data.cluster.ec2_instance_attributes.ec2_subnet_id #=> String
    #   resp.data.cluster.ec2_instance_attributes.requested_ec2_subnet_ids #=> Array<String>
    #   resp.data.cluster.ec2_instance_attributes.requested_ec2_subnet_ids[0] #=> String
    #   resp.data.cluster.ec2_instance_attributes.ec2_availability_zone #=> String
    #   resp.data.cluster.ec2_instance_attributes.requested_ec2_availability_zones #=> Array<String>
    #   resp.data.cluster.ec2_instance_attributes.iam_instance_profile #=> String
    #   resp.data.cluster.ec2_instance_attributes.emr_managed_master_security_group #=> String
    #   resp.data.cluster.ec2_instance_attributes.emr_managed_slave_security_group #=> String
    #   resp.data.cluster.ec2_instance_attributes.service_access_security_group #=> String
    #   resp.data.cluster.ec2_instance_attributes.additional_master_security_groups #=> Array<String>
    #   resp.data.cluster.ec2_instance_attributes.additional_master_security_groups[0] #=> String
    #   resp.data.cluster.ec2_instance_attributes.additional_slave_security_groups #=> Array<String>
    #   resp.data.cluster.instance_collection_type #=> String, one of ["INSTANCE_FLEET", "INSTANCE_GROUP"]
    #   resp.data.cluster.log_uri #=> String
    #   resp.data.cluster.log_encryption_kms_key_id #=> String
    #   resp.data.cluster.requested_ami_version #=> String
    #   resp.data.cluster.running_ami_version #=> String
    #   resp.data.cluster.release_label #=> String
    #   resp.data.cluster.auto_terminate #=> Boolean
    #   resp.data.cluster.termination_protected #=> Boolean
    #   resp.data.cluster.visible_to_all_users #=> Boolean
    #   resp.data.cluster.applications #=> Array<Application>
    #   resp.data.cluster.applications[0] #=> Types::Application
    #   resp.data.cluster.applications[0].name #=> String
    #   resp.data.cluster.applications[0].version #=> String
    #   resp.data.cluster.applications[0].args #=> Array<String>
    #   resp.data.cluster.applications[0].additional_info #=> Hash<String, String>
    #   resp.data.cluster.applications[0].additional_info['key'] #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.service_role #=> String
    #   resp.data.cluster.normalized_instance_hours #=> Integer
    #   resp.data.cluster.master_public_dns_name #=> String
    #   resp.data.cluster.configurations #=> Array<Configuration>
    #   resp.data.cluster.configurations[0] #=> Types::Configuration
    #   resp.data.cluster.configurations[0].classification #=> String
    #   resp.data.cluster.configurations[0].configurations #=> Array<Configuration>
    #   resp.data.cluster.configurations[0].properties #=> Hash<String, String>
    #   resp.data.cluster.security_configuration #=> String
    #   resp.data.cluster.auto_scaling_role #=> String
    #   resp.data.cluster.scale_down_behavior #=> String, one of ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #   resp.data.cluster.custom_ami_id #=> String
    #   resp.data.cluster.ebs_root_volume_size #=> Integer
    #   resp.data.cluster.repo_upgrade_on_boot #=> String, one of ["SECURITY", "NONE"]
    #   resp.data.cluster.kerberos_attributes #=> Types::KerberosAttributes
    #   resp.data.cluster.kerberos_attributes.realm #=> String
    #   resp.data.cluster.kerberos_attributes.kdc_admin_password #=> String
    #   resp.data.cluster.kerberos_attributes.cross_realm_trust_principal_password #=> String
    #   resp.data.cluster.kerberos_attributes.ad_domain_join_user #=> String
    #   resp.data.cluster.kerberos_attributes.ad_domain_join_password #=> String
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.outpost_arn #=> String
    #   resp.data.cluster.step_concurrency_level #=> Integer
    #   resp.data.cluster.placement_groups #=> Array<PlacementGroupConfig>
    #   resp.data.cluster.placement_groups[0] #=> Types::PlacementGroupConfig
    #   resp.data.cluster.placement_groups[0].instance_role #=> String, one of ["MASTER", "CORE", "TASK"]
    #   resp.data.cluster.placement_groups[0].placement_strategy #=> String, one of ["SPREAD", "PARTITION", "CLUSTER", "NONE"]
    #   resp.data.cluster.os_release_label #=> String
    #
    def describe_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCluster,
        stubs: @stubs,
        params_class: Params::DescribeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is no longer supported and will eventually be removed. We recommend you use
    #             <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p>
    #          <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters.
    #          The parameters can include a list of job flow IDs, job flow states, and restrictions on job
    #          flow creation date and time.</p>
    #          <p>Regardless of supplied parameters, only job flows created within the last two months are
    #          returned.</p>
    #          <p>If no parameters are supplied, then job flows matching either of the following criteria
    #          are returned:</p>
    #          <ul>
    #             <li>
    #                <p>Job flows created and completed in the last two weeks</p>
    #             </li>
    #             <li>
    #                <p> Job flows created within the last two months that are in one of the following
    #                states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>,
    #                   <code>STARTING</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DescribeJobFlowsInput}.
    #
    # @option params [Time] :created_after
    #   <p>Return only job flows created after this date and time.</p>
    #
    # @option params [Time] :created_before
    #   <p>Return only job flows created before this date and time.</p>
    #
    # @option params [Array<String>] :job_flow_ids
    #   <p>Return only job flows whose job flow ID is contained in this list.</p>
    #
    # @option params [Array<String>] :job_flow_states
    #   <p>Return only job flows whose state is contained in this list.</p>
    #
    # @return [Types::DescribeJobFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_flows(
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     job_flow_ids: [
    #       'member'
    #     ],
    #     job_flow_states: [
    #       'STARTING' # accepts ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobFlowsOutput
    #   resp.data.job_flows #=> Array<JobFlowDetail>
    #   resp.data.job_flows[0] #=> Types::JobFlowDetail
    #   resp.data.job_flows[0].job_flow_id #=> String
    #   resp.data.job_flows[0].name #=> String
    #   resp.data.job_flows[0].log_uri #=> String
    #   resp.data.job_flows[0].log_encryption_kms_key_id #=> String
    #   resp.data.job_flows[0].ami_version #=> String
    #   resp.data.job_flows[0].execution_status_detail #=> Types::JobFlowExecutionStatusDetail
    #   resp.data.job_flows[0].execution_status_detail.state #=> String, one of ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"]
    #   resp.data.job_flows[0].execution_status_detail.creation_date_time #=> Time
    #   resp.data.job_flows[0].execution_status_detail.start_date_time #=> Time
    #   resp.data.job_flows[0].execution_status_detail.ready_date_time #=> Time
    #   resp.data.job_flows[0].execution_status_detail.end_date_time #=> Time
    #   resp.data.job_flows[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.data.job_flows[0].instances #=> Types::JobFlowInstancesDetail
    #   resp.data.job_flows[0].instances.master_instance_type #=> String
    #   resp.data.job_flows[0].instances.master_public_dns_name #=> String
    #   resp.data.job_flows[0].instances.master_instance_id #=> String
    #   resp.data.job_flows[0].instances.slave_instance_type #=> String
    #   resp.data.job_flows[0].instances.instance_count #=> Integer
    #   resp.data.job_flows[0].instances.instance_groups #=> Array<InstanceGroupDetail>
    #   resp.data.job_flows[0].instances.instance_groups[0] #=> Types::InstanceGroupDetail
    #   resp.data.job_flows[0].instances.instance_groups[0].instance_group_id #=> String
    #   resp.data.job_flows[0].instances.instance_groups[0].name #=> String
    #   resp.data.job_flows[0].instances.instance_groups[0].market #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.job_flows[0].instances.instance_groups[0].instance_role #=> String, one of ["MASTER", "CORE", "TASK"]
    #   resp.data.job_flows[0].instances.instance_groups[0].bid_price #=> String
    #   resp.data.job_flows[0].instances.instance_groups[0].instance_type #=> String
    #   resp.data.job_flows[0].instances.instance_groups[0].instance_request_count #=> Integer
    #   resp.data.job_flows[0].instances.instance_groups[0].instance_running_count #=> Integer
    #   resp.data.job_flows[0].instances.instance_groups[0].state #=> String, one of ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"]
    #   resp.data.job_flows[0].instances.instance_groups[0].last_state_change_reason #=> String
    #   resp.data.job_flows[0].instances.instance_groups[0].creation_date_time #=> Time
    #   resp.data.job_flows[0].instances.instance_groups[0].start_date_time #=> Time
    #   resp.data.job_flows[0].instances.instance_groups[0].ready_date_time #=> Time
    #   resp.data.job_flows[0].instances.instance_groups[0].end_date_time #=> Time
    #   resp.data.job_flows[0].instances.instance_groups[0].custom_ami_id #=> String
    #   resp.data.job_flows[0].instances.normalized_instance_hours #=> Integer
    #   resp.data.job_flows[0].instances.ec2_key_name #=> String
    #   resp.data.job_flows[0].instances.ec2_subnet_id #=> String
    #   resp.data.job_flows[0].instances.placement #=> Types::PlacementType
    #   resp.data.job_flows[0].instances.placement.availability_zone #=> String
    #   resp.data.job_flows[0].instances.placement.availability_zones #=> Array<String>
    #   resp.data.job_flows[0].instances.placement.availability_zones[0] #=> String
    #   resp.data.job_flows[0].instances.keep_job_flow_alive_when_no_steps #=> Boolean
    #   resp.data.job_flows[0].instances.termination_protected #=> Boolean
    #   resp.data.job_flows[0].instances.hadoop_version #=> String
    #   resp.data.job_flows[0].steps #=> Array<StepDetail>
    #   resp.data.job_flows[0].steps[0] #=> Types::StepDetail
    #   resp.data.job_flows[0].steps[0].step_config #=> Types::StepConfig
    #   resp.data.job_flows[0].steps[0].step_config.name #=> String
    #   resp.data.job_flows[0].steps[0].step_config.action_on_failure #=> String, one of ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step #=> Types::HadoopJarStepConfig
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.properties #=> Array<KeyValue>
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0] #=> Types::KeyValue
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].key #=> String
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.properties[0].value #=> String
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.jar #=> String
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.main_class #=> String
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.args #=> Array<String>
    #   resp.data.job_flows[0].steps[0].step_config.hadoop_jar_step.args[0] #=> String
    #   resp.data.job_flows[0].steps[0].execution_status_detail #=> Types::StepExecutionStatusDetail
    #   resp.data.job_flows[0].steps[0].execution_status_detail.state #=> String, one of ["PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #   resp.data.job_flows[0].steps[0].execution_status_detail.creation_date_time #=> Time
    #   resp.data.job_flows[0].steps[0].execution_status_detail.start_date_time #=> Time
    #   resp.data.job_flows[0].steps[0].execution_status_detail.end_date_time #=> Time
    #   resp.data.job_flows[0].steps[0].execution_status_detail.last_state_change_reason #=> String
    #   resp.data.job_flows[0].bootstrap_actions #=> Array<BootstrapActionDetail>
    #   resp.data.job_flows[0].bootstrap_actions[0] #=> Types::BootstrapActionDetail
    #   resp.data.job_flows[0].bootstrap_actions[0].bootstrap_action_config #=> Types::BootstrapActionConfig
    #   resp.data.job_flows[0].bootstrap_actions[0].bootstrap_action_config.name #=> String
    #   resp.data.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action #=> Types::ScriptBootstrapActionConfig
    #   resp.data.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.path #=> String
    #   resp.data.job_flows[0].bootstrap_actions[0].bootstrap_action_config.script_bootstrap_action.args #=> Array<String>
    #   resp.data.job_flows[0].supported_products #=> Array<String>
    #   resp.data.job_flows[0].supported_products[0] #=> String
    #   resp.data.job_flows[0].visible_to_all_users #=> Boolean
    #   resp.data.job_flows[0].job_flow_role #=> String
    #   resp.data.job_flows[0].service_role #=> String
    #   resp.data.job_flows[0].auto_scaling_role #=> String
    #   resp.data.job_flows[0].scale_down_behavior #=> String, one of ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #
    def describe_job_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobFlowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobFlows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeJobFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobFlows,
        stubs: @stubs,
        params_class: Params::DescribeJobFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details of a notebook execution.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotebookExecutionInput}.
    #
    # @option params [String] :notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    # @return [Types::DescribeNotebookExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_execution(
    #     notebook_execution_id: 'NotebookExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotebookExecutionOutput
    #   resp.data.notebook_execution #=> Types::NotebookExecution
    #   resp.data.notebook_execution.notebook_execution_id #=> String
    #   resp.data.notebook_execution.editor_id #=> String
    #   resp.data.notebook_execution.execution_engine #=> Types::ExecutionEngineConfig
    #   resp.data.notebook_execution.execution_engine.id #=> String
    #   resp.data.notebook_execution.execution_engine.type #=> String, one of ["EMR"]
    #   resp.data.notebook_execution.execution_engine.master_instance_security_group_id #=> String
    #   resp.data.notebook_execution.notebook_execution_name #=> String
    #   resp.data.notebook_execution.notebook_params #=> String
    #   resp.data.notebook_execution.status #=> String, one of ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #   resp.data.notebook_execution.start_time #=> Time
    #   resp.data.notebook_execution.end_time #=> Time
    #   resp.data.notebook_execution.arn #=> String
    #   resp.data.notebook_execution.output_notebook_uri #=> String
    #   resp.data.notebook_execution.last_state_change_reason #=> String
    #   resp.data.notebook_execution.notebook_instance_security_group_id #=> String
    #   resp.data.notebook_execution.tags #=> Array<Tag>
    #   resp.data.notebook_execution.tags[0] #=> Types::Tag
    #   resp.data.notebook_execution.tags[0].key #=> String
    #   resp.data.notebook_execution.tags[0].value #=> String
    #
    def describe_notebook_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotebookExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotebookExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotebookExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeNotebookExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotebookExecution,
        stubs: @stubs,
        params_class: Params::DescribeNotebookExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notebook_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides EMR release label details, such as releases available the region where the API
    #          request is run, and the available applications for a specific EMR release label. Can also
    #          list EMR release versions that support a specified version of Spark.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReleaseLabelInput}.
    #
    # @option params [String] :release_label
    #   <p>The target release label to be described.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token. Reserved for future use. Currently set to null.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Reserved for future use. Currently set to null.</p>
    #
    # @return [Types::DescribeReleaseLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_release_label(
    #     release_label: 'ReleaseLabel',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReleaseLabelOutput
    #   resp.data.release_label #=> String
    #   resp.data.applications #=> Array<SimplifiedApplication>
    #   resp.data.applications[0] #=> Types::SimplifiedApplication
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].version #=> String
    #   resp.data.next_token #=> String
    #   resp.data.available_os_releases #=> Array<OSRelease>
    #   resp.data.available_os_releases[0] #=> Types::OSRelease
    #   resp.data.available_os_releases[0].label #=> String
    #
    def describe_release_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReleaseLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReleaseLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReleaseLabel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeReleaseLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReleaseLabel,
        stubs: @stubs,
        params_class: Params::DescribeReleaseLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_release_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the details of a security configuration by returning the configuration
    #          JSON.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSecurityConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    #
    # @return [Types::DescribeSecurityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_configuration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSecurityConfigurationOutput
    #   resp.data.name #=> String
    #   resp.data.security_configuration #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def describe_security_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSecurityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSecurityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSecurityConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeSecurityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSecurityConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeSecurityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_security_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides more detail about the cluster step.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStepInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster with steps to describe.</p>
    #
    # @option params [String] :step_id
    #   <p>The identifier of the step to describe.</p>
    #
    # @return [Types::DescribeStepOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_step(
    #     cluster_id: 'ClusterId', # required
    #     step_id: 'StepId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStepOutput
    #   resp.data.step #=> Types::Step
    #   resp.data.step.id #=> String
    #   resp.data.step.name #=> String
    #   resp.data.step.config #=> Types::HadoopStepConfig
    #   resp.data.step.config.jar #=> String
    #   resp.data.step.config.properties #=> Hash<String, String>
    #   resp.data.step.config.properties['key'] #=> String
    #   resp.data.step.config.main_class #=> String
    #   resp.data.step.config.args #=> Array<String>
    #   resp.data.step.config.args[0] #=> String
    #   resp.data.step.action_on_failure #=> String, one of ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #   resp.data.step.status #=> Types::StepStatus
    #   resp.data.step.status.state #=> String, one of ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #   resp.data.step.status.state_change_reason #=> Types::StepStateChangeReason
    #   resp.data.step.status.state_change_reason.code #=> String, one of ["NONE"]
    #   resp.data.step.status.state_change_reason.message #=> String
    #   resp.data.step.status.failure_details #=> Types::FailureDetails
    #   resp.data.step.status.failure_details.reason #=> String
    #   resp.data.step.status.failure_details.message #=> String
    #   resp.data.step.status.failure_details.log_file #=> String
    #   resp.data.step.status.timeline #=> Types::StepTimeline
    #   resp.data.step.status.timeline.creation_date_time #=> Time
    #   resp.data.step.status.timeline.start_date_time #=> Time
    #   resp.data.step.status.timeline.end_date_time #=> Time
    #
    def describe_step(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStepInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStepInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStep
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeStep
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStep,
        stubs: @stubs,
        params_class: Params::DescribeStepOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_step
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details for the specified Amazon EMR Studio including ID, Name, VPC,
    #          Studio access URL, and so on.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStudioInput}.
    #
    # @option params [String] :studio_id
    #   <p>The Amazon EMR Studio ID.</p>
    #
    # @return [Types::DescribeStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_studio(
    #     studio_id: 'StudioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStudioOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_arn #=> String
    #   resp.data.studio.name #=> String
    #   resp.data.studio.description #=> String
    #   resp.data.studio.auth_mode #=> String, one of ["SSO", "IAM"]
    #   resp.data.studio.vpc_id #=> String
    #   resp.data.studio.subnet_ids #=> Array<String>
    #   resp.data.studio.subnet_ids[0] #=> String
    #   resp.data.studio.service_role #=> String
    #   resp.data.studio.user_role #=> String
    #   resp.data.studio.workspace_security_group_id #=> String
    #   resp.data.studio.engine_security_group_id #=> String
    #   resp.data.studio.url #=> String
    #   resp.data.studio.creation_time #=> Time
    #   resp.data.studio.default_s3_location #=> String
    #   resp.data.studio.idp_auth_url #=> String
    #   resp.data.studio.idp_relay_state_parameter_name #=> String
    #   resp.data.studio.tags #=> Array<Tag>
    #   resp.data.studio.tags[0] #=> Types::Tag
    #   resp.data.studio.tags[0].key #=> String
    #   resp.data.studio.tags[0].value #=> String
    #
    def describe_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStudio,
        stubs: @stubs,
        params_class: Params::DescribeStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the auto-termination policy for an Amazon EMR cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAutoTerminationPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster for which the auto-termination policy
    #            will be fetched.</p>
    #
    # @return [Types::GetAutoTerminationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_termination_policy(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAutoTerminationPolicyOutput
    #   resp.data.auto_termination_policy #=> Types::AutoTerminationPolicy
    #   resp.data.auto_termination_policy.idle_timeout #=> Integer
    #
    def get_auto_termination_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAutoTerminationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAutoTerminationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAutoTerminationPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAutoTerminationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAutoTerminationPolicy,
        stubs: @stubs,
        params_class: Params::GetAutoTerminationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_auto_termination_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Amazon EMR block public access configuration for your Amazon Web Services account in the current Region. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html">Configure Block
    #             Public Access for Amazon EMR</a> in the <i>Amazon EMR
    #             Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBlockPublicAccessConfigurationInput}.
    #
    # @return [Types::GetBlockPublicAccessConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_block_public_access_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBlockPublicAccessConfigurationOutput
    #   resp.data.block_public_access_configuration #=> Types::BlockPublicAccessConfiguration
    #   resp.data.block_public_access_configuration.block_public_security_group_rules #=> Boolean
    #   resp.data.block_public_access_configuration.permitted_public_security_group_rule_ranges #=> Array<PortRange>
    #   resp.data.block_public_access_configuration.permitted_public_security_group_rule_ranges[0] #=> Types::PortRange
    #   resp.data.block_public_access_configuration.permitted_public_security_group_rule_ranges[0].min_range #=> Integer
    #   resp.data.block_public_access_configuration.permitted_public_security_group_rule_ranges[0].max_range #=> Integer
    #   resp.data.block_public_access_configuration.classification #=> String
    #   resp.data.block_public_access_configuration.configurations #=> Array<Configuration>
    #   resp.data.block_public_access_configuration.configurations[0] #=> Types::Configuration
    #   resp.data.block_public_access_configuration.configurations[0].classification #=> String
    #   resp.data.block_public_access_configuration.configurations[0].configurations #=> Array<Configuration>
    #   resp.data.block_public_access_configuration.configurations[0].properties #=> Hash<String, String>
    #   resp.data.block_public_access_configuration.configurations[0].properties['key'] #=> String
    #   resp.data.block_public_access_configuration.properties #=> Hash<String, String>
    #   resp.data.block_public_access_configuration_metadata #=> Types::BlockPublicAccessConfigurationMetadata
    #   resp.data.block_public_access_configuration_metadata.creation_date_time #=> Time
    #   resp.data.block_public_access_configuration_metadata.created_by_arn #=> String
    #
    def get_block_public_access_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBlockPublicAccessConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBlockPublicAccessConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBlockPublicAccessConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetBlockPublicAccessConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBlockPublicAccessConfiguration,
        stubs: @stubs,
        params_class: Params::GetBlockPublicAccessConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_block_public_access_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Fetches the attached managed scaling policy for an Amazon EMR cluster. </p>
    #
    # @param [Hash] params
    #   See {Types::GetManagedScalingPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the cluster for which the managed scaling policy will be fetched.
    #         </p>
    #
    # @return [Types::GetManagedScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_scaling_policy(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetManagedScalingPolicyOutput
    #   resp.data.managed_scaling_policy #=> Types::ManagedScalingPolicy
    #   resp.data.managed_scaling_policy.compute_limits #=> Types::ComputeLimits
    #   resp.data.managed_scaling_policy.compute_limits.unit_type #=> String, one of ["InstanceFleetUnits", "Instances", "VCPU"]
    #   resp.data.managed_scaling_policy.compute_limits.minimum_capacity_units #=> Integer
    #   resp.data.managed_scaling_policy.compute_limits.maximum_capacity_units #=> Integer
    #   resp.data.managed_scaling_policy.compute_limits.maximum_on_demand_capacity_units #=> Integer
    #   resp.data.managed_scaling_policy.compute_limits.maximum_core_capacity_units #=> Integer
    #
    def get_managed_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetManagedScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetManagedScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetManagedScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetManagedScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetManagedScalingPolicy,
        stubs: @stubs,
        params_class: Params::GetManagedScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_managed_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Fetches mapping details for the specified Amazon EMR Studio and identity (user
    #          or group).</p>
    #
    # @param [Hash] params
    #   See {Types::GetStudioSessionMappingInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    # @option params [String] :identity_name
    #   <p>The name of the user or group to fetch. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to fetch is a user or a group.</p>
    #
    # @return [Types::GetStudioSessionMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_session_mapping(
    #     studio_id: 'StudioId', # required
    #     identity_id: 'IdentityId',
    #     identity_name: 'IdentityName',
    #     identity_type: 'USER' # required - accepts ["USER", "GROUP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStudioSessionMappingOutput
    #   resp.data.session_mapping #=> Types::SessionMappingDetail
    #   resp.data.session_mapping.studio_id #=> String
    #   resp.data.session_mapping.identity_id #=> String
    #   resp.data.session_mapping.identity_name #=> String
    #   resp.data.session_mapping.identity_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.session_mapping.session_policy_arn #=> String
    #   resp.data.session_mapping.creation_time #=> Time
    #   resp.data.session_mapping.last_modified_time #=> Time
    #
    def get_studio_session_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStudioSessionMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStudioSessionMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStudioSessionMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::GetStudioSessionMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStudioSessionMapping,
        stubs: @stubs,
        params_class: Params::GetStudioSessionMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_studio_session_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the bootstrap actions associated with a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBootstrapActionsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The cluster identifier for the bootstrap actions to list.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListBootstrapActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bootstrap_actions(
    #     cluster_id: 'ClusterId', # required
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBootstrapActionsOutput
    #   resp.data.bootstrap_actions #=> Array<Command>
    #   resp.data.bootstrap_actions[0] #=> Types::Command
    #   resp.data.bootstrap_actions[0].name #=> String
    #   resp.data.bootstrap_actions[0].script_path #=> String
    #   resp.data.bootstrap_actions[0].args #=> Array<String>
    #   resp.data.bootstrap_actions[0].args[0] #=> String
    #   resp.data.marker #=> String
    #
    def list_bootstrap_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBootstrapActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBootstrapActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBootstrapActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListBootstrapActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBootstrapActions,
        stubs: @stubs,
        params_class: Params::ListBootstrapActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bootstrap_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the status of all clusters visible to this Amazon Web Services account. Allows
    #          you to filter the list of clusters based on certain criteria; for example, filtering by
    #          cluster creation date and time or by status. This call returns a maximum of 50 clusters in
    #          unsorted order per call, but returns a marker to track the paging of the cluster list
    #          across multiple ListClusters calls.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [Time] :created_after
    #   <p>The creation date and time beginning value filter for listing clusters.</p>
    #
    # @option params [Time] :created_before
    #   <p>The creation date and time end value filter for listing clusters.</p>
    #
    # @option params [Array<String>] :cluster_states
    #   <p>The cluster state filters to apply when listing clusters. Clusters that change state
    #            while this action runs may be not be returned as expected in the list of clusters.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     cluster_states: [
    #       'STARTING' # accepts ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #     ],
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.clusters #=> Array<ClusterSummary>
    #   resp.data.clusters[0] #=> Types::ClusterSummary
    #   resp.data.clusters[0].id #=> String
    #   resp.data.clusters[0].name #=> String
    #   resp.data.clusters[0].status #=> Types::ClusterStatus
    #   resp.data.clusters[0].status.state #=> String, one of ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #   resp.data.clusters[0].status.state_change_reason #=> Types::ClusterStateChangeReason
    #   resp.data.clusters[0].status.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"]
    #   resp.data.clusters[0].status.state_change_reason.message #=> String
    #   resp.data.clusters[0].status.timeline #=> Types::ClusterTimeline
    #   resp.data.clusters[0].status.timeline.creation_date_time #=> Time
    #   resp.data.clusters[0].status.timeline.ready_date_time #=> Time
    #   resp.data.clusters[0].status.timeline.end_date_time #=> Time
    #   resp.data.clusters[0].normalized_instance_hours #=> Integer
    #   resp.data.clusters[0].cluster_arn #=> String
    #   resp.data.clusters[0].outpost_arn #=> String
    #   resp.data.marker #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available details about the instance fleets in a cluster.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceFleetsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListInstanceFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_fleets(
    #     cluster_id: 'ClusterId', # required
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceFleetsOutput
    #   resp.data.instance_fleets #=> Array<InstanceFleet>
    #   resp.data.instance_fleets[0] #=> Types::InstanceFleet
    #   resp.data.instance_fleets[0].id #=> String
    #   resp.data.instance_fleets[0].name #=> String
    #   resp.data.instance_fleets[0].status #=> Types::InstanceFleetStatus
    #   resp.data.instance_fleets[0].status.state #=> String, one of ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"]
    #   resp.data.instance_fleets[0].status.state_change_reason #=> Types::InstanceFleetStateChangeReason
    #   resp.data.instance_fleets[0].status.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"]
    #   resp.data.instance_fleets[0].status.state_change_reason.message #=> String
    #   resp.data.instance_fleets[0].status.timeline #=> Types::InstanceFleetTimeline
    #   resp.data.instance_fleets[0].status.timeline.creation_date_time #=> Time
    #   resp.data.instance_fleets[0].status.timeline.ready_date_time #=> Time
    #   resp.data.instance_fleets[0].status.timeline.end_date_time #=> Time
    #   resp.data.instance_fleets[0].instance_fleet_type #=> String, one of ["MASTER", "CORE", "TASK"]
    #   resp.data.instance_fleets[0].target_on_demand_capacity #=> Integer
    #   resp.data.instance_fleets[0].target_spot_capacity #=> Integer
    #   resp.data.instance_fleets[0].provisioned_on_demand_capacity #=> Integer
    #   resp.data.instance_fleets[0].provisioned_spot_capacity #=> Integer
    #   resp.data.instance_fleets[0].instance_type_specifications #=> Array<InstanceTypeSpecification>
    #   resp.data.instance_fleets[0].instance_type_specifications[0] #=> Types::InstanceTypeSpecification
    #   resp.data.instance_fleets[0].instance_type_specifications[0].instance_type #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].weighted_capacity #=> Integer
    #   resp.data.instance_fleets[0].instance_type_specifications[0].bid_price #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].bid_price_as_percentage_of_on_demand_price #=> Float
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations #=> Array<Configuration>
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations[0] #=> Types::Configuration
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations[0].classification #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations[0].configurations #=> Array<Configuration>
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations[0].properties #=> Hash<String, String>
    #   resp.data.instance_fleets[0].instance_type_specifications[0].configurations[0].properties['key'] #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices #=> Array<EbsBlockDevice>
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0] #=> Types::EbsBlockDevice
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification #=> Types::VolumeSpecification
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_block_devices[0].device #=> String
    #   resp.data.instance_fleets[0].instance_type_specifications[0].ebs_optimized #=> Boolean
    #   resp.data.instance_fleets[0].instance_type_specifications[0].custom_ami_id #=> String
    #   resp.data.instance_fleets[0].launch_specifications #=> Types::InstanceFleetProvisioningSpecifications
    #   resp.data.instance_fleets[0].launch_specifications.spot_specification #=> Types::SpotProvisioningSpecification
    #   resp.data.instance_fleets[0].launch_specifications.spot_specification.timeout_duration_minutes #=> Integer
    #   resp.data.instance_fleets[0].launch_specifications.spot_specification.timeout_action #=> String, one of ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"]
    #   resp.data.instance_fleets[0].launch_specifications.spot_specification.block_duration_minutes #=> Integer
    #   resp.data.instance_fleets[0].launch_specifications.spot_specification.allocation_strategy #=> String, one of ["capacity-optimized"]
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification #=> Types::OnDemandProvisioningSpecification
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification.allocation_strategy #=> String, one of ["lowest-price"]
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification.capacity_reservation_options #=> Types::OnDemandCapacityReservationOptions
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification.capacity_reservation_options.usage_strategy #=> String, one of ["use-capacity-reservations-first"]
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification.capacity_reservation_options.capacity_reservation_preference #=> String, one of ["open", "none"]
    #   resp.data.instance_fleets[0].launch_specifications.on_demand_specification.capacity_reservation_options.capacity_reservation_resource_group_arn #=> String
    #   resp.data.marker #=> String
    #
    def list_instance_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceFleetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceFleets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstanceFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceFleets,
        stubs: @stubs,
        params_class: Params::ListInstanceFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides all available details about the instance groups in a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceGroupsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the instance groups.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListInstanceGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_groups(
    #     cluster_id: 'ClusterId', # required
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceGroupsOutput
    #   resp.data.instance_groups #=> Array<InstanceGroup>
    #   resp.data.instance_groups[0] #=> Types::InstanceGroup
    #   resp.data.instance_groups[0].id #=> String
    #   resp.data.instance_groups[0].name #=> String
    #   resp.data.instance_groups[0].market #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.instance_groups[0].instance_group_type #=> String, one of ["MASTER", "CORE", "TASK"]
    #   resp.data.instance_groups[0].bid_price #=> String
    #   resp.data.instance_groups[0].instance_type #=> String
    #   resp.data.instance_groups[0].requested_instance_count #=> Integer
    #   resp.data.instance_groups[0].running_instance_count #=> Integer
    #   resp.data.instance_groups[0].status #=> Types::InstanceGroupStatus
    #   resp.data.instance_groups[0].status.state #=> String, one of ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"]
    #   resp.data.instance_groups[0].status.state_change_reason #=> Types::InstanceGroupStateChangeReason
    #   resp.data.instance_groups[0].status.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"]
    #   resp.data.instance_groups[0].status.state_change_reason.message #=> String
    #   resp.data.instance_groups[0].status.timeline #=> Types::InstanceGroupTimeline
    #   resp.data.instance_groups[0].status.timeline.creation_date_time #=> Time
    #   resp.data.instance_groups[0].status.timeline.ready_date_time #=> Time
    #   resp.data.instance_groups[0].status.timeline.end_date_time #=> Time
    #   resp.data.instance_groups[0].configurations #=> Array<Configuration>
    #   resp.data.instance_groups[0].configurations[0] #=> Types::Configuration
    #   resp.data.instance_groups[0].configurations[0].classification #=> String
    #   resp.data.instance_groups[0].configurations[0].configurations #=> Array<Configuration>
    #   resp.data.instance_groups[0].configurations[0].properties #=> Hash<String, String>
    #   resp.data.instance_groups[0].configurations[0].properties['key'] #=> String
    #   resp.data.instance_groups[0].configurations_version #=> Integer
    #   resp.data.instance_groups[0].last_successfully_applied_configurations #=> Array<Configuration>
    #   resp.data.instance_groups[0].last_successfully_applied_configurations_version #=> Integer
    #   resp.data.instance_groups[0].ebs_block_devices #=> Array<EbsBlockDevice>
    #   resp.data.instance_groups[0].ebs_block_devices[0] #=> Types::EbsBlockDevice
    #   resp.data.instance_groups[0].ebs_block_devices[0].volume_specification #=> Types::VolumeSpecification
    #   resp.data.instance_groups[0].ebs_block_devices[0].volume_specification.volume_type #=> String
    #   resp.data.instance_groups[0].ebs_block_devices[0].volume_specification.iops #=> Integer
    #   resp.data.instance_groups[0].ebs_block_devices[0].volume_specification.size_in_gb #=> Integer
    #   resp.data.instance_groups[0].ebs_block_devices[0].device #=> String
    #   resp.data.instance_groups[0].ebs_optimized #=> Boolean
    #   resp.data.instance_groups[0].shrink_policy #=> Types::ShrinkPolicy
    #   resp.data.instance_groups[0].shrink_policy.decommission_timeout #=> Integer
    #   resp.data.instance_groups[0].shrink_policy.instance_resize_policy #=> Types::InstanceResizePolicy
    #   resp.data.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate #=> Array<String>
    #   resp.data.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_terminate[0] #=> String
    #   resp.data.instance_groups[0].shrink_policy.instance_resize_policy.instances_to_protect #=> Array<String>
    #   resp.data.instance_groups[0].shrink_policy.instance_resize_policy.instance_termination_timeout #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy #=> Types::AutoScalingPolicyDescription
    #   resp.data.instance_groups[0].auto_scaling_policy.status #=> Types::AutoScalingPolicyStatus
    #   resp.data.instance_groups[0].auto_scaling_policy.status.state #=> String, one of ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"]
    #   resp.data.instance_groups[0].auto_scaling_policy.status.state_change_reason #=> Types::AutoScalingPolicyStateChangeReason
    #   resp.data.instance_groups[0].auto_scaling_policy.status.state_change_reason.code #=> String, one of ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"]
    #   resp.data.instance_groups[0].auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.constraints #=> Types::ScalingConstraints
    #   resp.data.instance_groups[0].auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.rules #=> Array<ScalingRule>
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0] #=> Types::ScalingRule
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].name #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].description #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action #=> Types::ScalingAction
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action.market #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration #=> Types::SimpleScalingPolicyConfiguration
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger #=> Types::ScalingTrigger
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition #=> Types::CloudWatchAlarmDefinition
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array<MetricDimension>
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0] #=> Types::MetricDimension
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.data.instance_groups[0].auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #   resp.data.instance_groups[0].custom_ami_id #=> String
    #   resp.data.marker #=> String
    #
    def list_instance_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstanceGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceGroups,
        stubs: @stubs,
        params_class: Params::ListInstanceGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information for all active EC2 instances and EC2 instances terminated in the
    #          last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are
    #          considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstancesInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the instances.</p>
    #
    # @option params [String] :instance_group_id
    #   <p>The identifier of the instance group for which to list the instances.</p>
    #
    # @option params [Array<String>] :instance_group_types
    #   <p>The type of instance group for which to list the instances.</p>
    #
    # @option params [String] :instance_fleet_id
    #   <p>The unique identifier of the instance fleet.</p>
    #
    # @option params [String] :instance_fleet_type
    #   <p>The node type of the instance fleet. For example MASTER, CORE, or TASK.</p>
    #
    # @option params [Array<String>] :instance_states
    #   <p>A list of instance states that will filter the instances returned with this
    #            request.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances(
    #     cluster_id: 'ClusterId', # required
    #     instance_group_id: 'InstanceGroupId',
    #     instance_group_types: [
    #       'MASTER' # accepts ["MASTER", "CORE", "TASK"]
    #     ],
    #     instance_fleet_id: 'InstanceFleetId',
    #     instance_fleet_type: 'MASTER', # accepts ["MASTER", "CORE", "TASK"]
    #     instance_states: [
    #       'AWAITING_FULFILLMENT' # accepts ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"]
    #     ],
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstancesOutput
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].id #=> String
    #   resp.data.instances[0].ec2_instance_id #=> String
    #   resp.data.instances[0].public_dns_name #=> String
    #   resp.data.instances[0].public_ip_address #=> String
    #   resp.data.instances[0].private_dns_name #=> String
    #   resp.data.instances[0].private_ip_address #=> String
    #   resp.data.instances[0].status #=> Types::InstanceStatus
    #   resp.data.instances[0].status.state #=> String, one of ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"]
    #   resp.data.instances[0].status.state_change_reason #=> Types::InstanceStateChangeReason
    #   resp.data.instances[0].status.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"]
    #   resp.data.instances[0].status.state_change_reason.message #=> String
    #   resp.data.instances[0].status.timeline #=> Types::InstanceTimeline
    #   resp.data.instances[0].status.timeline.creation_date_time #=> Time
    #   resp.data.instances[0].status.timeline.ready_date_time #=> Time
    #   resp.data.instances[0].status.timeline.end_date_time #=> Time
    #   resp.data.instances[0].instance_group_id #=> String
    #   resp.data.instances[0].instance_fleet_id #=> String
    #   resp.data.instances[0].market #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.instances[0].instance_type #=> String
    #   resp.data.instances[0].ebs_volumes #=> Array<EbsVolume>
    #   resp.data.instances[0].ebs_volumes[0] #=> Types::EbsVolume
    #   resp.data.instances[0].ebs_volumes[0].device #=> String
    #   resp.data.instances[0].ebs_volumes[0].volume_id #=> String
    #   resp.data.marker #=> String
    #
    def list_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstances,
        stubs: @stubs,
        params_class: Params::ListInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summaries of all notebook executions. You can filter the list based on multiple
    #          criteria such as status, time range, and editor id. Returns a maximum of 50 notebook
    #          executions and a marker to track the paging of a longer notebook execution list across
    #          multiple <code>ListNotebookExecution</code> calls.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNotebookExecutionsInput}.
    #
    # @option params [String] :editor_id
    #   <p>The unique ID of the editor associated with the notebook execution.</p>
    #
    # @option params [String] :status
    #   <p>The status filter for listing notebook executions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>START_PENDING</code> indicates that the cluster has received the execution
    #                  request but execution has not begun.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> indicates that the execution is starting on the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> indicates that the execution is being processed by the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHING</code> indicates that execution processing is in the final
    #                  stages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHED</code> indicates that the execution has completed without
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILING</code> indicates that the execution is failing and will not finish
    #                  successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the execution failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_PENDING</code> indicates that the cluster has received a
    #                     <code>StopNotebookExecution</code> request and the stop is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> indicates that the cluster is in the process of stopping the
    #                  execution as a result of a <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> indicates that the execution stopped because of a
    #                     <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :from
    #   <p>The beginning of time range filter for listing notebook executions. The default is the
    #            timestamp of 30 days ago.</p>
    #
    # @option params [Time] :to
    #   <p>The end of time range filter for listing notebook executions. The default is the current
    #            timestamp.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token, returned by a previous <code>ListNotebookExecutions</code> call,
    #            that indicates the start of the list for this <code>ListNotebookExecutions</code>
    #            call.</p>
    #
    # @return [Types::ListNotebookExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_executions(
    #     editor_id: 'EditorId',
    #     status: 'START_PENDING', # accepts ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #     from: Time.now,
    #     to: Time.now,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNotebookExecutionsOutput
    #   resp.data.notebook_executions #=> Array<NotebookExecutionSummary>
    #   resp.data.notebook_executions[0] #=> Types::NotebookExecutionSummary
    #   resp.data.notebook_executions[0].notebook_execution_id #=> String
    #   resp.data.notebook_executions[0].editor_id #=> String
    #   resp.data.notebook_executions[0].notebook_execution_name #=> String
    #   resp.data.notebook_executions[0].status #=> String, one of ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #   resp.data.notebook_executions[0].start_time #=> Time
    #   resp.data.notebook_executions[0].end_time #=> Time
    #   resp.data.marker #=> String
    #
    def list_notebook_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNotebookExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNotebookExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNotebookExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::ListNotebookExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNotebookExecutions,
        stubs: @stubs,
        params_class: Params::ListNotebookExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_notebook_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves release labels of EMR services in the region where the API is called.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReleaseLabelsInput}.
    #
    # @option params [ReleaseLabelFilter] :filters
    #   <p>Filters the results of the request. <code>Prefix</code> specifies the prefix of release
    #            labels to return. <code>Application</code> specifies the application (with/without version)
    #            of release labels to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies the next page of results. If <code>NextToken</code> is not specified, which is
    #            usually the case for the first request of ListReleaseLabels, the first page of results are
    #            determined by other filtering parameters or by the latest version. The
    #               <code>ListReleaseLabels</code> request fails if the identity (Amazon Web Services account
    #            ID) and all filtering parameters are different from the original request, or if the
    #               <code>NextToken</code> is expired or tampered with.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Defines the maximum number of release labels to return in a single response. The default
    #            is <code>100</code>.</p>
    #
    # @return [Types::ListReleaseLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_release_labels(
    #     filters: {
    #       prefix: 'Prefix',
    #       application: 'Application'
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReleaseLabelsOutput
    #   resp.data.release_labels #=> Array<String>
    #   resp.data.release_labels[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_release_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReleaseLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReleaseLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReleaseLabels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListReleaseLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReleaseLabels,
        stubs: @stubs,
        params_class: Params::ListReleaseLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_release_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the security configurations visible to this account, providing their creation
    #          dates and times, and their names. This call returns a maximum of 50 clusters per call, but
    #          returns a marker to track the paging of the cluster list across multiple
    #          ListSecurityConfigurations calls.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityConfigurationsInput}.
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    # @return [Types::ListSecurityConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_configurations(
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityConfigurationsOutput
    #   resp.data.security_configurations #=> Array<SecurityConfigurationSummary>
    #   resp.data.security_configurations[0] #=> Types::SecurityConfigurationSummary
    #   resp.data.security_configurations[0].name #=> String
    #   resp.data.security_configurations[0].creation_date_time #=> Time
    #   resp.data.marker #=> String
    #
    def list_security_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSecurityConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityConfigurations,
        stubs: @stubs,
        params_class: Params::ListSecurityConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of steps for the cluster in reverse order unless you specify
    #             <code>stepIds</code> with the request or filter by <code>StepStates</code>. You can
    #          specify a maximum of 10 <code>stepIDs</code>. The CLI automatically
    #          paginates results to return a list greater than 50 steps. To return more than 50 steps
    #          using the CLI, specify a <code>Marker</code>, which is a pagination token
    #          that indicates the next set of steps to retrieve.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStepsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the steps.</p>
    #
    # @option params [Array<String>] :step_states
    #   <p>The filter to limit the step list based on certain states.</p>
    #
    # @option params [Array<String>] :step_ids
    #   <p>The filter to limit the step list based on the identifier of the steps. You can specify
    #            a maximum of ten Step IDs. The character constraint applies to the overall length of the
    #            array.</p>
    #
    # @option params [String] :marker
    #   <p>The maximum number of steps that a single <code>ListSteps</code> action returns is 50.
    #            To return a longer list of steps, use multiple <code>ListSteps</code> actions along with
    #            the <code>Marker</code> parameter, which is a pagination token that indicates the next set
    #            of results to retrieve.</p>
    #
    # @return [Types::ListStepsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_steps(
    #     cluster_id: 'ClusterId', # required
    #     step_states: [
    #       'PENDING' # accepts ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #     ],
    #     step_ids: [
    #       'member'
    #     ],
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStepsOutput
    #   resp.data.steps #=> Array<StepSummary>
    #   resp.data.steps[0] #=> Types::StepSummary
    #   resp.data.steps[0].id #=> String
    #   resp.data.steps[0].name #=> String
    #   resp.data.steps[0].config #=> Types::HadoopStepConfig
    #   resp.data.steps[0].config.jar #=> String
    #   resp.data.steps[0].config.properties #=> Hash<String, String>
    #   resp.data.steps[0].config.properties['key'] #=> String
    #   resp.data.steps[0].config.main_class #=> String
    #   resp.data.steps[0].config.args #=> Array<String>
    #   resp.data.steps[0].config.args[0] #=> String
    #   resp.data.steps[0].action_on_failure #=> String, one of ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #   resp.data.steps[0].status #=> Types::StepStatus
    #   resp.data.steps[0].status.state #=> String, one of ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #   resp.data.steps[0].status.state_change_reason #=> Types::StepStateChangeReason
    #   resp.data.steps[0].status.state_change_reason.code #=> String, one of ["NONE"]
    #   resp.data.steps[0].status.state_change_reason.message #=> String
    #   resp.data.steps[0].status.failure_details #=> Types::FailureDetails
    #   resp.data.steps[0].status.failure_details.reason #=> String
    #   resp.data.steps[0].status.failure_details.message #=> String
    #   resp.data.steps[0].status.failure_details.log_file #=> String
    #   resp.data.steps[0].status.timeline #=> Types::StepTimeline
    #   resp.data.steps[0].status.timeline.creation_date_time #=> Time
    #   resp.data.steps[0].status.timeline.start_date_time #=> Time
    #   resp.data.steps[0].status.timeline.end_date_time #=> Time
    #   resp.data.marker #=> String
    #
    def list_steps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStepsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStepsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSteps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSteps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSteps,
        stubs: @stubs,
        params_class: Params::ListStepsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_steps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all user or group session mappings for the Amazon EMR Studio
    #          specified by <code>StudioId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStudioSessionMappingsInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    # @option params [String] :identity_type
    #   <p>Specifies whether to return session mappings for users or groups. If not specified, the
    #            results include session mapping details for both users and groups.</p>
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    # @return [Types::ListStudioSessionMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studio_session_mappings(
    #     studio_id: 'StudioId',
    #     identity_type: 'USER', # accepts ["USER", "GROUP"]
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStudioSessionMappingsOutput
    #   resp.data.session_mappings #=> Array<SessionMappingSummary>
    #   resp.data.session_mappings[0] #=> Types::SessionMappingSummary
    #   resp.data.session_mappings[0].studio_id #=> String
    #   resp.data.session_mappings[0].identity_id #=> String
    #   resp.data.session_mappings[0].identity_name #=> String
    #   resp.data.session_mappings[0].identity_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.session_mappings[0].session_policy_arn #=> String
    #   resp.data.session_mappings[0].creation_time #=> Time
    #   resp.data.marker #=> String
    #
    def list_studio_session_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStudioSessionMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStudioSessionMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStudioSessionMappings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::ListStudioSessionMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStudioSessionMappings,
        stubs: @stubs,
        params_class: Params::ListStudioSessionMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_studio_session_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all Amazon EMR Studios associated with the Amazon Web Services account. The list includes details such as ID, Studio Access URL, and
    #          creation time for each Studio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStudiosInput}.
    #
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    # @return [Types::ListStudiosOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studios(
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStudiosOutput
    #   resp.data.studios #=> Array<StudioSummary>
    #   resp.data.studios[0] #=> Types::StudioSummary
    #   resp.data.studios[0].studio_id #=> String
    #   resp.data.studios[0].name #=> String
    #   resp.data.studios[0].vpc_id #=> String
    #   resp.data.studios[0].description #=> String
    #   resp.data.studios[0].url #=> String
    #   resp.data.studios[0].auth_mode #=> String, one of ["SSO", "IAM"]
    #   resp.data.studios[0].creation_time #=> Time
    #   resp.data.marker #=> String
    #
    def list_studios(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStudiosInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStudiosInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStudios
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListStudios
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStudios,
        stubs: @stubs,
        params_class: Params::ListStudiosOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_studios
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the number of steps that can be executed concurrently for the cluster specified
    #          using ClusterID.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    # @option params [Integer] :step_concurrency_level
    #   <p>The number of steps that can be executed concurrently. You can specify a minimum of 1
    #            step and a maximum of 256 steps. We recommend that you do not change this parameter while
    #            steps are running or the <code>ActionOnFailure</code> setting may not behave as expected.
    #            For more information see <a>Step$ActionOnFailure</a>.</p>
    #
    # @return [Types::ModifyClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster(
    #     cluster_id: 'ClusterId', # required
    #     step_concurrency_level: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterOutput
    #   resp.data.step_concurrency_level #=> Integer
    #
    def modify_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::ModifyCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCluster,
        stubs: @stubs,
        params_class: Params::ModifyClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the
    #          specified InstanceFleetID within the cluster specified using ClusterID. The call either
    #          succeeds or fails atomically.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ModifyInstanceFleetInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    # @option params [InstanceFleetModifyConfig] :instance_fleet
    #   <p>The configuration parameters of the instance fleet.</p>
    #
    # @return [Types::ModifyInstanceFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_fleet(
    #     cluster_id: 'ClusterId', # required
    #     instance_fleet: {
    #       instance_fleet_id: 'InstanceFleetId', # required
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyInstanceFleetOutput
    #
    def modify_instance_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyInstanceFleetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyInstanceFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyInstanceFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::ModifyInstanceFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyInstanceFleet,
        stubs: @stubs,
        params_class: Params::ModifyInstanceFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_instance_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an
    #          instance group. The input parameters include the new target instance count for the group
    #          and the instance group ID. The call will either succeed or fail atomically.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyInstanceGroupsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The ID of the cluster to which the instance group belongs.</p>
    #
    # @option params [Array<InstanceGroupModifyConfig>] :instance_groups
    #   <p>Instance groups to change.</p>
    #
    # @return [Types::ModifyInstanceGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_groups(
    #     cluster_id: 'ClusterId',
    #     instance_groups: [
    #       {
    #         instance_group_id: 'InstanceGroupId', # required
    #         instance_count: 1,
    #         ec2_instance_ids_to_terminate: [
    #           'member'
    #         ],
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: [
    #               'member'
    #             ],
    #             instance_termination_timeout: 1
    #           }
    #         },
    #         reconfiguration_type: 'OVERWRITE', # accepts ["OVERWRITE", "MERGE"]
    #         configurations: [
    #           {
    #             classification: 'Classification',
    #             properties: {
    #               'key' => 'value'
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyInstanceGroupsOutput
    #
    def modify_instance_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyInstanceGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyInstanceGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyInstanceGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::ModifyInstanceGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyInstanceGroups,
        stubs: @stubs,
        params_class: Params::ModifyInstanceGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_instance_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an automatic scaling policy for a core instance group or task
    #          instance group in an Amazon EMR cluster. The automatic scaling policy defines how
    #          an instance group dynamically adds and terminates EC2 instances in response to the value of
    #          a CloudWatch metric.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAutoScalingPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    #
    # @option params [String] :instance_group_id
    #   <p>Specifies the ID of the instance group to which the automatic scaling policy is
    #            applied.</p>
    #
    # @option params [AutoScalingPolicy] :auto_scaling_policy
    #   <p>Specifies the definition of the automatic scaling policy.</p>
    #
    # @return [Types::PutAutoScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_auto_scaling_policy(
    #     cluster_id: 'ClusterId', # required
    #     instance_group_id: 'InstanceGroupId', # required
    #     auto_scaling_policy: {
    #       constraints: {
    #         min_capacity: 1, # required
    #         max_capacity: 1 # required
    #       }, # required
    #       rules: [
    #         {
    #           name: 'Name', # required
    #           description: 'Description',
    #           action: {
    #             market: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #             simple_scaling_policy_configuration: {
    #               adjustment_type: 'CHANGE_IN_CAPACITY', # accepts ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #               scaling_adjustment: 1, # required
    #               cool_down: 1
    #             } # required
    #           }, # required
    #           trigger: {
    #             cloud_watch_alarm_definition: {
    #               comparison_operator: 'GREATER_THAN_OR_EQUAL', # required - accepts ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #               evaluation_periods: 1,
    #               metric_name: 'MetricName', # required
    #               namespace: 'Namespace',
    #               period: 1, # required
    #               statistic: 'SAMPLE_COUNT', # accepts ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #               threshold: 1.0, # required
    #               unit: 'NONE', # accepts ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #               dimensions: [
    #                 {
    #                   key: 'Key',
    #                   value: 'Value'
    #                 }
    #               ]
    #             } # required
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAutoScalingPolicyOutput
    #   resp.data.cluster_id #=> String
    #   resp.data.instance_group_id #=> String
    #   resp.data.auto_scaling_policy #=> Types::AutoScalingPolicyDescription
    #   resp.data.auto_scaling_policy.status #=> Types::AutoScalingPolicyStatus
    #   resp.data.auto_scaling_policy.status.state #=> String, one of ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"]
    #   resp.data.auto_scaling_policy.status.state_change_reason #=> Types::AutoScalingPolicyStateChangeReason
    #   resp.data.auto_scaling_policy.status.state_change_reason.code #=> String, one of ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"]
    #   resp.data.auto_scaling_policy.status.state_change_reason.message #=> String
    #   resp.data.auto_scaling_policy.constraints #=> Types::ScalingConstraints
    #   resp.data.auto_scaling_policy.constraints.min_capacity #=> Integer
    #   resp.data.auto_scaling_policy.constraints.max_capacity #=> Integer
    #   resp.data.auto_scaling_policy.rules #=> Array<ScalingRule>
    #   resp.data.auto_scaling_policy.rules[0] #=> Types::ScalingRule
    #   resp.data.auto_scaling_policy.rules[0].name #=> String
    #   resp.data.auto_scaling_policy.rules[0].description #=> String
    #   resp.data.auto_scaling_policy.rules[0].action #=> Types::ScalingAction
    #   resp.data.auto_scaling_policy.rules[0].action.market #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration #=> Types::SimpleScalingPolicyConfiguration
    #   resp.data.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.adjustment_type #=> String, one of ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #   resp.data.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.scaling_adjustment #=> Integer
    #   resp.data.auto_scaling_policy.rules[0].action.simple_scaling_policy_configuration.cool_down #=> Integer
    #   resp.data.auto_scaling_policy.rules[0].trigger #=> Types::ScalingTrigger
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition #=> Types::CloudWatchAlarmDefinition
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.comparison_operator #=> String, one of ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.evaluation_periods #=> Integer
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.metric_name #=> String
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.namespace #=> String
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.period #=> Integer
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.statistic #=> String, one of ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.threshold #=> Float
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.unit #=> String, one of ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions #=> Array<MetricDimension>
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0] #=> Types::MetricDimension
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].key #=> String
    #   resp.data.auto_scaling_policy.rules[0].trigger.cloud_watch_alarm_definition.dimensions[0].value #=> String
    #   resp.data.cluster_arn #=> String
    #
    def put_auto_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAutoScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAutoScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAutoScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutAutoScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAutoScalingPolicy,
        stubs: @stubs,
        params_class: Params::PutAutoScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_auto_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>Auto-termination is supported in Amazon EMR versions 5.30.0 and 6.1.0 and
    #             later. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html">Using an
    #                auto-termination policy</a>.</p>
    #          </note>
    #          <p>Creates or updates an auto-termination policy for an Amazon EMR cluster. An
    #          auto-termination policy defines the amount of idle time in seconds after which a cluster
    #          automatically terminates. For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control
    #             cluster termination</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAutoTerminationPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster to which the auto-termination policy
    #            will be attached.</p>
    #
    # @option params [AutoTerminationPolicy] :auto_termination_policy
    #   <p>Specifies the auto-termination policy to attach to the cluster.</p>
    #
    # @return [Types::PutAutoTerminationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_auto_termination_policy(
    #     cluster_id: 'ClusterId', # required
    #     auto_termination_policy: {
    #       idle_timeout: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAutoTerminationPolicyOutput
    #
    def put_auto_termination_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAutoTerminationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAutoTerminationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAutoTerminationPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutAutoTerminationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAutoTerminationPolicy,
        stubs: @stubs,
        params_class: Params::PutAutoTerminationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_auto_termination_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an Amazon EMR block public access configuration for your
    #             Amazon Web Services account in the current Region. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html">Configure Block
    #             Public Access for Amazon EMR</a> in the <i>Amazon EMR
    #             Management Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutBlockPublicAccessConfigurationInput}.
    #
    # @option params [BlockPublicAccessConfiguration] :block_public_access_configuration
    #   <p>A configuration for Amazon EMR block public access. The configuration applies to
    #            all clusters created in your account for the current Region. The configuration specifies
    #            whether block public access is enabled. If block public access is enabled, security groups
    #            associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
    #            ::/0 on a port, unless the port is specified as an exception using
    #               <code>PermittedPublicSecurityGroupRuleRanges</code> in the
    #               <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
    #            and public access is allowed on this port. You can change this by updating
    #               <code>BlockPublicSecurityGroupRules</code> to remove the exception.</p>
    #            <note>
    #               <p>For accounts that created clusters in a Region before November 25, 2019, block public
    #               access is disabled by default in that Region. To use this feature, you must manually
    #               enable and configure it. For accounts that did not create an EMR cluster in a Region
    #               before this date, block public access is enabled by default in that Region.</p>
    #            </note>
    #
    # @return [Types::PutBlockPublicAccessConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_block_public_access_configuration(
    #     block_public_access_configuration: {
    #       block_public_security_group_rules: false, # required
    #       permitted_public_security_group_rule_ranges: [
    #         {
    #           min_range: 1, # required
    #           max_range: 1
    #         }
    #       ],
    #       classification: 'Classification',
    #       configurations: [
    #         {
    #           classification: 'Classification',
    #           properties: {
    #             'key' => 'value'
    #           }
    #         }
    #       ],
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBlockPublicAccessConfigurationOutput
    #
    def put_block_public_access_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBlockPublicAccessConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBlockPublicAccessConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBlockPublicAccessConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::PutBlockPublicAccessConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBlockPublicAccessConfiguration,
        stubs: @stubs,
        params_class: Params::PutBlockPublicAccessConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_block_public_access_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a managed scaling policy for an Amazon EMR cluster. The
    #          managed scaling policy defines the limits for resources, such as EC2 instances that can be
    #          added or terminated from a cluster. The policy only applies to the core and task nodes. The
    #          master node cannot be scaled after initial configuration. </p>
    #
    # @param [Hash] params
    #   See {Types::PutManagedScalingPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of an EMR cluster where the managed scaling policy is attached. </p>
    #
    # @option params [ManagedScalingPolicy] :managed_scaling_policy
    #   <p>Specifies the constraints for the managed scaling policy. </p>
    #
    # @return [Types::PutManagedScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_managed_scaling_policy(
    #     cluster_id: 'ClusterId', # required
    #     managed_scaling_policy: {
    #       compute_limits: {
    #         unit_type: 'InstanceFleetUnits', # required - accepts ["InstanceFleetUnits", "Instances", "VCPU"]
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutManagedScalingPolicyOutput
    #
    def put_managed_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutManagedScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutManagedScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutManagedScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutManagedScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutManagedScalingPolicy,
        stubs: @stubs,
        params_class: Params::PutManagedScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_managed_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an automatic scaling policy from a specified instance group within an EMR
    #          cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAutoScalingPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    #
    # @option params [String] :instance_group_id
    #   <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
    #
    # @return [Types::RemoveAutoScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_auto_scaling_policy(
    #     cluster_id: 'ClusterId', # required
    #     instance_group_id: 'InstanceGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAutoScalingPolicyOutput
    #
    def remove_auto_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAutoScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAutoScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAutoScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RemoveAutoScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAutoScalingPolicy,
        stubs: @stubs,
        params_class: Params::RemoveAutoScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_auto_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an auto-termination policy from an Amazon EMR cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAutoTerminationPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster from which the auto-termination
    #            policy will be removed.</p>
    #
    # @return [Types::RemoveAutoTerminationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_auto_termination_policy(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAutoTerminationPolicyOutput
    #
    def remove_auto_termination_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAutoTerminationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAutoTerminationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAutoTerminationPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RemoveAutoTerminationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAutoTerminationPolicy,
        stubs: @stubs,
        params_class: Params::RemoveAutoTerminationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_auto_termination_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Removes a managed scaling policy from a specified EMR cluster. </p>
    #
    # @param [Hash] params
    #   See {Types::RemoveManagedScalingPolicyInput}.
    #
    # @option params [String] :cluster_id
    #   <p> Specifies the ID of the cluster from which the managed scaling policy will be removed.
    #         </p>
    #
    # @return [Types::RemoveManagedScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_managed_scaling_policy(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveManagedScalingPolicyOutput
    #
    def remove_managed_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveManagedScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveManagedScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveManagedScalingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RemoveManagedScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveManagedScalingPolicy,
        stubs: @stubs,
        params_class: Params::RemoveManagedScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_managed_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR Studio. Tags make it easier to associate resources in various ways, such as grouping
    #          clusters to track your Amazon EMR resource allocation costs. For more information,
    #          see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag
    #             Clusters</a>. </p>
    #          <p>The following example removes the stack tag with value Prod from a cluster:</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The Amazon EMR resource identifier from which tags will be removed. For example,
    #            a cluster identifier or an Amazon EMR Studio ID.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     resource_id: 'ResourceId', # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
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

    # <p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the
    #          steps specified. After the steps complete, the cluster stops and the HDFS partition is
    #          lost. To prevent loss of data, configure the last step of the job flow to store results in
    #             Amazon S3. If the <a>JobFlowInstancesConfig</a>
    #             <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster
    #          transitions to the WAITING state rather than shutting down after the steps have completed. </p>
    #          <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a>
    #             <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and
    #          prevent it from being terminated by API call, user intervention, or in the event of a job
    #          flow error.</p>
    #          <p>A maximum of 256 steps are allowed in each job flow.</p>
    #          <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may
    #          require more than 256 steps to process your data. You can bypass the 256-step limitation in
    #          various ways, including using the SSH shell to connect to the master node and submitting
    #          queries directly to the software running on the master node, such as Hive and Hadoop. For
    #          more information on how to do this, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a
    #             Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p>
    #          <p>For long running clusters, we recommend that you periodically store your results.</p>
    #          <note>
    #             <p>The instance fleets configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain
    #             InstanceFleets parameters or InstanceGroups parameters, but not both.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RunJobFlowInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job flow.</p>
    #
    # @option params [String] :log_uri
    #   <p>The location in Amazon S3 to write the log files of the job flow. If a value is
    #            not provided, logs are not created.</p>
    #
    # @option params [String] :log_encryption_kms_key_id
    #   <p>The KMS key used for encrypting log files. If a value is not
    #            provided, the logs remain encrypted by AES-256. This attribute is only available with
    #               Amazon EMR version 5.30.0 and later, excluding Amazon EMR 6.0.0.</p>
    #
    # @option params [String] :additional_info
    #   <p>A JSON string for selecting additional features.</p>
    #
    # @option params [String] :ami_version
    #   <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #            releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
    #               <code>CustomAmiID</code>.</p>
    #
    # @option params [String] :release_label
    #   <p>The Amazon EMR release label, which determines the version of open-source
    #            application packages installed on the cluster. Release labels are in the form
    #               <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as
    #               <code>emr-5.14.0</code>. For more information about Amazon EMR release versions
    #            and included application versions and features, see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR
    #            releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
    #
    # @option params [JobFlowInstancesConfig] :instances
    #   <p>A specification of the number and type of Amazon EC2 instances.</p>
    #
    # @option params [Array<StepConfig>] :steps
    #   <p>A list of steps to run.</p>
    #
    # @option params [Array<BootstrapActionConfig>] :bootstrap_actions
    #   <p>A list of bootstrap actions to run before Hadoop starts on the cluster nodes.</p>
    #
    # @option params [Array<String>] :supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use. For more information, see
    #            the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>. Currently supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the job flow using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the job flow using MapR M5 Edition.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<SupportedProductConfig>] :new_supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use with the job flow that
    #            accepts a user argument list. EMR accepts and forwards the argument list to the
    #            corresponding installation script as bootstrap action arguments. For more information, see
    #            "Launch a Job Flow on the MapR Distribution for Hadoop" in the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>.
    #            Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" -
    #                  launch the job flow using MapR M3 or M5 Edition respectively.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m7" - launch the cluster using MapR M7 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"hunk" - launch the cluster with the Hunk Big Data Analytics Platform.</p>
    #               </li>
    #               <li>
    #                  <p>"hue"- launch the cluster with Hue installed.</p>
    #               </li>
    #               <li>
    #                  <p>"spark" - launch the cluster with Apache Spark installed.</p>
    #               </li>
    #               <li>
    #                  <p>"ganglia" - launch the cluster with the Ganglia Monitoring System
    #                  installed.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Application>] :applications
    #   <p>Applies to Amazon EMR releases 4.0 and later. A case-insensitive list of
    #            applications for Amazon EMR to install and configure when launching the cluster.
    #            For a list of applications available for each Amazon EMR release version, see the
    #               <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">Amazon EMRRelease
    #               Guide</a>.</p>
    #
    # @option params [Array<Configuration>] :configurations
    #   <p>For Amazon EMR releases 4.0 and later. The list of configurations supplied for
    #            the EMR cluster you are creating.</p>
    #
    # @option params [Boolean] :visible_to_all_users
    #   <important>
    #               <p>The VisibleToAllUsers parameter is no longer supported. By default, the value is set
    #               to <code>true</code>. Setting it to <code>false</code> now has no effect.</p>
    #            </important>
    #            <p>Set this value to <code>true</code> so that IAM principals in the Amazon Web Services account associated with the cluster can perform EMR actions on the cluster
    #            that their IAM policies allow. This value defaults to <code>true</code> for clusters
    #            created using the EMR API or the CLI
    #            <a href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a> command.</p>
    #            <p>When set to <code>false</code>, only the IAM principal that created the cluster and the
    #               Amazon Web Services account root user can perform EMR actions for the cluster, regardless
    #            of the IAM permissions policies attached to other IAM principals. For more information, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_iam_emr-with-iam.html#security_set_visible_to_all_users">Understanding the EMR Cluster VisibleToAllUsers Setting</a> in the
    #                  <i>Amazon EMRManagement Guide</i>.</p>
    #
    # @option params [String] :job_flow_role
    #   <p>Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2
    #            instances of the cluster assume this role. The default role is
    #               <code>EMR_EC2_DefaultRole</code>. In order to use the default role, you must have
    #            already created it using the CLI or console.</p>
    #
    # @option params [String] :service_role
    #   <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services
    #            resources on your behalf.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to associate with a cluster and propagate to Amazon EC2
    #            instances.</p>
    #
    # @option params [String] :security_configuration
    #   <p>The name of a security configuration to apply to the cluster.</p>
    #
    # @option params [String] :auto_scaling_role
    #   <p>An IAM role for automatic scaling policies. The default role is
    #               <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the
    #            automatic scaling feature requires to launch and terminate EC2 instances in an instance
    #            group.</p>
    #
    # @option params [String] :scale_down_behavior
    #   <p>Specifies the way that individual Amazon EC2 instances terminate when an
    #            automatic scale-in activity occurs or an instance group is resized.
    #               <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates
    #            nodes at the instance-hour boundary, regardless of when the request to terminate the
    #            instance was submitted. This option is only available with Amazon EMR 5.1.0 and
    #            later and is the default for clusters created using that version.
    #               <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes
    #            to a deny list and drains tasks from nodes before terminating the Amazon EC2
    #            instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to
    #            HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
    #
    # @option params [String] :custom_ami_id
    #   <p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon
    #            EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches
    #            cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html">Using a
    #               Custom AMI</a> in the <i>Amazon EMR Management Guide</i>. If
    #            omitted, the cluster uses the base Linux AMI for the <code>ReleaseLabel</code> specified.
    #            For Amazon EMR versions 2.x and 3.x, use <code>AmiVersion</code> instead.</p>
    #            <p>For information about creating a custom AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating an Amazon EBS-Backed Linux AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux
    #               Instances</i>. For information about finding an AMI ID, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding a Linux
    #               AMI</a>. </p>
    #
    # @option params [Integer] :ebs_root_volume_size
    #   <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is
    #            used for each EC2 instance. Available in Amazon EMR version 4.x and later.</p>
    #
    # @option params [String] :repo_upgrade_on_boot
    #   <p>Applies only when <code>CustomAmiID</code> is used. Specifies which updates from the
    #            Amazon Linux AMI package repositories to apply automatically when the instance boots using
    #            the AMI. If omitted, the default is <code>SECURITY</code>, which indicates that only
    #            security updates are applied. If <code>NONE</code> is specified, no updates are applied,
    #            and all updates must be applied manually.</p>
    #
    # @option params [KerberosAttributes] :kerberos_attributes
    #   <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
    #            security configuration. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a>
    #            in the <i>Amazon EMR Management Guide</i>.</p>
    #
    # @option params [Integer] :step_concurrency_level
    #   <p>Specifies the number of steps that can be executed concurrently. The default value is
    #               <code>1</code>. The maximum value is <code>256</code>.</p>
    #
    # @option params [ManagedScalingPolicy] :managed_scaling_policy
    #   <p> The specified managed scaling policy for an Amazon EMR cluster. </p>
    #
    # @option params [Array<PlacementGroupConfig>] :placement_group_configs
    #   <p>The specified placement group configuration for an Amazon EMR cluster.</p>
    #
    # @option params [AutoTerminationPolicy] :auto_termination_policy
    #   <p>An auto-termination policy for an Amazon EMR cluster. An auto-termination policy
    #            defines the amount of idle time in seconds after which a cluster automatically terminates.
    #            For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control cluster
    #               termination</a>.</p>
    #
    # @option params [String] :os_release_label
    #   <p>Specifies a particular Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If a release is not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.</p>
    #
    # @return [Types::RunJobFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_job_flow(
    #     name: 'Name', # required
    #     log_uri: 'LogUri',
    #     log_encryption_kms_key_id: 'LogEncryptionKmsKeyId',
    #     additional_info: 'AdditionalInfo',
    #     ami_version: 'AmiVersion',
    #     release_label: 'ReleaseLabel',
    #     instances: {
    #       master_instance_type: 'MasterInstanceType',
    #       slave_instance_type: 'SlaveInstanceType',
    #       instance_count: 1,
    #       instance_groups: [
    #         {
    #           name: 'Name',
    #           market: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #           instance_role: 'MASTER', # required - accepts ["MASTER", "CORE", "TASK"]
    #           bid_price: 'BidPrice',
    #           instance_type: 'InstanceType', # required
    #           instance_count: 1, # required
    #           configurations: [
    #             {
    #               classification: 'Classification',
    #               properties: {
    #                 'key' => 'value'
    #               }
    #             }
    #           ],
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: {
    #                   volume_type: 'VolumeType', # required
    #                   iops: 1,
    #                   size_in_gb: 1 # required
    #                 }, # required
    #                 volumes_per_instance: 1
    #               }
    #             ],
    #             ebs_optimized: false
    #           },
    #           auto_scaling_policy: {
    #             constraints: {
    #               min_capacity: 1, # required
    #               max_capacity: 1 # required
    #             }, # required
    #             rules: [
    #               {
    #                 name: 'Name', # required
    #                 description: 'Description',
    #                 action: {
    #                   market: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #                   simple_scaling_policy_configuration: {
    #                     adjustment_type: 'CHANGE_IN_CAPACITY', # accepts ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #                     scaling_adjustment: 1, # required
    #                     cool_down: 1
    #                   } # required
    #                 }, # required
    #                 trigger: {
    #                   cloud_watch_alarm_definition: {
    #                     comparison_operator: 'GREATER_THAN_OR_EQUAL', # required - accepts ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #                     evaluation_periods: 1,
    #                     metric_name: 'MetricName', # required
    #                     namespace: 'Namespace',
    #                     period: 1, # required
    #                     statistic: 'SAMPLE_COUNT', # accepts ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #                     threshold: 1.0, # required
    #                     unit: 'NONE', # accepts ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #                     dimensions: [
    #                       {
    #                         key: 'Key',
    #                         value: 'Value'
    #                       }
    #                     ]
    #                   } # required
    #                 } # required
    #               }
    #             ] # required
    #           },
    #           custom_ami_id: 'CustomAmiId'
    #         }
    #       ],
    #       instance_fleets: [
    #         {
    #           name: 'Name',
    #           instance_fleet_type: 'MASTER', # required - accepts ["MASTER", "CORE", "TASK"]
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #           instance_type_configs: [
    #             {
    #               instance_type: 'InstanceType', # required
    #               weighted_capacity: 1,
    #               bid_price: 'BidPrice',
    #               bid_price_as_percentage_of_on_demand_price: 1.0,
    #               custom_ami_id: 'CustomAmiId'
    #             }
    #           ],
    #           launch_specifications: {
    #             spot_specification: {
    #               timeout_duration_minutes: 1, # required
    #               timeout_action: 'SWITCH_TO_ON_DEMAND', # required - accepts ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"]
    #               block_duration_minutes: 1,
    #               allocation_strategy: 'capacity-optimized' # accepts ["capacity-optimized"]
    #             },
    #             on_demand_specification: {
    #               allocation_strategy: 'lowest-price', # required - accepts ["lowest-price"]
    #               capacity_reservation_options: {
    #                 usage_strategy: 'use-capacity-reservations-first', # accepts ["use-capacity-reservations-first"]
    #                 capacity_reservation_preference: 'open', # accepts ["open", "none"]
    #                 capacity_reservation_resource_group_arn: 'CapacityReservationResourceGroupArn'
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       ec2_key_name: 'Ec2KeyName',
    #       placement: {
    #         availability_zone: 'AvailabilityZone',
    #         availability_zones: [
    #           'member'
    #         ]
    #       },
    #       keep_job_flow_alive_when_no_steps: false,
    #       termination_protected: false,
    #       hadoop_version: 'HadoopVersion',
    #       ec2_subnet_id: 'Ec2SubnetId',
    #       emr_managed_master_security_group: 'EmrManagedMasterSecurityGroup',
    #       emr_managed_slave_security_group: 'EmrManagedSlaveSecurityGroup',
    #       service_access_security_group: 'ServiceAccessSecurityGroup',
    #       additional_master_security_groups: [
    #         'member'
    #       ],
    #     }, # required
    #     steps: [
    #       {
    #         name: 'Name', # required
    #         action_on_failure: 'TERMINATE_JOB_FLOW', # accepts ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #         hadoop_jar_step: {
    #           properties: [
    #             {
    #               key: 'Key',
    #               value: 'Value'
    #             }
    #           ],
    #           jar: 'Jar', # required
    #           main_class: 'MainClass',
    #           args: [
    #             'member'
    #           ]
    #         } # required
    #       }
    #     ],
    #     bootstrap_actions: [
    #       {
    #         name: 'Name', # required
    #         script_bootstrap_action: {
    #           path: 'Path', # required
    #         } # required
    #       }
    #     ],
    #     supported_products: [
    #       'member'
    #     ],
    #     new_supported_products: [
    #       {
    #         name: 'Name',
    #       }
    #     ],
    #     applications: [
    #       {
    #         name: 'Name',
    #         version: 'Version',
    #         args: [
    #           'member'
    #         ],
    #       }
    #     ],
    #     visible_to_all_users: false,
    #     job_flow_role: 'JobFlowRole',
    #     service_role: 'ServiceRole',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     security_configuration: 'SecurityConfiguration',
    #     auto_scaling_role: 'AutoScalingRole',
    #     scale_down_behavior: 'TERMINATE_AT_INSTANCE_HOUR', # accepts ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #     custom_ami_id: 'CustomAmiId',
    #     ebs_root_volume_size: 1,
    #     repo_upgrade_on_boot: 'SECURITY', # accepts ["SECURITY", "NONE"]
    #     kerberos_attributes: {
    #       realm: 'Realm', # required
    #       kdc_admin_password: 'KdcAdminPassword', # required
    #       cross_realm_trust_principal_password: 'CrossRealmTrustPrincipalPassword',
    #       ad_domain_join_user: 'ADDomainJoinUser',
    #       ad_domain_join_password: 'ADDomainJoinPassword'
    #     },
    #     step_concurrency_level: 1,
    #     managed_scaling_policy: {
    #       compute_limits: {
    #         unit_type: 'InstanceFleetUnits', # required - accepts ["InstanceFleetUnits", "Instances", "VCPU"]
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1
    #       }
    #     },
    #     placement_group_configs: [
    #       {
    #         instance_role: 'MASTER', # required - accepts ["MASTER", "CORE", "TASK"]
    #         placement_strategy: 'SPREAD' # accepts ["SPREAD", "PARTITION", "CLUSTER", "NONE"]
    #       }
    #     ],
    #     auto_termination_policy: {
    #       idle_timeout: 1
    #     },
    #     os_release_label: 'OSReleaseLabel'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RunJobFlowOutput
    #   resp.data.job_flow_id #=> String
    #   resp.data.cluster_arn #=> String
    #
    def run_job_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RunJobFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RunJobFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RunJobFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::RunJobFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RunJobFlow,
        stubs: @stubs,
        params_class: Params::RunJobFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :run_job_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster
    #          cannot be terminated by user intervention, an API call, or in the event of a job-flow
    #          error. The cluster still terminates upon successful completion of the job flow. Calling
    #             <code>SetTerminationProtection</code> on a cluster is similar to calling the Amazon EC2
    #          <code>DisableAPITermination</code> API on all EC2 instances in a cluster.</p>
    #          <p>
    #             <code>SetTerminationProtection</code> is used to prevent accidental termination of a
    #          cluster and to ensure that in the event of an error, the instances persist so that you can
    #          recover any data stored in their ephemeral instance storage.</p>
    #          <p> To terminate a cluster that has been locked by setting
    #             <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the
    #          job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the
    #          value to <code>false</code>. </p>
    #          <p> For more information, see<a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster
    #             Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::SetTerminationProtectionInput}.
    #
    # @option params [Array<String>] :job_flow_ids
    #   <p> A list of strings that uniquely identify the clusters to protect. This identifier is
    #            returned by <a>RunJobFlow</a> and can also be obtained from <a>DescribeJobFlows</a> . </p>
    #
    # @option params [Boolean] :termination_protected
    #   <p>A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or
    #            job-flow error.</p>
    #
    # @return [Types::SetTerminationProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_termination_protection(
    #     job_flow_ids: [
    #       'member'
    #     ], # required
    #     termination_protected: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTerminationProtectionOutput
    #
    def set_termination_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTerminationProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTerminationProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTerminationProtection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::SetTerminationProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTerminationProtection,
        stubs: @stubs,
        params_class: Params::SetTerminationProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_termination_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <important>
    #             <p>The SetVisibleToAllUsers parameter is no longer supported. Your cluster may be
    #             visible to all users in your account. To restrict cluster access using an IAM policy, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-iam.html">Identity and Access
    #                Management for EMR</a>. </p>
    #          </important>
    #          <p>Sets the <a>Cluster$VisibleToAllUsers</a> value for an EMR cluster. When
    #             <code>true</code>, IAM principals in the Amazon Web Services account can perform EMR
    #          cluster actions that their IAM policies allow. When <code>false</code>, only
    #          the IAM principal that created the cluster and the Amazon Web Services account root user can
    #          perform EMR actions on the cluster, regardless of IAM permissions policies attached to
    #          other IAM principals.</p>
    #          <p>This action works on running clusters. When you create a cluster, use the <a>RunJobFlowInput$VisibleToAllUsers</a> parameter.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_iam_emr-with-iam.html#security_set_visible_to_all_users">Understanding the EMR Cluster VisibleToAllUsers Setting</a> in the
    #                <i>Amazon EMRManagement Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetVisibleToAllUsersInput}.
    #
    # @option params [Array<String>] :job_flow_ids
    #   <p>The unique identifier of the job flow (cluster).</p>
    #
    # @option params [Boolean] :visible_to_all_users
    #   <p>A value of <code>true</code> indicates that an IAM principal in the Amazon Web Services account can perform EMR actions on the cluster that the IAM policies attached
    #            to the principal allow. A value of <code>false</code> indicates that only the IAM principal
    #            that created the cluster and the Amazon Web Services root user can perform EMR actions on
    #            the cluster.</p>
    #
    # @return [Types::SetVisibleToAllUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_visible_to_all_users(
    #     job_flow_ids: [
    #       'member'
    #     ], # required
    #     visible_to_all_users: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetVisibleToAllUsersOutput
    #
    def set_visible_to_all_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetVisibleToAllUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetVisibleToAllUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetVisibleToAllUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::SetVisibleToAllUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetVisibleToAllUsers,
        stubs: @stubs,
        params_class: Params::SetVisibleToAllUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_visible_to_all_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a notebook execution.</p>
    #
    # @param [Hash] params
    #   See {Types::StartNotebookExecutionInput}.
    #
    # @option params [String] :editor_id
    #   <p>The unique identifier of the EMR Notebook to use for notebook execution.</p>
    #
    # @option params [String] :relative_path
    #   <p>The path and file name of the notebook file for this execution, relative to the path
    #            specified for the EMR Notebook. For example, if you specify a path of
    #               <code>s3://MyBucket/MyNotebooks</code> when you create an EMR Notebook for a notebook
    #            with an ID of <code>e-ABCDEFGHIJK1234567890ABCD</code> (the <code>EditorID</code> of this
    #            request), and you specify a <code>RelativePath</code> of
    #               <code>my_notebook_executions/notebook_execution.ipynb</code>, the location of the file
    #            for the notebook execution is
    #               <code>s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb</code>.</p>
    #
    # @option params [String] :notebook_execution_name
    #   <p>An optional name for the notebook execution.</p>
    #
    # @option params [String] :notebook_params
    #   <p>Input parameters in JSON format passed to the EMR Notebook at runtime for
    #            execution.</p>
    #
    # @option params [ExecutionEngineConfig] :execution_engine
    #   <p>Specifies the execution engine (cluster) that runs the notebook execution.</p>
    #
    # @option params [String] :service_role
    #   <p>The name or ARN of the IAM role that is used as the service role for Amazon EMR
    #            (the EMR role) for the notebook execution.</p>
    #
    # @option params [String] :notebook_instance_security_group_id
    #   <p>The unique identifier of the Amazon EC2 security group to associate with the EMR
    #            Notebook for this notebook execution.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags associated with a notebook execution. Tags are user-defined key-value
    #            pairs that consist of a required key string with a maximum of 128 characters and an
    #            optional value string with a maximum of 256 characters.</p>
    #
    # @return [Types::StartNotebookExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_notebook_execution(
    #     editor_id: 'EditorId', # required
    #     relative_path: 'RelativePath', # required
    #     notebook_execution_name: 'NotebookExecutionName',
    #     notebook_params: 'NotebookParams',
    #     execution_engine: {
    #       id: 'Id', # required
    #       type: 'EMR', # accepts ["EMR"]
    #       master_instance_security_group_id: 'MasterInstanceSecurityGroupId'
    #     }, # required
    #     service_role: 'ServiceRole', # required
    #     notebook_instance_security_group_id: 'NotebookInstanceSecurityGroupId',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartNotebookExecutionOutput
    #   resp.data.notebook_execution_id #=> String
    #
    def start_notebook_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartNotebookExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartNotebookExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartNotebookExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartNotebookExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartNotebookExecution,
        stubs: @stubs,
        params_class: Params::StartNotebookExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_notebook_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a notebook execution.</p>
    #
    # @param [Hash] params
    #   See {Types::StopNotebookExecutionInput}.
    #
    # @option params [String] :notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    # @return [Types::StopNotebookExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_notebook_execution(
    #     notebook_execution_id: 'NotebookExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopNotebookExecutionOutput
    #
    def stop_notebook_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopNotebookExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopNotebookExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopNotebookExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::StopNotebookExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopNotebookExecution,
        stubs: @stubs,
        params_class: Params::StopNotebookExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_notebook_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut
    #          down, any step not yet completed is canceled and the EC2 instances on which the cluster is
    #          running are stopped. Any log files not already saved are uploaded to Amazon S3 if a
    #          LogUri was specified when the cluster was created.</p>
    #          <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code>
    #          is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5
    #          minutes for the cluster to completely terminate and release allocated resources, such as
    #             Amazon EC2 instances.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateJobFlowsInput}.
    #
    # @option params [Array<String>] :job_flow_ids
    #   <p>A list of job flows to be shut down.</p>
    #
    # @return [Types::TerminateJobFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_job_flows(
    #     job_flow_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateJobFlowsOutput
    #
    def terminate_job_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateJobFlowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateJobFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateJobFlows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::TerminateJobFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateJobFlows,
        stubs: @stubs,
        params_class: Params::TerminateJobFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_job_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon EMR Studio configuration, including attributes such as name,
    #          description, and subnets.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStudioInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio to update.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    #
    # @option params [String] :description
    #   <p>A detailed description to assign to the Amazon EMR Studio.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. The list can
    #            include new subnet IDs, but must also include all of the subnet IDs previously associated
    #            with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets.
    #            The subnets must belong to the same VPC as the Studio. </p>
    #
    # @option params [String] :default_s3_location
    #   <p>The Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio.</p>
    #
    # @return [Types::UpdateStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio(
    #     studio_id: 'StudioId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     subnet_ids: [
    #       'member'
    #     ],
    #     default_s3_location: 'DefaultS3Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStudioOutput
    #
    def update_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStudio,
        stubs: @stubs,
        params_class: Params::UpdateStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the session policy attached to the user or group for the specified Amazon EMR Studio.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStudioSessionMappingInput}.
    #
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    # @option params [String] :identity_name
    #   <p>The name of the user or group to update. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to update is a user or a group.</p>
    #
    # @option params [String] :session_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the session policy to associate with the specified
    #            user or group.</p>
    #
    # @return [Types::UpdateStudioSessionMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio_session_mapping(
    #     studio_id: 'StudioId', # required
    #     identity_id: 'IdentityId',
    #     identity_name: 'IdentityName',
    #     identity_type: 'USER', # required - accepts ["USER", "GROUP"]
    #     session_policy_arn: 'SessionPolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStudioSessionMappingOutput
    #
    def update_studio_session_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStudioSessionMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStudioSessionMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStudioSessionMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateStudioSessionMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStudioSessionMapping,
        stubs: @stubs,
        params_class: Params::UpdateStudioSessionMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_studio_session_mapping
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
