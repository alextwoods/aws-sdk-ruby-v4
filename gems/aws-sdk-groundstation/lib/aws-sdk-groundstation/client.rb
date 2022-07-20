# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::GroundStation
  # An API client for GroundStation
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that
  #       enables you to control satellite communications, downlink and process satellite data, and
  #       scale your satellite operations efficiently and cost-effectively without having
  #       to build or manage your own ground station infrastructure.</p>
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
    def initialize(config = AWS::SDK::GroundStation::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels a contact with a specified contact ID.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    #
    # @return [Types::CancelContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_contact(
    #     contact_id: 'contactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelContactOutput
    #   resp.data.contact_id #=> String
    #
    def cancel_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CancelContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelContact,
        stubs: @stubs,
        params_class: Params::CancelContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>Config</code> with the specified <code>configData</code> parameters.</p>
    #          <p>Only one type of <code>configData</code> can be specified.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigInput}.
    #
    # @option params [String] :name
    #   <p>Name of a <code>Config</code>.</p>
    #
    # @option params [ConfigTypeData] :config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    #
    # @return [Types::CreateConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_config(
    #     name: 'name', # required
    #     config_data: {
    #       # One of:
    #       antenna_downlink_config: {
    #         spectrum_config: {
    #           center_frequency: {
    #             value: 1.0, # required
    #             units: 'GHz' # required - accepts ["GHz", "MHz", "kHz"]
    #           }, # required
    #           bandwidth: {
    #             value: 1.0, # required
    #             units: 'GHz' # required - accepts ["GHz", "MHz", "kHz"]
    #           }, # required
    #           polarization: 'LEFT_HAND' # accepts ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #         } # required
    #       },
    #       tracking_config: {
    #         autotrack: 'PREFERRED' # required - accepts ["PREFERRED", "REMOVED", "REQUIRED"]
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: 'dataflowEndpointName', # required
    #         dataflow_endpoint_region: 'dataflowEndpointRegion'
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         demodulation_config: {
    #           unvalidated_json: 'unvalidatedJSON' # required
    #         }, # required
    #         decode_config: {
    #           unvalidated_json: 'unvalidatedJSON' # required
    #         } # required
    #       },
    #       antenna_uplink_config: {
    #         transmit_disabled: false,
    #         spectrum_config: {
    #           polarization: 'LEFT_HAND' # accepts ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #         }, # required
    #         target_eirp: {
    #           value: 1.0, # required
    #           units: 'dBW' # required - accepts ["dBW"]
    #         } # required
    #       },
    #       uplink_echo_config: {
    #         enabled: false, # required
    #         antenna_uplink_config_arn: 'antennaUplinkConfigArn' # required
    #       },
    #       s3_recording_config: {
    #         bucket_arn: 'bucketArn', # required
    #         role_arn: 'roleArn', # required
    #         prefix: 'prefix'
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigOutput
    #   resp.data.config_id #=> String
    #   resp.data.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.config_arn #=> String
    #
    def create_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceLimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfig,
        stubs: @stubs,
        params_class: Params::CreateConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>DataflowEndpoint</code> group containing the specified list of <code>DataflowEndpoint</code> objects.</p>
    #          <p>The <code>name</code> field in each endpoint is used in your mission profile <code>DataflowEndpointConfig</code>
    #          to specify which endpoints to use during a contact.</p>
    #          <p>When a contact uses multiple <code>DataflowEndpointConfig</code> objects, each <code>Config</code>
    #          must match a <code>DataflowEndpoint</code> in the same group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataflowEndpointGroupInput}.
    #
    # @option params [Array<EndpointDetails>] :endpoint_details
    #   <p>Endpoint details of each endpoint in the dataflow endpoint group.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags of a dataflow endpoint group.</p>
    #
    # @return [Types::CreateDataflowEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataflow_endpoint_group(
    #     endpoint_details: [
    #       {
    #         security_details: {
    #           subnet_ids: [
    #             'member'
    #           ], # required
    #           security_group_ids: [
    #             'member'
    #           ], # required
    #           role_arn: 'roleArn' # required
    #         },
    #         endpoint: {
    #           name: 'name',
    #           address: {
    #             name: 'name', # required
    #             port: 1 # required
    #           },
    #           status: 'created', # accepts ["created", "creating", "deleted", "deleting", "failed"]
    #           mtu: 1
    #         }
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataflowEndpointGroupOutput
    #   resp.data.dataflow_endpoint_group_id #=> String
    #
    def create_dataflow_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataflowEndpointGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataflowEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataflowEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateDataflowEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataflowEndpointGroup,
        stubs: @stubs,
        params_class: Params::CreateDataflowEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataflow_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a mission profile.</p>
    #          <p>
    #             <code>dataflowEdges</code> is a list of lists of strings. Each lower level list of strings
    #          has two elements: a <i>from</i> ARN and a <i>to</i> ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMissionProfileInput}.
    #
    # @option params [String] :name
    #   <p>Name of a mission profile.</p>
    #
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>
    #
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    # @option params [Integer] :minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #
    # @option params [Array<Array<String>>] :dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>
    #               <code>Config</code> and a <i>to</i>
    #               <code>Config</code>.</p>
    #
    # @option params [String] :tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a mission profile.</p>
    #
    # @return [Types::CreateMissionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mission_profile(
    #     name: 'name', # required
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     minimum_viable_contact_duration_seconds: 1, # required
    #     dataflow_edges: [
    #       [
    #         'member'
    #       ]
    #     ], # required
    #     tracking_config_arn: 'trackingConfigArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMissionProfileOutput
    #   resp.data.mission_profile_id #=> String
    #
    def create_mission_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMissionProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMissionProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMissionProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateMissionProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMissionProfile,
        stubs: @stubs,
        params_class: Params::CreateMissionProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_mission_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>Config</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigInput}.
    #
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    # @return [Types::DeleteConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_config(
    #     config_id: 'configId', # required
    #     config_type: 'antenna-downlink' # required - accepts ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigOutput
    #   resp.data.config_id #=> String
    #   resp.data.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.config_arn #=> String
    #
    def delete_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfig,
        stubs: @stubs,
        params_class: Params::DeleteConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dataflow endpoint group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataflowEndpointGroupInput}.
    #
    # @option params [String] :dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    # @return [Types::DeleteDataflowEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataflow_endpoint_group(
    #     dataflow_endpoint_group_id: 'dataflowEndpointGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataflowEndpointGroupOutput
    #   resp.data.dataflow_endpoint_group_id #=> String
    #
    def delete_dataflow_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataflowEndpointGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataflowEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataflowEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDataflowEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataflowEndpointGroup,
        stubs: @stubs,
        params_class: Params::DeleteDataflowEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataflow_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a mission profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMissionProfileInput}.
    #
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    # @return [Types::DeleteMissionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mission_profile(
    #     mission_profile_id: 'missionProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMissionProfileOutput
    #   resp.data.mission_profile_id #=> String
    #
    def delete_mission_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMissionProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMissionProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMissionProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteMissionProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMissionProfile,
        stubs: @stubs,
        params_class: Params::DeleteMissionProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mission_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing contact.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>UUID of a contact.</p>
    #
    # @return [Types::DescribeContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact(
    #     contact_id: 'contactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContactOutput
    #   resp.data.contact_id #=> String
    #   resp.data.mission_profile_arn #=> String
    #   resp.data.satellite_arn #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.pre_pass_start_time #=> Time
    #   resp.data.post_pass_end_time #=> Time
    #   resp.data.ground_station #=> String
    #   resp.data.contact_status #=> String, one of ["AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"]
    #   resp.data.error_message #=> String
    #   resp.data.maximum_elevation #=> Types::Elevation
    #   resp.data.maximum_elevation.value #=> Float
    #   resp.data.maximum_elevation.unit #=> String, one of ["DEGREE_ANGLE", "RADIAN"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.region #=> String
    #   resp.data.dataflow_list #=> Array<DataflowDetail>
    #   resp.data.dataflow_list[0] #=> Types::DataflowDetail
    #   resp.data.dataflow_list[0].source #=> Types::Source
    #   resp.data.dataflow_list[0].source.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.dataflow_list[0].source.config_id #=> String
    #   resp.data.dataflow_list[0].source.config_details #=> Types::ConfigDetails, one of [EndpointDetails, AntennaDemodDecodeDetails, S3RecordingDetails]
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details #=> Types::EndpointDetails
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details #=> Types::SecurityDetails
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details.subnet_ids #=> Array<String>
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details.subnet_ids[0] #=> String
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details.security_group_ids #=> Array<String>
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details.security_group_ids[0] #=> String
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.security_details.role_arn #=> String
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint #=> Types::DataflowEndpoint
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.name #=> String
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.address #=> Types::SocketAddress
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.address.name #=> String
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.address.port #=> Integer
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.status #=> String, one of ["created", "creating", "deleted", "deleting", "failed"]
    #   resp.data.dataflow_list[0].source.config_details.endpoint_details.endpoint.mtu #=> Integer
    #   resp.data.dataflow_list[0].source.config_details.antenna_demod_decode_details #=> Types::AntennaDemodDecodeDetails
    #   resp.data.dataflow_list[0].source.config_details.antenna_demod_decode_details.output_node #=> String
    #   resp.data.dataflow_list[0].source.config_details.s3_recording_details #=> Types::S3RecordingDetails
    #   resp.data.dataflow_list[0].source.config_details.s3_recording_details.bucket_arn #=> String
    #   resp.data.dataflow_list[0].source.config_details.s3_recording_details.key_template #=> String
    #   resp.data.dataflow_list[0].source.dataflow_source_region #=> String
    #   resp.data.dataflow_list[0].destination #=> Types::Destination
    #   resp.data.dataflow_list[0].destination.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.dataflow_list[0].destination.config_id #=> String
    #   resp.data.dataflow_list[0].destination.config_details #=> Types::ConfigDetails, one of [EndpointDetails, AntennaDemodDecodeDetails, S3RecordingDetails]
    #   resp.data.dataflow_list[0].destination.dataflow_destination_region #=> String
    #   resp.data.dataflow_list[0].error_message #=> String
    #
    def describe_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContact,
        stubs: @stubs,
        params_class: Params::DescribeContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns <code>Config</code> information.</p>
    #          <p>Only one <code>Config</code> response can be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigInput}.
    #
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    # @return [Types::GetConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_config(
    #     config_id: 'configId', # required
    #     config_type: 'antenna-downlink' # required - accepts ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigOutput
    #   resp.data.config_id #=> String
    #   resp.data.config_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.config_data #=> Types::ConfigTypeData, one of [AntennaDownlinkConfig, TrackingConfig, DataflowEndpointConfig, AntennaDownlinkDemodDecodeConfig, AntennaUplinkConfig, UplinkEchoConfig, S3RecordingConfig]
    #   resp.data.config_data.antenna_downlink_config #=> Types::AntennaDownlinkConfig
    #   resp.data.config_data.antenna_downlink_config.spectrum_config #=> Types::SpectrumConfig
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.center_frequency #=> Types::Frequency
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.center_frequency.value #=> Float
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.center_frequency.units #=> String, one of ["GHz", "MHz", "kHz"]
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.bandwidth #=> Types::FrequencyBandwidth
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.bandwidth.value #=> Float
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.bandwidth.units #=> String, one of ["GHz", "MHz", "kHz"]
    #   resp.data.config_data.antenna_downlink_config.spectrum_config.polarization #=> String, one of ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #   resp.data.config_data.tracking_config #=> Types::TrackingConfig
    #   resp.data.config_data.tracking_config.autotrack #=> String, one of ["PREFERRED", "REMOVED", "REQUIRED"]
    #   resp.data.config_data.dataflow_endpoint_config #=> Types::DataflowEndpointConfig
    #   resp.data.config_data.dataflow_endpoint_config.dataflow_endpoint_name #=> String
    #   resp.data.config_data.dataflow_endpoint_config.dataflow_endpoint_region #=> String
    #   resp.data.config_data.antenna_downlink_demod_decode_config #=> Types::AntennaDownlinkDemodDecodeConfig
    #   resp.data.config_data.antenna_downlink_demod_decode_config.spectrum_config #=> Types::SpectrumConfig
    #   resp.data.config_data.antenna_downlink_demod_decode_config.demodulation_config #=> Types::DemodulationConfig
    #   resp.data.config_data.antenna_downlink_demod_decode_config.demodulation_config.unvalidated_json #=> String
    #   resp.data.config_data.antenna_downlink_demod_decode_config.decode_config #=> Types::DecodeConfig
    #   resp.data.config_data.antenna_downlink_demod_decode_config.decode_config.unvalidated_json #=> String
    #   resp.data.config_data.antenna_uplink_config #=> Types::AntennaUplinkConfig
    #   resp.data.config_data.antenna_uplink_config.transmit_disabled #=> Boolean
    #   resp.data.config_data.antenna_uplink_config.spectrum_config #=> Types::UplinkSpectrumConfig
    #   resp.data.config_data.antenna_uplink_config.spectrum_config.center_frequency #=> Types::Frequency
    #   resp.data.config_data.antenna_uplink_config.spectrum_config.polarization #=> String, one of ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #   resp.data.config_data.antenna_uplink_config.target_eirp #=> Types::Eirp
    #   resp.data.config_data.antenna_uplink_config.target_eirp.value #=> Float
    #   resp.data.config_data.antenna_uplink_config.target_eirp.units #=> String, one of ["dBW"]
    #   resp.data.config_data.uplink_echo_config #=> Types::UplinkEchoConfig
    #   resp.data.config_data.uplink_echo_config.enabled #=> Boolean
    #   resp.data.config_data.uplink_echo_config.antenna_uplink_config_arn #=> String
    #   resp.data.config_data.s3_recording_config #=> Types::S3RecordingConfig
    #   resp.data.config_data.s3_recording_config.bucket_arn #=> String
    #   resp.data.config_data.s3_recording_config.role_arn #=> String
    #   resp.data.config_data.s3_recording_config.prefix #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfig,
        stubs: @stubs,
        params_class: Params::GetConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the dataflow endpoint group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataflowEndpointGroupInput}.
    #
    # @option params [String] :dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    # @return [Types::GetDataflowEndpointGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataflow_endpoint_group(
    #     dataflow_endpoint_group_id: 'dataflowEndpointGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataflowEndpointGroupOutput
    #   resp.data.dataflow_endpoint_group_id #=> String
    #   resp.data.dataflow_endpoint_group_arn #=> String
    #   resp.data.endpoints_details #=> Array<EndpointDetails>
    #   resp.data.endpoints_details[0] #=> Types::EndpointDetails
    #   resp.data.endpoints_details[0].security_details #=> Types::SecurityDetails
    #   resp.data.endpoints_details[0].security_details.subnet_ids #=> Array<String>
    #   resp.data.endpoints_details[0].security_details.subnet_ids[0] #=> String
    #   resp.data.endpoints_details[0].security_details.security_group_ids #=> Array<String>
    #   resp.data.endpoints_details[0].security_details.security_group_ids[0] #=> String
    #   resp.data.endpoints_details[0].security_details.role_arn #=> String
    #   resp.data.endpoints_details[0].endpoint #=> Types::DataflowEndpoint
    #   resp.data.endpoints_details[0].endpoint.name #=> String
    #   resp.data.endpoints_details[0].endpoint.address #=> Types::SocketAddress
    #   resp.data.endpoints_details[0].endpoint.address.name #=> String
    #   resp.data.endpoints_details[0].endpoint.address.port #=> Integer
    #   resp.data.endpoints_details[0].endpoint.status #=> String, one of ["created", "creating", "deleted", "deleting", "failed"]
    #   resp.data.endpoints_details[0].endpoint.mtu #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_dataflow_endpoint_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataflowEndpointGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataflowEndpointGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataflowEndpointGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetDataflowEndpointGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataflowEndpointGroup,
        stubs: @stubs,
        params_class: Params::GetDataflowEndpointGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dataflow_endpoint_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of minutes used by account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMinuteUsageInput}.
    #
    # @option params [Integer] :month
    #   <p>The month being requested, with a value of 1-12.</p>
    #
    # @option params [Integer] :year
    #   <p>The year being requested, in the format of YYYY.</p>
    #
    # @return [Types::GetMinuteUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_minute_usage(
    #     month: 1, # required
    #     year: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMinuteUsageOutput
    #   resp.data.is_reserved_minutes_customer #=> Boolean
    #   resp.data.total_reserved_minute_allocation #=> Integer
    #   resp.data.upcoming_minutes_scheduled #=> Integer
    #   resp.data.total_scheduled_minutes #=> Integer
    #   resp.data.estimated_minutes_remaining #=> Integer
    #
    def get_minute_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMinuteUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMinuteUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMinuteUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetMinuteUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMinuteUsage,
        stubs: @stubs,
        params_class: Params::GetMinuteUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_minute_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a mission profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMissionProfileInput}.
    #
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    # @return [Types::GetMissionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mission_profile(
    #     mission_profile_id: 'missionProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMissionProfileOutput
    #   resp.data.mission_profile_id #=> String
    #   resp.data.mission_profile_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.region #=> String
    #   resp.data.contact_pre_pass_duration_seconds #=> Integer
    #   resp.data.contact_post_pass_duration_seconds #=> Integer
    #   resp.data.minimum_viable_contact_duration_seconds #=> Integer
    #   resp.data.dataflow_edges #=> Array<Array<String>>
    #   resp.data.dataflow_edges[0] #=> Array<String>
    #   resp.data.dataflow_edges[0][0] #=> String
    #   resp.data.tracking_config_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_mission_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMissionProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMissionProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMissionProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetMissionProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMissionProfile,
        stubs: @stubs,
        params_class: Params::GetMissionProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mission_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a satellite.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSatelliteInput}.
    #
    # @option params [String] :satellite_id
    #   <p>UUID of a satellite.</p>
    #
    # @return [Types::GetSatelliteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_satellite(
    #     satellite_id: 'satelliteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSatelliteOutput
    #   resp.data.satellite_id #=> String
    #   resp.data.satellite_arn #=> String
    #   resp.data.norad_satellite_id #=> Integer
    #   resp.data.ground_stations #=> Array<String>
    #   resp.data.ground_stations[0] #=> String
    #
    def get_satellite(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSatelliteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSatelliteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSatellite
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSatellite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSatellite,
        stubs: @stubs,
        params_class: Params::GetSatelliteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_satellite
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>Config</code> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of <code>Configs</code> returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    #
    # @return [Types::ListConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configs(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigsOutput
    #   resp.data.next_token #=> String
    #   resp.data.config_list #=> Array<ConfigListItem>
    #   resp.data.config_list[0] #=> Types::ConfigListItem
    #   resp.data.config_list[0].config_id #=> String
    #   resp.data.config_list[0].config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.config_list[0].config_arn #=> String
    #   resp.data.config_list[0].name #=> String
    #
    def list_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigs,
        stubs: @stubs,
        params_class: Params::ListConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of contacts.</p>
    #          <p>If <code>statusList</code> contains AVAILABLE, the request must include
    #       <code>groundStation</code>, <code>missionprofileArn</code>, and <code>satelliteArn</code>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListContactsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of contacts returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    #
    # @option params [Array<String>] :status_list
    #   <p>Status of a contact reservation.</p>
    #
    # @option params [Time] :start_time
    #   <p>Start time of a contact.</p>
    #
    # @option params [Time] :end_time
    #   <p>End time of a contact.</p>
    #
    # @option params [String] :ground_station
    #   <p>Name of a ground station.</p>
    #
    # @option params [String] :satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    # @option params [String] :mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    # @return [Types::ListContactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     status_list: [
    #       'AVAILABLE' # accepts ["AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"]
    #     ], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     ground_station: 'groundStation',
    #     satellite_arn: 'satelliteArn',
    #     mission_profile_arn: 'missionProfileArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactsOutput
    #   resp.data.next_token #=> String
    #   resp.data.contact_list #=> Array<ContactData>
    #   resp.data.contact_list[0] #=> Types::ContactData
    #   resp.data.contact_list[0].contact_id #=> String
    #   resp.data.contact_list[0].mission_profile_arn #=> String
    #   resp.data.contact_list[0].satellite_arn #=> String
    #   resp.data.contact_list[0].start_time #=> Time
    #   resp.data.contact_list[0].end_time #=> Time
    #   resp.data.contact_list[0].pre_pass_start_time #=> Time
    #   resp.data.contact_list[0].post_pass_end_time #=> Time
    #   resp.data.contact_list[0].ground_station #=> String
    #   resp.data.contact_list[0].contact_status #=> String, one of ["AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"]
    #   resp.data.contact_list[0].error_message #=> String
    #   resp.data.contact_list[0].maximum_elevation #=> Types::Elevation
    #   resp.data.contact_list[0].maximum_elevation.value #=> Float
    #   resp.data.contact_list[0].maximum_elevation.unit #=> String, one of ["DEGREE_ANGLE", "RADIAN"]
    #   resp.data.contact_list[0].region #=> String
    #   resp.data.contact_list[0].tags #=> Hash<String, String>
    #   resp.data.contact_list[0].tags['key'] #=> String
    #
    def list_contacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContacts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListContacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContacts,
        stubs: @stubs,
        params_class: Params::ListContactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <code>DataflowEndpoint</code> groups.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataflowEndpointGroupsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of dataflow endpoint groups returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    #
    # @return [Types::ListDataflowEndpointGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataflow_endpoint_groups(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataflowEndpointGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.dataflow_endpoint_group_list #=> Array<DataflowEndpointListItem>
    #   resp.data.dataflow_endpoint_group_list[0] #=> Types::DataflowEndpointListItem
    #   resp.data.dataflow_endpoint_group_list[0].dataflow_endpoint_group_id #=> String
    #   resp.data.dataflow_endpoint_group_list[0].dataflow_endpoint_group_arn #=> String
    #
    def list_dataflow_endpoint_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataflowEndpointGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataflowEndpointGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataflowEndpointGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListDataflowEndpointGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataflowEndpointGroups,
        stubs: @stubs,
        params_class: Params::ListDataflowEndpointGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataflow_endpoint_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of ground stations. </p>
    #
    # @param [Hash] params
    #   See {Types::ListGroundStationsInput}.
    #
    # @option params [String] :satellite_id
    #   <p>Satellite ID to retrieve on-boarded ground stations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of ground stations returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    #
    # @return [Types::ListGroundStationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ground_stations(
    #     satellite_id: 'satelliteId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroundStationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.ground_station_list #=> Array<GroundStationData>
    #   resp.data.ground_station_list[0] #=> Types::GroundStationData
    #   resp.data.ground_station_list[0].ground_station_id #=> String
    #   resp.data.ground_station_list[0].ground_station_name #=> String
    #   resp.data.ground_station_list[0].region #=> String
    #
    def list_ground_stations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroundStationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroundStationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroundStations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListGroundStations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroundStations,
        stubs: @stubs,
        params_class: Params::ListGroundStationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ground_stations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of mission profiles.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMissionProfilesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of mission profiles returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    #
    # @return [Types::ListMissionProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mission_profiles(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMissionProfilesOutput
    #   resp.data.next_token #=> String
    #   resp.data.mission_profile_list #=> Array<MissionProfileListItem>
    #   resp.data.mission_profile_list[0] #=> Types::MissionProfileListItem
    #   resp.data.mission_profile_list[0].mission_profile_id #=> String
    #   resp.data.mission_profile_list[0].mission_profile_arn #=> String
    #   resp.data.mission_profile_list[0].region #=> String
    #   resp.data.mission_profile_list[0].name #=> String
    #
    def list_mission_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMissionProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMissionProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMissionProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListMissionProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMissionProfiles,
        stubs: @stubs,
        params_class: Params::ListMissionProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mission_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of satellites.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSatellitesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of satellites returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    #
    # @return [Types::ListSatellitesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_satellites(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSatellitesOutput
    #   resp.data.next_token #=> String
    #   resp.data.satellites #=> Array<SatelliteListItem>
    #   resp.data.satellites[0] #=> Types::SatelliteListItem
    #   resp.data.satellites[0].satellite_id #=> String
    #   resp.data.satellites[0].satellite_arn #=> String
    #   resp.data.satellites[0].norad_satellite_id #=> Integer
    #   resp.data.satellites[0].ground_stations #=> Array<String>
    #   resp.data.satellites[0].ground_stations[0] #=> String
    #
    def list_satellites(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSatellitesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSatellitesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSatellites
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListSatellites
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSatellites,
        stubs: @stubs,
        params_class: Params::ListSatellitesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_satellites
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags for a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of a resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
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

    # <p>Reserves a contact using specified parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ReserveContactInput}.
    #
    # @option params [String] :mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    # @option params [String] :satellite_arn
    #   <p>ARN of a satellite</p>
    #
    # @option params [Time] :start_time
    #   <p>Start time of a contact.</p>
    #
    # @option params [Time] :end_time
    #   <p>End time of a contact.</p>
    #
    # @option params [String] :ground_station
    #   <p>Name of a ground station.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a contact.</p>
    #
    # @return [Types::ReserveContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reserve_contact(
    #     mission_profile_arn: 'missionProfileArn', # required
    #     satellite_arn: 'satelliteArn', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     ground_station: 'groundStation', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReserveContactOutput
    #   resp.data.contact_id #=> String
    #
    def reserve_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReserveContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReserveContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReserveContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ReserveContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReserveContact,
        stubs: @stubs,
        params_class: Params::ReserveContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reserve_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of a resource tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to a resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
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

    # <p>Deassigns a resource tag.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of a resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of a resource tag.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the <code>Config</code> used when scheduling contacts.</p>
    #          <p>Updating a <code>Config</code> will not update the execution parameters
    #          for existing future contacts scheduled with this <code>Config</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigInput}.
    #
    # @option params [String] :config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    # @option params [String] :name
    #   <p>Name of a <code>Config</code>.</p>
    #
    # @option params [String] :config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    # @option params [ConfigTypeData] :config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #
    # @return [Types::UpdateConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_config(
    #     config_id: 'configId', # required
    #     name: 'name', # required
    #     config_type: 'antenna-downlink', # required - accepts ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #     config_data: {
    #       # One of:
    #       antenna_downlink_config: {
    #         spectrum_config: {
    #           center_frequency: {
    #             value: 1.0, # required
    #             units: 'GHz' # required - accepts ["GHz", "MHz", "kHz"]
    #           }, # required
    #           bandwidth: {
    #             value: 1.0, # required
    #             units: 'GHz' # required - accepts ["GHz", "MHz", "kHz"]
    #           }, # required
    #           polarization: 'LEFT_HAND' # accepts ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #         } # required
    #       },
    #       tracking_config: {
    #         autotrack: 'PREFERRED' # required - accepts ["PREFERRED", "REMOVED", "REQUIRED"]
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: 'dataflowEndpointName', # required
    #         dataflow_endpoint_region: 'dataflowEndpointRegion'
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         demodulation_config: {
    #           unvalidated_json: 'unvalidatedJSON' # required
    #         }, # required
    #         decode_config: {
    #           unvalidated_json: 'unvalidatedJSON' # required
    #         } # required
    #       },
    #       antenna_uplink_config: {
    #         transmit_disabled: false,
    #         spectrum_config: {
    #           polarization: 'LEFT_HAND' # accepts ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #         }, # required
    #         target_eirp: {
    #           value: 1.0, # required
    #           units: 'dBW' # required - accepts ["dBW"]
    #         } # required
    #       },
    #       uplink_echo_config: {
    #         enabled: false, # required
    #         antenna_uplink_config_arn: 'antennaUplinkConfigArn' # required
    #       },
    #       s3_recording_config: {
    #         bucket_arn: 'bucketArn', # required
    #         role_arn: 'roleArn', # required
    #         prefix: 'prefix'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigOutput
    #   resp.data.config_id #=> String
    #   resp.data.config_type #=> String, one of ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #   resp.data.config_arn #=> String
    #
    def update_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfig,
        stubs: @stubs,
        params_class: Params::UpdateConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a mission profile.</p>
    #          <p>Updating a mission profile will not update the execution parameters
    #          for existing future contacts.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMissionProfileInput}.
    #
    # @option params [String] :mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    # @option params [String] :name
    #   <p>Name of a mission profile.</p>
    #
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    # @option params [Integer] :minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #
    # @option params [Array<Array<String>>] :dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>
    #               <code>Config</code> and a <i>to</i>
    #               <code>Config</code>.</p>
    #
    # @option params [String] :tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #
    # @return [Types::UpdateMissionProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mission_profile(
    #     mission_profile_id: 'missionProfileId', # required
    #     name: 'name',
    #     contact_pre_pass_duration_seconds: 1,
    #     contact_post_pass_duration_seconds: 1,
    #     minimum_viable_contact_duration_seconds: 1,
    #     dataflow_edges: [
    #       [
    #         'member'
    #       ]
    #     ],
    #     tracking_config_arn: 'trackingConfigArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMissionProfileOutput
    #   resp.data.mission_profile_id #=> String
    #
    def update_mission_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMissionProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMissionProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMissionProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::DependencyException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateMissionProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMissionProfile,
        stubs: @stubs,
        params_class: Params::UpdateMissionProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_mission_profile
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
