# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Location
  # An API client for LocationService
  # See {#initialize} for a full list of supported configuration options
  # Suite of geospatial services including Maps, Places, Routes, Tracking, and Geofencing
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
    def initialize(config = AWS::SDK::Location::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an association between a geofence collection and a tracker resource. This
    #             allows the tracker resource to communicate location data to the linked geofence
    #             collection. </p>
    #         <p>You can associate up to five geofence collections to each tracker resource.</p>
    #         <note>
    #             <p>Currently not supported — Cross-account configurations, such as creating associations between a tracker resource in one account and a geofence collection in another account.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateTrackerConsumerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be associated with a geofence collection.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker
    #               resource. Used when you need to specify a resource across all AWS.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AssociateTrackerConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tracker_consumer(
    #     tracker_name: 'TrackerName', # required
    #     consumer_arn: 'ConsumerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTrackerConsumerOutput
    #
    def associate_tracker_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTrackerConsumerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTrackerConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTrackerConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::AssociateTrackerConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTrackerConsumer,
        stubs: @stubs,
        params_class: Params::AssociateTrackerConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_tracker_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the position history of one or more devices from a tracker resource.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteDevicePositionHistoryInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to delete the device position history from.</p>
    #
    # @option params [Array<String>] :device_ids
    #   <p>Devices whose position history you want to delete.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>“DeviceIds” : [DeviceId1,DeviceId2]</code>
    #                  </p>
    #              </li>
    #            </ul>
    #
    # @return [Types::BatchDeleteDevicePositionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_device_position_history(
    #     tracker_name: 'TrackerName', # required
    #     device_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteDevicePositionHistoryOutput
    #   resp.data.errors #=> Array<BatchDeleteDevicePositionHistoryError>
    #   resp.data.errors[0] #=> Types::BatchDeleteDevicePositionHistoryError
    #   resp.data.errors[0].device_id #=> String
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #
    def batch_delete_device_position_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteDevicePositionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteDevicePositionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteDevicePositionHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchDeleteDevicePositionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteDevicePositionHistory,
        stubs: @stubs,
        params_class: Params::BatchDeleteDevicePositionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_device_position_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a batch of geofences from a geofence collection.</p>
    #         <note>
    #             <p>This operation deletes the resource permanently.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteGeofenceInput}.
    #
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the geofences to be deleted.</p>
    #
    # @option params [Array<String>] :geofence_ids
    #   <p>The batch of geofences to be deleted.</p>
    #
    # @return [Types::BatchDeleteGeofenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_geofence(
    #     collection_name: 'CollectionName', # required
    #     geofence_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteGeofenceOutput
    #   resp.data.errors #=> Array<BatchDeleteGeofenceError>
    #   resp.data.errors[0] #=> Types::BatchDeleteGeofenceError
    #   resp.data.errors[0].geofence_id #=> String
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #
    def batch_delete_geofence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteGeofenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteGeofenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteGeofence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchDeleteGeofence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteGeofence,
        stubs: @stubs,
        params_class: Params::BatchDeleteGeofenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_geofence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Evaluates device positions against the geofence geometries from a given geofence
    #             collection.</p>
    #         <p>This operation always returns an empty response because geofences are asynchronously
    #             evaluated. The evaluation determines if the device has entered or exited a geofenced
    #             area, and then publishes one of the following events to Amazon EventBridge:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>ENTER</code> if Amazon Location determines that the tracked device has entered
    #                     a geofenced area.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>EXIT</code> if Amazon Location determines that the tracked device has exited a
    #                     geofenced area.</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>The last geofence that a device was observed within is tracked for 30 days after
    #                 the most recent device position update.</p>
    #         </note>
    #         <note>
    #             <p>Geofence evaluation uses the given device position. It does not account for the
    #                 optional <code>Accuracy</code> of a <code>DevicePositionUpdate</code>.</p>
    #         </note>
    #         <note>
    #             <p>The <code>DeviceID</code> is used as a string to represent the device. You do not
    #                 need to have a <code>Tracker</code> associated with the <code>DeviceID</code>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::BatchEvaluateGeofencesInput}.
    #
    # @option params [String] :collection_name
    #   <p>The geofence collection used in evaluating the position of devices against its
    #               geofences.</p>
    #
    # @option params [Array<DevicePositionUpdate>] :device_position_updates
    #   <p>Contains device details for each device to be evaluated against the given geofence
    #               collection.</p>
    #
    # @return [Types::BatchEvaluateGeofencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_evaluate_geofences(
    #     collection_name: 'CollectionName', # required
    #     device_position_updates: [
    #       {
    #         device_id: 'DeviceId', # required
    #         sample_time: Time.now, # required
    #         position: [
    #           1.0
    #         ], # required
    #         accuracy: {
    #           horizontal: 1.0 # required
    #         },
    #         position_properties: {
    #           'key' => 'value'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchEvaluateGeofencesOutput
    #   resp.data.errors #=> Array<BatchEvaluateGeofencesError>
    #   resp.data.errors[0] #=> Types::BatchEvaluateGeofencesError
    #   resp.data.errors[0].device_id #=> String
    #   resp.data.errors[0].sample_time #=> Time
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #
    def batch_evaluate_geofences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchEvaluateGeofencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchEvaluateGeofencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchEvaluateGeofences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchEvaluateGeofences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchEvaluateGeofences,
        stubs: @stubs,
        params_class: Params::BatchEvaluateGeofencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_evaluate_geofences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the latest device positions for requested devices.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetDevicePositionInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The tracker resource retrieving the device position.</p>
    #
    # @option params [Array<String>] :device_ids
    #   <p>Devices whose position you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>device-ids=DeviceId1&amp;device-ids=DeviceId2</code>
    #                  </p>
    #              </li>
    #            </ul>
    #
    # @return [Types::BatchGetDevicePositionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_device_position(
    #     tracker_name: 'TrackerName', # required
    #     device_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDevicePositionOutput
    #   resp.data.errors #=> Array<BatchGetDevicePositionError>
    #   resp.data.errors[0] #=> Types::BatchGetDevicePositionError
    #   resp.data.errors[0].device_id #=> String
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #   resp.data.device_positions #=> Array<DevicePosition>
    #   resp.data.device_positions[0] #=> Types::DevicePosition
    #   resp.data.device_positions[0].device_id #=> String
    #   resp.data.device_positions[0].sample_time #=> Time
    #   resp.data.device_positions[0].received_time #=> Time
    #   resp.data.device_positions[0].position #=> Array<Float>
    #   resp.data.device_positions[0].position[0] #=> Float
    #   resp.data.device_positions[0].accuracy #=> Types::PositionalAccuracy
    #   resp.data.device_positions[0].accuracy.horizontal #=> Float
    #   resp.data.device_positions[0].position_properties #=> Hash<String, String>
    #   resp.data.device_positions[0].position_properties['key'] #=> String
    #
    def batch_get_device_position(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDevicePositionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDevicePositionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDevicePosition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetDevicePosition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDevicePosition,
        stubs: @stubs,
        params_class: Params::BatchGetDevicePositionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_device_position
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A batch request for storing geofence geometries into a given geofence collection, or
    #             updates the geometry of an existing geofence if a geofence ID is included in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutGeofenceInput}.
    #
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the geofences.</p>
    #
    # @option params [Array<BatchPutGeofenceRequestEntry>] :entries
    #   <p>The batch of geofences to be stored in a geofence collection.</p>
    #
    # @return [Types::BatchPutGeofenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_geofence(
    #     collection_name: 'CollectionName', # required
    #     entries: [
    #       {
    #         geofence_id: 'GeofenceId', # required
    #         geometry: {
    #           polygon: [
    #             [
    #               [
    #                 1.0
    #               ]
    #             ]
    #           ]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutGeofenceOutput
    #   resp.data.successes #=> Array<BatchPutGeofenceSuccess>
    #   resp.data.successes[0] #=> Types::BatchPutGeofenceSuccess
    #   resp.data.successes[0].geofence_id #=> String
    #   resp.data.successes[0].create_time #=> Time
    #   resp.data.successes[0].update_time #=> Time
    #   resp.data.errors #=> Array<BatchPutGeofenceError>
    #   resp.data.errors[0] #=> Types::BatchPutGeofenceError
    #   resp.data.errors[0].geofence_id #=> String
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #
    def batch_put_geofence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutGeofenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutGeofenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutGeofence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchPutGeofence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutGeofence,
        stubs: @stubs,
        params_class: Params::BatchPutGeofenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_geofence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads position update data for one or more devices to a tracker resource. Amazon Location
    #            uses the data when it reports the last known device position and position history. Amazon Location retains location data for 30
    #            days.</p>
    #          <note>
    #            <p>Position updates are handled based on the <code>PositionFiltering</code> property of the tracker.
    #                When <code>PositionFiltering</code> is set to <code>TimeBased</code>, updates are evaluated against linked geofence collections,
    #                and location data is stored at a maximum of one position per 30 second interval. If your update frequency is more often than
    #                every 30 seconds, only one update per 30 seconds is stored for each unique device ID.</p>
    #             <p>When <code>PositionFiltering</code> is set to <code>DistanceBased</code> filtering, location data is stored and evaluated against linked geofence
    #                 collections only if the device has moved more than 30 m (98.4 ft).</p>
    #             <p>When <code>PositionFiltering</code> is set to <code>AccuracyBased</code> filtering,
    #                 location data is stored and evaluated against linked geofence collections only if the
    #                 device has moved more than the measured accuracy. For example, if two consecutive
    #                 updates from a device have a horizontal accuracy of 5 m and 10 m, the second update
    #                 is neither stored or evaluated if the device has moved less than 15 m. If
    #                 <code>PositionFiltering</code> is set to <code>AccuracyBased</code> filtering, Amazon Location
    #                 uses the default value <code>{ "Horizontal": 0}</code> when accuracy is not provided on
    #                 a <code>DevicePositionUpdate</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateDevicePositionInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #
    # @option params [Array<DevicePositionUpdate>] :updates
    #   <p>Contains the position update details for each device.</p>
    #
    # @return [Types::BatchUpdateDevicePositionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_device_position(
    #     tracker_name: 'TrackerName', # required
    #     updates: [
    #       {
    #         device_id: 'DeviceId', # required
    #         sample_time: Time.now, # required
    #         position: [
    #           1.0
    #         ], # required
    #         accuracy: {
    #           horizontal: 1.0 # required
    #         },
    #         position_properties: {
    #           'key' => 'value'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateDevicePositionOutput
    #   resp.data.errors #=> Array<BatchUpdateDevicePositionError>
    #   resp.data.errors[0] #=> Types::BatchUpdateDevicePositionError
    #   resp.data.errors[0].device_id #=> String
    #   resp.data.errors[0].sample_time #=> Time
    #   resp.data.errors[0].error #=> Types::BatchItemError
    #   resp.data.errors[0].error.code #=> String, one of ["AccessDeniedError", "ConflictError", "InternalServerError", "ResourceNotFoundError", "ThrottlingError", "ValidationError"]
    #   resp.data.errors[0].error.message #=> String
    #
    def batch_update_device_position(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateDevicePositionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateDevicePositionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateDevicePosition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchUpdateDevicePosition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateDevicePosition,
        stubs: @stubs,
        params_class: Params::BatchUpdateDevicePositionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_device_position
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html">Calculates a route</a> given the following required parameters:
    #                 <code>DeparturePosition</code> and <code>DestinationPosition</code>. Requires that
    #             you first <a href="https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html">create a
    #                 route calculator resource</a>.</p>
    #         <p>By default, a request that doesn't specify a departure time uses the best time of day
    #             to travel with the best traffic conditions when calculating the route.</p>
    #         <p>Additional options include:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html">Specifying a
    #                         departure time</a> using either <code>DepartureTime</code> or
    #                         <code>DepartNow</code>. This calculates a route based on predictive traffic
    #                     data at the given time. </p>
    #                 <note>
    #                     <p>You can't specify both <code>DepartureTime</code> and
    #                             <code>DepartNow</code> in a single request. Specifying both parameters
    #                         returns a validation error.</p>
    #                 </note>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html">Specifying a travel
    #                         mode</a> using TravelMode sets the transportation mode used to calculate
    #                     the routes. This also lets you specify additional route preferences in
    #                         <code>CarModeOptions</code> if traveling by <code>Car</code>, or
    #                         <code>TruckModeOptions</code> if traveling by <code>Truck</code>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CalculateRouteInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route.
    #           </p>
    #
    # @option params [Array<Float>] :departure_position
    #   <p>The start position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #           <ul>
    #               <li>
    #                   <p>For example, <code>[-123.115, 49.285]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. If Esri is the provider for your route calculator,
    #                   specifying a route that is longer than 400 km returns a <code>400
    #                       RoutesValidationException</code> error.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    # @option params [Array<Float>] :destination_position
    #   <p>The finish position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #           <ul>
    #               <li>
    #                   <p> For example, <code>[-122.339, 47.615]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    # @option params [Array<Array<Float>>] :waypoint_positions
    #   <p>Specifies an ordered list of up to 23 intermediate positions to include along a route
    #               between the departure position and destination position. </p>
    #           <ul>
    #               <li>
    #                   <p>For example, from the <code>DeparturePosition</code>
    #                       <code>[-123.115, 49.285]</code>, the route follows the order that the waypoint
    #                       positions are given <code>[[-122.757, 49.0021],[-122.349, 47.620]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>If you specify a waypoint position that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #               <p>Specifying more than 23 waypoints returns a <code>400 ValidationException</code>
    #                   error.</p>
    #               <p>If Esri is the provider for your route calculator, specifying a route that is
    #                   longer than 400 km returns a <code>400 RoutesValidationException</code>
    #                   error.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #           <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #           <ul>
    #               <li>
    #                   <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #           <p>Default Value: <code>Car</code>
    #            </p>
    #
    # @option params [Time] :departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route.
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to
    #               calculate the route.</p>
    #           <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate a
    #               route. Otherwise, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    # @option params [String] :distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #           <p>Default Value: <code>Kilometers</code>
    #            </p>
    #
    # @option params [Boolean] :include_leg_geometry
    #   <p>Set to include the geometry details in the result for each path between a pair of
    #               positions.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    # @option params [CalculateRouteCarModeOptions] :car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #
    # @option params [CalculateRouteTruckModeOptions] :truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #
    # @return [Types::CalculateRouteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_route(
    #     calculator_name: 'CalculatorName', # required
    #     departure_position: [
    #       1.0
    #     ], # required
    #     travel_mode: 'Car', # accepts ["Car", "Truck", "Walking"]
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: 'Kilometers', # accepts ["Kilometers", "Miles"]
    #     include_leg_geometry: false,
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: 'Meters' # accepts ["Meters", "Feet"]
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: 'Kilograms' # accepts ["Kilograms", "Pounds"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CalculateRouteOutput
    #   resp.data.legs #=> Array<Leg>
    #   resp.data.legs[0] #=> Types::Leg
    #   resp.data.legs[0].start_position #=> Array<Float>
    #   resp.data.legs[0].start_position[0] #=> Float
    #   resp.data.legs[0].end_position #=> Array<Float>
    #   resp.data.legs[0].distance #=> Float
    #   resp.data.legs[0].duration_seconds #=> Float
    #   resp.data.legs[0].geometry #=> Types::LegGeometry
    #   resp.data.legs[0].geometry.line_string #=> Array<Array<Float>>
    #   resp.data.legs[0].steps #=> Array<Step>
    #   resp.data.legs[0].steps[0] #=> Types::Step
    #   resp.data.legs[0].steps[0].start_position #=> Array<Float>
    #   resp.data.legs[0].steps[0].end_position #=> Array<Float>
    #   resp.data.legs[0].steps[0].distance #=> Float
    #   resp.data.legs[0].steps[0].duration_seconds #=> Float
    #   resp.data.legs[0].steps[0].geometry_offset #=> Integer
    #   resp.data.summary #=> Types::CalculateRouteSummary
    #   resp.data.summary.route_b_box #=> Array<Float>
    #   resp.data.summary.route_b_box[0] #=> Float
    #   resp.data.summary.data_source #=> String
    #   resp.data.summary.distance #=> Float
    #   resp.data.summary.duration_seconds #=> Float
    #   resp.data.summary.distance_unit #=> String, one of ["Kilometers", "Miles"]
    #
    def calculate_route(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CalculateRouteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CalculateRouteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CalculateRoute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CalculateRoute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CalculateRoute,
        stubs: @stubs,
        params_class: Params::CalculateRouteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :calculate_route
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html"> Calculates a route
    #                 matrix</a> given the following required parameters:
    #                 <code>DeparturePositions</code> and <code>DestinationPositions</code>.
    #                 <code>CalculateRouteMatrix</code> calculates routes and returns the travel time and
    #             travel distance from each departure position to each destination position in the
    #             request. For example, given departure positions A and B, and destination positions X and
    #             Y, <code>CalculateRouteMatrix</code> will return time and distance for routes from A to
    #             X, A to Y, B to X, and B to Y (in that order). The number of results returned (and
    #             routes calculated) will be the number of <code>DeparturePositions</code> times the
    #             number of <code>DestinationPositions</code>.</p>
    #         <note>
    #             <p>Your account is charged for each route calculated, not the number of
    #                 requests.</p>
    #         </note>
    #         <p>Requires that you first <a href="https://docs.aws.amazon.com/location-routes/latest/APIReference/API_CreateRouteCalculator.html">create a
    #                 route calculator resource</a>.</p>
    #         <p>By default, a request that doesn't specify a departure time uses the best time of day
    #             to travel with the best traffic conditions when calculating routes.</p>
    #         <p>Additional options include:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html"> Specifying a
    #                         departure time</a> using either <code>DepartureTime</code> or
    #                         <code>DepartNow</code>. This calculates routes based on predictive traffic
    #                     data at the given time. </p>
    #                 <note>
    #                     <p>You can't specify both <code>DepartureTime</code> and
    #                             <code>DepartNow</code> in a single request. Specifying both parameters
    #                         returns a validation error.</p>
    #                 </note>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html">Specifying a travel
    #                         mode</a> using TravelMode sets the transportation mode used to calculate
    #                     the routes. This also lets you specify additional route preferences in
    #                         <code>CarModeOptions</code> if traveling by <code>Car</code>, or
    #                         <code>TruckModeOptions</code> if traveling by <code>Truck</code>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CalculateRouteMatrixInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route
    #               matrix. </p>
    #
    # @option params [Array<Array<Float>>] :departure_positions
    #   <p>The list of departure (origin) positions for the route matrix. An array of points,
    #               each of which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-123.115,
    #               49.285]</code>.</p>
    #           <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #           </important>
    #           <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDeparturePositions</code>.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    # @option params [Array<Array<Float>>] :destination_positions
    #   <p>The list of destination positions for the route matrix. An array of points, each of
    #               which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-122.339,
    #               47.615]</code>
    #            </p>
    #           <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #           </important>
    #           <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDestinationPositions</code>.</p>
    #           </note>
    #           <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #           <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #           <ul>
    #               <li>
    #                   <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #           <p>Default Value: <code>Car</code>
    #            </p>
    #
    # @option params [Time] :departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route
    #               matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>. If
    #               neither is set, the best time of day to travel with the best traffic conditions is used
    #               to calculate the route matrix.</p>
    #           <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate the
    #               route matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>.
    #               If neither is set, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route matrix.</p>
    #           <p>Default Value: <code>false</code>
    #            </p>
    #           <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #
    # @option params [String] :distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #           <p>Default Value: <code>Kilometers</code>
    #            </p>
    #
    # @option params [CalculateRouteCarModeOptions] :car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #
    # @option params [CalculateRouteTruckModeOptions] :truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #           <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #
    # @return [Types::CalculateRouteMatrixOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_route_matrix(
    #     calculator_name: 'CalculatorName', # required
    #     departure_positions: [
    #       [
    #         1.0
    #       ]
    #     ], # required
    #     travel_mode: 'Car', # accepts ["Car", "Truck", "Walking"]
    #     departure_time: Time.now,
    #     depart_now: false,
    #     distance_unit: 'Kilometers', # accepts ["Kilometers", "Miles"]
    #     car_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false
    #     },
    #     truck_mode_options: {
    #       avoid_ferries: false,
    #       avoid_tolls: false,
    #       dimensions: {
    #         length: 1.0,
    #         height: 1.0,
    #         width: 1.0,
    #         unit: 'Meters' # accepts ["Meters", "Feet"]
    #       },
    #       weight: {
    #         total: 1.0,
    #         unit: 'Kilograms' # accepts ["Kilograms", "Pounds"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CalculateRouteMatrixOutput
    #   resp.data.route_matrix #=> Array<Array<RouteMatrixEntry>>
    #   resp.data.route_matrix[0] #=> Array<RouteMatrixEntry>
    #   resp.data.route_matrix[0][0] #=> Types::RouteMatrixEntry
    #   resp.data.route_matrix[0][0].distance #=> Float
    #   resp.data.route_matrix[0][0].duration_seconds #=> Float
    #   resp.data.route_matrix[0][0].error #=> Types::RouteMatrixEntryError
    #   resp.data.route_matrix[0][0].error.code #=> String, one of ["RouteNotFound", "RouteTooLong", "PositionsNotFound", "DestinationPositionNotFound", "DeparturePositionNotFound", "OtherValidationError"]
    #   resp.data.route_matrix[0][0].error.message #=> String
    #   resp.data.snapped_departure_positions #=> Array<Array<Float>>
    #   resp.data.snapped_departure_positions[0] #=> Array<Float>
    #   resp.data.snapped_departure_positions[0][0] #=> Float
    #   resp.data.snapped_destination_positions #=> Array<Array<Float>>
    #   resp.data.summary #=> Types::CalculateRouteMatrixSummary
    #   resp.data.summary.data_source #=> String
    #   resp.data.summary.route_count #=> Integer
    #   resp.data.summary.error_count #=> Integer
    #   resp.data.summary.distance_unit #=> String, one of ["Kilometers", "Miles"]
    #
    def calculate_route_matrix(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CalculateRouteMatrixInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CalculateRouteMatrixInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CalculateRouteMatrix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CalculateRouteMatrix
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CalculateRouteMatrix,
        stubs: @stubs,
        params_class: Params::CalculateRouteMatrixOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :calculate_route_matrix
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a geofence collection, which manages and stores geofences.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGeofenceCollectionInput}.
    #
    # @option params [String] :collection_name
    #   <p>A custom name for the geofence collection.</p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique geofence collection name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleGeofenceCollection</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the geofence collection.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the geofence collection. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.
    #   	</p>
    #
    # @return [Types::CreateGeofenceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_geofence_collection(
    #     collection_name: 'CollectionName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     pricing_plan_data_source: 'PricingPlanDataSource',
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     kms_key_id: 'KmsKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGeofenceCollectionOutput
    #   resp.data.collection_name #=> String
    #   resp.data.collection_arn #=> String
    #   resp.data.create_time #=> Time
    #
    def create_geofence_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGeofenceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGeofenceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGeofenceCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateGeofenceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGeofenceCollection,
        stubs: @stubs,
        params_class: Params::CreateGeofenceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_geofence_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a map resource in your AWS account, which provides map tiles of different
    #             styles sourced from global location data providers.</p>
    #         <note>
    #             <p>If your application is tracking or routing assets you use in your business, such
    #                 as delivery vehicles or employees, you may only use HERE as your geolocation
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">AWS
    #                     service terms</a> for more details.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateMapInput}.
    #
    # @option params [String] :map_name
    #   <p>The name for the map resource.</p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique map resource name. </p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleMap</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [MapConfiguration] :configuration
    #   <p>Specifies the map style selected from an available data provider.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the map resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair helps manage,
    #               identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length:  256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + - = . _ : /
    #                       @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_map(
    #     map_name: 'MapName', # required
    #     configuration: {
    #       style: 'Style' # required
    #     }, # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMapOutput
    #   resp.data.map_name #=> String
    #   resp.data.map_arn #=> String
    #   resp.data.create_time #=> Time
    #
    def create_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMap,
        stubs: @stubs,
        params_class: Params::CreateMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a place index resource in your AWS account. Use a place index resource to
    #             geocode addresses and other text queries by using the
    #                 <code>SearchPlaceIndexForText</code> operation, and reverse geocode coordinates by
    #             using the <code>SearchPlaceIndexForPosition</code> operation, and enable autosuggestions
    #             by using the <code>SearchPlaceIndexForSuggestions</code> operation.</p>
    #         <note>
    #             <p>If your application is tracking or routing assets you use in your business, such
    #                 as delivery vehicles or employees, you may only use HERE as your geolocation
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">AWS
    #                     service terms</a> for more details.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePlaceIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource. </p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique place index resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExamplePlaceIndex</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :data_source
    #   <p>Specifies the geospatial data provider for the new place index.</p>
    #           <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm">Esri details on geocoding coverage</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html">HERE details on goecoding coverage</a>.</p>
    #                   <important>
    #                       <p>If you specify HERE Technologies (<code>Here</code>) as the data provider,
    #                           you may not <a href="https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html">store results</a> for locations in Japan. For more information, see
    #                           the <a href="https://aws.amazon.com/service-terms/">AWS Service
    #                               Terms</a> for Amazon Location Service.</p>
    #                   </important>
    #               </li>
    #            </ul>
    #           <p>For additional information , see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>The optional description for the place index resource.</p>
    #
    # @option params [DataSourceConfiguration] :data_source_configuration
    #   <p>Specifies the data storage option requesting Places.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the place index resource. A tag is a key-value pair that
    #               helps you manage, identify, search, and filter your resources.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                   <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreatePlaceIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_place_index(
    #     index_name: 'IndexName', # required
    #     data_source: 'DataSource', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description',
    #     data_source_configuration: {
    #       intended_use: 'SingleUse' # accepts ["SingleUse", "Storage"]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlaceIndexOutput
    #   resp.data.index_name #=> String
    #   resp.data.index_arn #=> String
    #   resp.data.create_time #=> Time
    #
    def create_place_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlaceIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlaceIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlaceIndex
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreatePlaceIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlaceIndex,
        stubs: @stubs,
        params_class: Params::CreatePlaceIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_place_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a route calculator resource in your AWS account.</p>
    #         <p>You can send requests to a route calculator resource to estimate travel time,
    #             distance, and get directions. A route calculator sources traffic and road network data
    #             from your chosen data provider.</p>
    #         <note>
    #             <p>If your application is tracking or routing assets you use in your business, such
    #                 as delivery vehicles or employees, you may only use HERE as your geolocation
    #                 provider. See section 82 of the <a href="http://aws.amazon.com/service-terms">AWS
    #                     service terms</a> for more details.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateRouteCalculatorInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource. </p>
    #           <p>Requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-), periods (.),
    #                       and underscores (_).</p>
    #               </li>
    #               <li>
    #                   <p>Must be a unique Route calculator resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :data_source
    #   <p>Specifies the data provider of traffic and road network data.</p>
    #           <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error. Route calculators that use Esri as a
    #                   data source only calculate routes that are shorter than 400 km.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm">Esri details on street networks and traffic coverage</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html">HERE car routing coverage</a> and <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html">HERE truck routing coverage</a>.</p>
    #               </li>
    #            </ul>
    #           <p>For additional information , see <a href="https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>The optional description for the route calculator resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the route calculator resource. A tag is a key-value pair
    #               helps manage, identify, search, and filter your resources by labelling them.</p>
    #           <ul>
    #               <li>
    #                   <p>For example: { <code>"tag1" : "value1"</code>, <code>"tag2" :
    #                       "value2"</code>}</p>
    #               </li>
    #            </ul>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateRouteCalculatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route_calculator(
    #     calculator_name: 'CalculatorName', # required
    #     data_source: 'DataSource', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRouteCalculatorOutput
    #   resp.data.calculator_name #=> String
    #   resp.data.calculator_arn #=> String
    #   resp.data.create_time #=> Time
    #
    def create_route_calculator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRouteCalculatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRouteCalculatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRouteCalculator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateRouteCalculator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRouteCalculator,
        stubs: @stubs,
        params_class: Params::CreateRouteCalculatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_route_calculator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a tracker resource in your AWS account, which lets you retrieve current and
    #             historical location of devices.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrackerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name for the tracker resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-), periods (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique tracker resource name.</p>
    #               </li>
    #               <li>
    #                   <p>No spaces allowed. For example, <code>ExampleTracker</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #              <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">AWS KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.</p>
    #
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the tracker resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to the tracker resource. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                   <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :position_filtering
    #   <p>Specifies the position filtering for the tracker resource.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TimeBased</code> - Location updates are evaluated against linked geofence collections,
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds,
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are
    #                       ignored. Location updates within this area are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This can reduce the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control your costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>This field is optional. If not specified, the default value is <code>TimeBased</code>.</p>
    #
    # @return [Types::CreateTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tracker(
    #     tracker_name: 'TrackerName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     kms_key_id: 'KmsKeyId',
    #     pricing_plan_data_source: 'PricingPlanDataSource',
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     position_filtering: 'TimeBased' # accepts ["TimeBased", "DistanceBased", "AccuracyBased"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrackerOutput
    #   resp.data.tracker_name #=> String
    #   resp.data.tracker_arn #=> String
    #   resp.data.create_time #=> Time
    #
    def create_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTracker,
        stubs: @stubs,
        params_class: Params::CreateTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a geofence collection from your AWS account.</p>
    #         <note>
    #             <p>This operation deletes the resource permanently. If the geofence collection is the
    #                 target of a tracker resource, the devices will no longer be monitored.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteGeofenceCollectionInput}.
    #
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection to be deleted.</p>
    #
    # @return [Types::DeleteGeofenceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_geofence_collection(
    #     collection_name: 'CollectionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGeofenceCollectionOutput
    #
    def delete_geofence_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGeofenceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGeofenceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGeofenceCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteGeofenceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGeofenceCollection,
        stubs: @stubs,
        params_class: Params::DeleteGeofenceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_geofence_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a map resource from your AWS account.</p>
    #         <note>
    #             <p>This operation deletes the resource permanently. If the map is being used in an application,
    #                 the map may not render.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteMapInput}.
    #
    # @option params [String] :map_name
    #   <p>The name of the map resource to be deleted.</p>
    #
    # @return [Types::DeleteMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_map(
    #     map_name: 'MapName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMapOutput
    #
    def delete_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMap,
        stubs: @stubs,
        params_class: Params::DeleteMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a place index resource from your AWS account.</p>
    #         <note>
    #             <p>This operation deletes the resource permanently.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeletePlaceIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource to be deleted.</p>
    #
    # @return [Types::DeletePlaceIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_place_index(
    #     index_name: 'IndexName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlaceIndexOutput
    #
    def delete_place_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlaceIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlaceIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlaceIndex
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeletePlaceIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlaceIndex,
        stubs: @stubs,
        params_class: Params::DeletePlaceIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_place_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a route calculator resource from your AWS account.</p>
    #         <note>
    #             <p>This operation deletes the resource permanently.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteRouteCalculatorInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource to be deleted.</p>
    #
    # @return [Types::DeleteRouteCalculatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_calculator(
    #     calculator_name: 'CalculatorName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRouteCalculatorOutput
    #
    def delete_route_calculator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRouteCalculatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRouteCalculatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRouteCalculator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteRouteCalculator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRouteCalculator,
        stubs: @stubs,
        params_class: Params::DeleteRouteCalculatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_route_calculator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a tracker resource from your AWS account.</p>
    #          <note>
    #             <p>This operation deletes the resource permanently. If the tracker resource is in use, you may
    #                 encounter an error. Make sure that the target resource isn't a dependency for your
    #                 applications.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrackerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be deleted.</p>
    #
    # @return [Types::DeleteTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tracker(
    #     tracker_name: 'TrackerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrackerOutput
    #
    def delete_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTracker,
        stubs: @stubs,
        params_class: Params::DeleteTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the geofence collection details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGeofenceCollectionInput}.
    #
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection.</p>
    #
    # @return [Types::DescribeGeofenceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_geofence_collection(
    #     collection_name: 'CollectionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGeofenceCollectionOutput
    #   resp.data.collection_name #=> String
    #   resp.data.collection_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.pricing_plan_data_source #=> String
    #   resp.data.kms_key_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #
    def describe_geofence_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGeofenceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGeofenceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGeofenceCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeGeofenceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGeofenceCollection,
        stubs: @stubs,
        params_class: Params::DescribeGeofenceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_geofence_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the map resource details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMapInput}.
    #
    # @option params [String] :map_name
    #   <p>The name of the map resource.</p>
    #
    # @return [Types::DescribeMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_map(
    #     map_name: 'MapName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMapOutput
    #   resp.data.map_name #=> String
    #   resp.data.map_arn #=> String
    #   resp.data.pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.data_source #=> String
    #   resp.data.configuration #=> Types::MapConfiguration
    #   resp.data.configuration.style #=> String
    #   resp.data.description #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #
    def describe_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMap,
        stubs: @stubs,
        params_class: Params::DescribeMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the place index resource details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePlaceIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource.</p>
    #
    # @return [Types::DescribePlaceIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_place_index(
    #     index_name: 'IndexName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePlaceIndexOutput
    #   resp.data.index_name #=> String
    #   resp.data.index_arn #=> String
    #   resp.data.pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.description #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.data_source #=> String
    #   resp.data.data_source_configuration #=> Types::DataSourceConfiguration
    #   resp.data.data_source_configuration.intended_use #=> String, one of ["SingleUse", "Storage"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_place_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePlaceIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePlaceIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePlaceIndex
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribePlaceIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePlaceIndex,
        stubs: @stubs,
        params_class: Params::DescribePlaceIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_place_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the route calculator resource details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRouteCalculatorInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource.</p>
    #
    # @return [Types::DescribeRouteCalculatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_route_calculator(
    #     calculator_name: 'CalculatorName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRouteCalculatorOutput
    #   resp.data.calculator_name #=> String
    #   resp.data.calculator_arn #=> String
    #   resp.data.pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.description #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.data_source #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_route_calculator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRouteCalculatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRouteCalculatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRouteCalculator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeRouteCalculator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRouteCalculator,
        stubs: @stubs,
        params_class: Params::DescribeRouteCalculatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_route_calculator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the tracker resource details.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrackerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource.</p>
    #
    # @return [Types::DescribeTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tracker(
    #     tracker_name: 'TrackerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrackerOutput
    #   resp.data.tracker_name #=> String
    #   resp.data.tracker_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.pricing_plan_data_source #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.kms_key_id #=> String
    #   resp.data.position_filtering #=> String, one of ["TimeBased", "DistanceBased", "AccuracyBased"]
    #
    def describe_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTracker,
        stubs: @stubs,
        params_class: Params::DescribeTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tracker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between a tracker resource and a geofence collection.</p>
    #         <note>
    #             <p>Once you unlink a tracker resource from a geofence collection, the tracker
    #                 positions will no longer be automatically evaluated against geofences.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTrackerConsumerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to be dissociated from the consumer.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be disassociated from
    #               the tracker resource. Used when you need to specify a resource across all AWS. </p>
    #           <ul>
    #               <li>
    #                   <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DisassociateTrackerConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tracker_consumer(
    #     tracker_name: 'TrackerName', # required
    #     consumer_arn: 'ConsumerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTrackerConsumerOutput
    #
    def disassociate_tracker_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTrackerConsumerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTrackerConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTrackerConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DisassociateTrackerConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTrackerConsumer,
        stubs: @stubs,
        params_class: Params::DisassociateTrackerConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_tracker_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a device's most recent position according to its sample time.</p>
    #          <note>
    #             <p>Device positions are deleted after 30 days.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDevicePositionInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The tracker resource receiving the position update.</p>
    #
    # @option params [String] :device_id
    #   <p>The device whose position you want to retrieve.</p>
    #
    # @return [Types::GetDevicePositionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position(
    #     tracker_name: 'TrackerName', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicePositionOutput
    #   resp.data.device_id #=> String
    #   resp.data.sample_time #=> Time
    #   resp.data.received_time #=> Time
    #   resp.data.position #=> Array<Float>
    #   resp.data.position[0] #=> Float
    #   resp.data.accuracy #=> Types::PositionalAccuracy
    #   resp.data.accuracy.horizontal #=> Float
    #   resp.data.position_properties #=> Hash<String, String>
    #   resp.data.position_properties['key'] #=> String
    #
    def get_device_position(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicePositionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicePositionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevicePosition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDevicePosition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevicePosition,
        stubs: @stubs,
        params_class: Params::GetDevicePositionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_position
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the device position history from a tracker resource within a specified range
    #             of time.</p>
    #          <note>
    #            <p>Device positions are deleted after 30 days.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDevicePositionHistoryInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The tracker resource receiving the request for the device position history.</p>
    #
    # @option params [String] :device_id
    #   <p>The device whose position history you want to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    # @option params [Time] :start_time_inclusive
    #   <p>Specify the start time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be 24 hours
    #               prior to the time that the request is made.</p>
    #           <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>StartTimeInclusive</code> must be before
    #                           <code>EndTimeExclusive</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Time] :end_time_exclusive
    #   <p>Specify the end time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be the time
    #               that the request is made.</p>
    #           <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>EndTimeExclusive</code> must be after the time for
    #                           <code>StartTimeInclusive</code>.</p>
    #              </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of device positions returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @return [Types::GetDevicePositionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_position_history(
    #     tracker_name: 'TrackerName', # required
    #     device_id: 'DeviceId', # required
    #     next_token: 'NextToken',
    #     start_time_inclusive: Time.now,
    #     end_time_exclusive: Time.now,
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicePositionHistoryOutput
    #   resp.data.device_positions #=> Array<DevicePosition>
    #   resp.data.device_positions[0] #=> Types::DevicePosition
    #   resp.data.device_positions[0].device_id #=> String
    #   resp.data.device_positions[0].sample_time #=> Time
    #   resp.data.device_positions[0].received_time #=> Time
    #   resp.data.device_positions[0].position #=> Array<Float>
    #   resp.data.device_positions[0].position[0] #=> Float
    #   resp.data.device_positions[0].accuracy #=> Types::PositionalAccuracy
    #   resp.data.device_positions[0].accuracy.horizontal #=> Float
    #   resp.data.device_positions[0].position_properties #=> Hash<String, String>
    #   resp.data.device_positions[0].position_properties['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_device_position_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicePositionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicePositionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevicePositionHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDevicePositionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevicePositionHistory,
        stubs: @stubs,
        params_class: Params::GetDevicePositionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_position_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the geofence details from a geofence collection.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGeofenceInput}.
    #
    # @option params [String] :collection_name
    #   <p>The geofence collection storing the target geofence.</p>
    #
    # @option params [String] :geofence_id
    #   <p>The geofence you're retrieving details for.</p>
    #
    # @return [Types::GetGeofenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geofence(
    #     collection_name: 'CollectionName', # required
    #     geofence_id: 'GeofenceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGeofenceOutput
    #   resp.data.geofence_id #=> String
    #   resp.data.geometry #=> Types::GeofenceGeometry
    #   resp.data.geometry.polygon #=> Array<Array<Array<Float>>>
    #   resp.data.geometry.polygon[0] #=> Array<Array<Float>>
    #   resp.data.geometry.polygon[0][0] #=> Array<Float>
    #   resp.data.geometry.polygon[0][0][0] #=> Float
    #   resp.data.status #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #
    def get_geofence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGeofenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGeofenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGeofence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetGeofence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGeofence,
        stubs: @stubs,
        params_class: Params::GetGeofenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_geofence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves glyphs used to display labels on a map.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMapGlyphsInput}.
    #
    # @option params [String] :map_name
    #   <p>The map resource associated with the glyph ﬁle.</p>
    #
    # @option params [String] :font_stack
    #   <p>A comma-separated list of fonts to load glyphs from in order of preference. For
    #               example, <code>Noto Sans Regular, Arial Unicode</code>.</p>
    #           <p>Valid fonts stacks for <a href="https://docs.aws.amazon.com/location/latest/developerguide/esri.html">Esri</a> styles: </p>
    #           <ul>
    #               <li>
    #                   <p>VectorEsriDarkGrayCanvas – <code>Ubuntu Medium Italic</code> | <code>Ubuntu
    #                           Medium</code> | <code>Ubuntu Italic</code> | <code>Ubuntu Regular</code> |
    #                           <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriLightGrayCanvas – <code>Ubuntu Italic</code> | <code>Ubuntu
    #                           Regular</code> | <code>Ubuntu Light</code> | <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriTopographic – <code>Noto Sans Italic</code> | <code>Noto Sans
    #                           Regular</code> | <code>Noto Sans Bold</code> | <code>Noto Serif
    #                           Regular</code> | <code>Roboto Condensed Light Italic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriStreets – <code>Arial Regular</code> | <code>Arial Italic</code> |
    #                           <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorEsriNavigation – <code>Arial Regular</code> | <code>Arial Italic</code>
    #                       | <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/latest/developerguide/HERE.html">HERE Technologies</a> styles: </p>
    #           <ul>
    #               <li>
    #                   <p>VectorHereBerlin – <code>Fira
    #                       GO Regular</code> | <code>Fira GO Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>VectorHereExplore, VectorHereExploreTruck – <code>Firo GO Italic</code> |
    #                       <code>Fira GO Map</code> | <code>Fira GO Map Bold</code> | <code>Noto Sans CJK
    #                       JP Bold</code> | <code>Noto Sans CJK JP Light</code> | <code>Noto Sans CJK
    #                       JP Regular</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. Each response will contain 256
    #               characters. For example, 0–255 includes all characters from range <code>U+0000</code> to
    #                   <code>00FF</code>. Must be aligned to multiples of 256.</p>
    #
    # @return [Types::GetMapGlyphsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_glyphs(
    #     map_name: 'MapName', # required
    #     font_stack: 'FontStack', # required
    #     font_unicode_range: 'FontUnicodeRange' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMapGlyphsOutput
    #   resp.data.blob #=> String
    #   resp.data.content_type #=> String
    #
    def get_map_glyphs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMapGlyphsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMapGlyphsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMapGlyphs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetMapGlyphs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMapGlyphs,
        stubs: @stubs,
        params_class: Params::GetMapGlyphsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_map_glyphs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG
    #             image paired with a JSON document describing the offsets of individual icons that will
    #             be displayed on a rendered map.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMapSpritesInput}.
    #
    # @option params [String] :map_name
    #   <p>The map resource associated with the sprite ﬁle.</p>
    #
    # @option params [String] :file_name
    #   <p>The name of the sprite ﬁle. Use the following ﬁle names for the sprite sheet:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.png</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.png</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #           <p>For the JSON document contain image offsets. Use the following ﬁle names:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.json</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetMapSpritesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_sprites(
    #     map_name: 'MapName', # required
    #     file_name: 'FileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMapSpritesOutput
    #   resp.data.blob #=> String
    #   resp.data.content_type #=> String
    #
    def get_map_sprites(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMapSpritesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMapSpritesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMapSprites
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetMapSprites
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMapSprites,
        stubs: @stubs,
        params_class: Params::GetMapSpritesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_map_sprites
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the map style descriptor from a map resource. </p>
    #         <p>The style descriptor contains speciﬁcations on how features render on a map. For
    #             example, what data to display, what order to display the data in, and the style for the
    #             data. Style descriptors follow the Mapbox Style Specification.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMapStyleDescriptorInput}.
    #
    # @option params [String] :map_name
    #   <p>The map resource to retrieve the style descriptor from.</p>
    #
    # @return [Types::GetMapStyleDescriptorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_style_descriptor(
    #     map_name: 'MapName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMapStyleDescriptorOutput
    #   resp.data.blob #=> String
    #   resp.data.content_type #=> String
    #
    def get_map_style_descriptor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMapStyleDescriptorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMapStyleDescriptorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMapStyleDescriptor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetMapStyleDescriptor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMapStyleDescriptor,
        stubs: @stubs,
        params_class: Params::GetMapStyleDescriptorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_map_style_descriptor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a vector data tile from the map resource. Map tiles are used by clients to
    #             render a map. they're addressed using a grid arrangement with an X coordinate, Y
    #             coordinate, and Z (zoom) level. </p>
    #         <p>The origin (0, 0) is the top left of the map. Increasing the zoom level by 1 doubles
    #             both the X and Y dimensions, so a tile containing data for the entire world at (0/0/0)
    #             will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).</p>
    #
    # @param [Hash] params
    #   See {Types::GetMapTileInput}.
    #
    # @option params [String] :map_name
    #   <p>The map resource to retrieve the map tiles from.</p>
    #
    # @option params [String] :z
    #   <p>The zoom value for the map tile.</p>
    #
    # @option params [String] :x
    #   <p>The X axis value for the map tile.</p>
    #
    # @option params [String] :y
    #   <p>The Y axis value for the map tile. </p>
    #
    # @return [Types::GetMapTileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_map_tile(
    #     map_name: 'MapName', # required
    #     z: 'Z', # required
    #     x: 'X', # required
    #     y: 'Y' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMapTileOutput
    #   resp.data.blob #=> String
    #   resp.data.content_type #=> String
    #
    def get_map_tile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMapTileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMapTileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMapTile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetMapTile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMapTile,
        stubs: @stubs,
        params_class: Params::GetMapTileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_map_tile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A batch request to retrieve all device positions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicePositionsInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The tracker resource containing the requested devices.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of entries returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListDevicePositionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_positions(
    #     tracker_name: 'TrackerName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicePositionsOutput
    #   resp.data.entries #=> Array<ListDevicePositionsResponseEntry>
    #   resp.data.entries[0] #=> Types::ListDevicePositionsResponseEntry
    #   resp.data.entries[0].device_id #=> String
    #   resp.data.entries[0].sample_time #=> Time
    #   resp.data.entries[0].position #=> Array<Float>
    #   resp.data.entries[0].position[0] #=> Float
    #   resp.data.entries[0].accuracy #=> Types::PositionalAccuracy
    #   resp.data.entries[0].accuracy.horizontal #=> Float
    #   resp.data.entries[0].position_properties #=> Hash<String, String>
    #   resp.data.entries[0].position_properties['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_device_positions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicePositionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicePositionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevicePositions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDevicePositions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevicePositions,
        stubs: @stubs,
        params_class: Params::ListDevicePositionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_positions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists geofence collections in your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGeofenceCollectionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListGeofenceCollectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofence_collections(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGeofenceCollectionsOutput
    #   resp.data.entries #=> Array<ListGeofenceCollectionsResponseEntry>
    #   resp.data.entries[0] #=> Types::ListGeofenceCollectionsResponseEntry
    #   resp.data.entries[0].collection_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.entries[0].pricing_plan_data_source #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_geofence_collections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGeofenceCollectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGeofenceCollectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGeofenceCollections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListGeofenceCollections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGeofenceCollections,
        stubs: @stubs,
        params_class: Params::ListGeofenceCollectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_geofence_collections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists geofences stored in a given geofence collection.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGeofencesInput}.
    #
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection storing the list of geofences.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of geofences returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @return [Types::ListGeofencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geofences(
    #     collection_name: 'CollectionName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGeofencesOutput
    #   resp.data.entries #=> Array<ListGeofenceResponseEntry>
    #   resp.data.entries[0] #=> Types::ListGeofenceResponseEntry
    #   resp.data.entries[0].geofence_id #=> String
    #   resp.data.entries[0].geometry #=> Types::GeofenceGeometry
    #   resp.data.entries[0].geometry.polygon #=> Array<Array<Array<Float>>>
    #   resp.data.entries[0].geometry.polygon[0] #=> Array<Array<Float>>
    #   resp.data.entries[0].geometry.polygon[0][0] #=> Array<Float>
    #   resp.data.entries[0].geometry.polygon[0][0][0] #=> Float
    #   resp.data.entries[0].status #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_geofences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGeofencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGeofencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGeofences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListGeofences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGeofences,
        stubs: @stubs,
        params_class: Params::ListGeofencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_geofences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists map resources in your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMapsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListMapsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_maps(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMapsOutput
    #   resp.data.entries #=> Array<ListMapsResponseEntry>
    #   resp.data.entries[0] #=> Types::ListMapsResponseEntry
    #   resp.data.entries[0].map_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_maps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMapsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMapsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMaps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListMaps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMaps,
        stubs: @stubs,
        params_class: Params::ListMapsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_maps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists place index resources in your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlaceIndexesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the maximum number of results returned in a single call.</p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListPlaceIndexesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_place_indexes(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlaceIndexesOutput
    #   resp.data.entries #=> Array<ListPlaceIndexesResponseEntry>
    #   resp.data.entries[0] #=> Types::ListPlaceIndexesResponseEntry
    #   resp.data.entries[0].index_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_place_indexes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlaceIndexesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlaceIndexesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlaceIndexes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListPlaceIndexes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlaceIndexes,
        stubs: @stubs,
        params_class: Params::ListPlaceIndexesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_place_indexes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists route calculator resources in your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRouteCalculatorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An optional maximum number of results returned in a single call.</p>
    #           <p>Default Value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #           <p>Default Value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListRouteCalculatorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_route_calculators(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRouteCalculatorsOutput
    #   resp.data.entries #=> Array<ListRouteCalculatorsResponseEntry>
    #   resp.data.entries[0] #=> Types::ListRouteCalculatorsResponseEntry
    #   resp.data.entries[0].calculator_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].data_source #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_route_calculators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRouteCalculatorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRouteCalculatorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRouteCalculators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListRouteCalculators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRouteCalculators,
        stubs: @stubs,
        params_class: Params::ListRouteCalculatorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_route_calculators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags that are applied to the specified Amazon Location resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "metadata.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p>Lists geofence collections currently associated to the given tracker resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrackerConsumersInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The tracker resource whose associated geofence collections you want to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListTrackerConsumersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tracker_consumers(
    #     tracker_name: 'TrackerName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrackerConsumersOutput
    #   resp.data.consumer_arns #=> Array<String>
    #   resp.data.consumer_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_tracker_consumers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrackerConsumersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrackerConsumersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrackerConsumers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListTrackerConsumers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrackerConsumers,
        stubs: @stubs,
        params_class: Params::ListTrackerConsumersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tracker_consumers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tracker resources in your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrackersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #           <p>Default value: <code>100</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #           <p>Default value: <code>null</code>
    #            </p>
    #
    # @return [Types::ListTrackersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trackers(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrackersOutput
    #   resp.data.entries #=> Array<ListTrackersResponseEntry>
    #   resp.data.entries[0] #=> Types::ListTrackersResponseEntry
    #   resp.data.entries[0].tracker_name #=> String
    #   resp.data.entries[0].description #=> String
    #   resp.data.entries[0].pricing_plan #=> String, one of ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #   resp.data.entries[0].pricing_plan_data_source #=> String
    #   resp.data.entries[0].create_time #=> Time
    #   resp.data.entries[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_trackers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrackersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrackersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrackers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListTrackers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrackers,
        stubs: @stubs,
        params_class: Params::ListTrackersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_trackers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stores a geofence geometry in a given geofence collection, or updates the geometry of
    #             an existing geofence if a geofence ID is included in the request. </p>
    #
    # @param [Hash] params
    #   See {Types::PutGeofenceInput}.
    #
    # @option params [String] :collection_name
    #   <p>The geofence collection to store the geofence in.</p>
    #
    # @option params [String] :geofence_id
    #   <p>An identifier for the geofence. For example, <code>ExampleGeofence-1</code>.</p>
    #
    # @option params [GeofenceGeometry] :geometry
    #   <p>Contains the polygon details to specify the position of the geofence.</p>
    #           <note>
    #               <p>Each <a href="https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html">geofence polygon</a> can have a maximum of 1,000 vertices.</p>
    #           </note>
    #
    # @return [Types::PutGeofenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_geofence(
    #     collection_name: 'CollectionName', # required
    #     geofence_id: 'GeofenceId', # required
    #     geometry: {
    #       polygon: [
    #         [
    #           [
    #             1.0
    #           ]
    #         ]
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutGeofenceOutput
    #   resp.data.geofence_id #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #
    def put_geofence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutGeofenceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutGeofenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutGeofence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutGeofence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutGeofence,
        stubs: @stubs,
        params_class: Params::PutGeofenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_geofence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reverse geocodes a given coordinate and returns a legible address. Allows you to
    #             search for Places or points of interest near a given position.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchPlaceIndexForPositionInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    # @option params [Array<Float>] :position
    #   <p>Specifies the longitude and latitude of the position to query.</p>
    #           <p> This parameter must contain a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents a position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request.</p>
    #           <p>Default value: <code>50</code>
    #            </p>
    #
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    # @return [Types::SearchPlaceIndexForPositionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_position(
    #     index_name: 'IndexName', # required
    #     position: [
    #       1.0
    #     ], # required
    #     max_results: 1,
    #     language: 'Language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchPlaceIndexForPositionOutput
    #   resp.data.summary #=> Types::SearchPlaceIndexForPositionSummary
    #   resp.data.summary.position #=> Array<Float>
    #   resp.data.summary.position[0] #=> Float
    #   resp.data.summary.max_results #=> Integer
    #   resp.data.summary.data_source #=> String
    #   resp.data.summary.language #=> String
    #   resp.data.results #=> Array<SearchForPositionResult>
    #   resp.data.results[0] #=> Types::SearchForPositionResult
    #   resp.data.results[0].place #=> Types::Place
    #   resp.data.results[0].place.label #=> String
    #   resp.data.results[0].place.geometry #=> Types::PlaceGeometry
    #   resp.data.results[0].place.geometry.point #=> Array<Float>
    #   resp.data.results[0].place.address_number #=> String
    #   resp.data.results[0].place.street #=> String
    #   resp.data.results[0].place.neighborhood #=> String
    #   resp.data.results[0].place.municipality #=> String
    #   resp.data.results[0].place.sub_region #=> String
    #   resp.data.results[0].place.region #=> String
    #   resp.data.results[0].place.country #=> String
    #   resp.data.results[0].place.postal_code #=> String
    #   resp.data.results[0].place.interpolated #=> Boolean
    #   resp.data.results[0].place.time_zone #=> Types::TimeZone
    #   resp.data.results[0].place.time_zone.name #=> String
    #   resp.data.results[0].place.time_zone.offset #=> Integer
    #   resp.data.results[0].distance #=> Float
    #
    def search_place_index_for_position(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchPlaceIndexForPositionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchPlaceIndexForPositionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchPlaceIndexForPosition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchPlaceIndexForPosition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchPlaceIndexForPosition,
        stubs: @stubs,
        params_class: Params::SearchPlaceIndexForPositionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_place_index_for_position
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates suggestions for addresses and points of interest based on partial or
    #             misspelled free-form text. This operation is also known as autocomplete, autosuggest, or
    #             fuzzy matching.</p>
    #         <p>Optional parameters let you narrow your search results by bounding box or country, or
    #             bias your search toward a specific position on the globe.</p>
    #         <note>
    #             <p>You can search for suggested place names near a specified position by using
    #                     <code>BiasPosition</code>, or filter results within a bounding box by using
    #                     <code>FilterBBox</code>. These parameters are mutually exclusive; using both
    #                     <code>BiasPosition</code> and <code>FilterBBox</code> in the same command
    #                 returns an error.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::SearchPlaceIndexForSuggestionsInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    # @option params [String] :text
    #   <p>The free-form partial text to use to generate place suggestions. For example,
    #                   <code>eiffel tow</code>.</p>
    #
    # @option params [Array<Float>] :bias_position
    #   <p>An optional parameter that indicates a preference for place suggestions that are
    #               closer to a specified position.</p>
    #           <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #           <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    # @option params [Array<Float>] :filter_b_box
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within a specified bounding box.</p>
    #           <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #           <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #           <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    # @option params [Array<String>] :filter_countries
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within the provided list of countries.</p>
    #           <ul>
    #               <li>
    #                   <p>Use the <a href="https://www.iso.org/iso-3166-country-codes.html">ISO
    #                           3166</a> 3-digit country code. For example, Australia uses three
    #                       upper-case characters: <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #           <p>The default: <code>5</code>
    #            </p>
    #
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results. If no language is specified,
    #               or not supported for a particular result, the partner automatically chooses a language
    #               for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for <code>Athens, Gr</code>
    #               to get suggestions with the <code>language</code> parameter set to <code>en</code>. The
    #               results found will most likely be returned as <code>Athens, Greece</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα, Ελλάδα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    # @return [Types::SearchPlaceIndexForSuggestionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_suggestions(
    #     index_name: 'IndexName', # required
    #     text: 'Text', # required
    #     bias_position: [
    #       1.0
    #     ],
    #     filter_b_box: [
    #       1.0
    #     ],
    #     filter_countries: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     language: 'Language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchPlaceIndexForSuggestionsOutput
    #   resp.data.summary #=> Types::SearchPlaceIndexForSuggestionsSummary
    #   resp.data.summary.text #=> String
    #   resp.data.summary.bias_position #=> Array<Float>
    #   resp.data.summary.bias_position[0] #=> Float
    #   resp.data.summary.filter_b_box #=> Array<Float>
    #   resp.data.summary.filter_b_box[0] #=> Float
    #   resp.data.summary.filter_countries #=> Array<String>
    #   resp.data.summary.filter_countries[0] #=> String
    #   resp.data.summary.max_results #=> Integer
    #   resp.data.summary.data_source #=> String
    #   resp.data.summary.language #=> String
    #   resp.data.results #=> Array<SearchForSuggestionsResult>
    #   resp.data.results[0] #=> Types::SearchForSuggestionsResult
    #   resp.data.results[0].text #=> String
    #
    def search_place_index_for_suggestions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchPlaceIndexForSuggestionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchPlaceIndexForSuggestionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchPlaceIndexForSuggestions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchPlaceIndexForSuggestions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchPlaceIndexForSuggestions,
        stubs: @stubs,
        params_class: Params::SearchPlaceIndexForSuggestionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_place_index_for_suggestions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Geocodes free-form text, such as an address, name, city, or region to allow you to
    #             search for Places or points of interest. </p>
    #         <p>Optional parameters let you narrow your search results by bounding box or country, or
    #             bias your search toward a specific position on the globe.</p>
    #         <note>
    #             <p>You can search for places near a given position using <code>BiasPosition</code>,
    #                 or filter results within a bounding box using <code>FilterBBox</code>. Providing
    #                 both parameters simultaneously returns an error.</p>
    #         </note>
    #         <p>Search results are returned in order of highest to lowest relevance.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchPlaceIndexForTextInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #
    # @option params [String] :text
    #   <p>The address, name, city, or region to be used in the search in free-form text format.
    #               For example, <code>123 Any Street</code>.</p>
    #
    # @option params [Array<Float>] :bias_position
    #   <p>An optional parameter that indicates a preference for places that are closer to a
    #               specified position.</p>
    #           <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #           <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #           <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    # @option params [Array<Float>] :filter_b_box
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               within the provided bounding box.</p>
    #           <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #           <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #           <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #           </note>
    #
    # @option params [Array<String>] :filter_countries
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               in a specified list of countries.</p>
    #           <ul>
    #               <li>
    #                   <p>Valid values include <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a>
    #                       3-digit country codes. For example, Australia uses three upper-case characters:
    #                           <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #           <p>The default: <code>50</code>
    #            </p>
    #
    # @option params [String] :language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #           <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #           <p>For an example, we'll use the Greek language. You search for <code>Athens,
    #                   Greece</code>, with the <code>language</code> parameter set to <code>en</code>. The
    #               result found will most likely be returned as <code>Athens</code>.</p>
    #           <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα</code>.</p>
    #           <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #
    # @return [Types::SearchPlaceIndexForTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_place_index_for_text(
    #     index_name: 'IndexName', # required
    #     text: 'Text', # required
    #     bias_position: [
    #       1.0
    #     ],
    #     filter_b_box: [
    #       1.0
    #     ],
    #     filter_countries: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     language: 'Language'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchPlaceIndexForTextOutput
    #   resp.data.summary #=> Types::SearchPlaceIndexForTextSummary
    #   resp.data.summary.text #=> String
    #   resp.data.summary.bias_position #=> Array<Float>
    #   resp.data.summary.bias_position[0] #=> Float
    #   resp.data.summary.filter_b_box #=> Array<Float>
    #   resp.data.summary.filter_b_box[0] #=> Float
    #   resp.data.summary.filter_countries #=> Array<String>
    #   resp.data.summary.filter_countries[0] #=> String
    #   resp.data.summary.max_results #=> Integer
    #   resp.data.summary.result_b_box #=> Array<Float>
    #   resp.data.summary.data_source #=> String
    #   resp.data.summary.language #=> String
    #   resp.data.results #=> Array<SearchForTextResult>
    #   resp.data.results[0] #=> Types::SearchForTextResult
    #   resp.data.results[0].place #=> Types::Place
    #   resp.data.results[0].place.label #=> String
    #   resp.data.results[0].place.geometry #=> Types::PlaceGeometry
    #   resp.data.results[0].place.geometry.point #=> Array<Float>
    #   resp.data.results[0].place.address_number #=> String
    #   resp.data.results[0].place.street #=> String
    #   resp.data.results[0].place.neighborhood #=> String
    #   resp.data.results[0].place.municipality #=> String
    #   resp.data.results[0].place.sub_region #=> String
    #   resp.data.results[0].place.region #=> String
    #   resp.data.results[0].place.country #=> String
    #   resp.data.results[0].place.postal_code #=> String
    #   resp.data.results[0].place.interpolated #=> Boolean
    #   resp.data.results[0].place.time_zone #=> Types::TimeZone
    #   resp.data.results[0].place.time_zone.name #=> String
    #   resp.data.results[0].place.time_zone.offset #=> Integer
    #   resp.data.results[0].distance #=> Float
    #   resp.data.results[0].relevance #=> Float
    #
    def search_place_index_for_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchPlaceIndexForTextInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchPlaceIndexForTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchPlaceIndexForText
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchPlaceIndexForText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchPlaceIndexForText,
        stubs: @stubs,
        params_class: Params::SearchPlaceIndexForTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_place_index_for_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon
    #             Location Service resource.</p>
    #
    #         <p>Tags can help you organize and categorize your resources.
    #             You can also use them to scope user permissions, by granting a user
    #             permission to access or change only resources with certain tag values.</p>
    #
    #         <p>You can use the <code>TagResource</code> operation with an Amazon Location Service
    #             resource that already has tags. If you specify a new tag key for the resource, this tag
    #             is appended to the tags already associated with the resource. If you specify a tag key
    #             that's already associated with the resource, the new tag value that you specify replaces
    #             the previous value for that tag. </p>
    #
    #         <p>You can associate up to 50 tags with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to update.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Applies one or more tags to specific resource. A tag is a key-value pair that helps you
    #               manage, identify, search, and filter your resources.</p>
    #           <p>Format: <code>"key" : "value"</code>
    #            </p>
    #           <p>Restrictions:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                   <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                   <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + -
    #                       = . _ : / @</p>
    #               </li>
    #               <li>
    #                   <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "metadata.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p>Removes one or more tags from the specified Amazon Location resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove tags.</p>
    #   	        <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the specified resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "metadata.",
        disable_host_prefix: @config.disable_host_prefix
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p>Updates the specified properties of a given geofence collection.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGeofenceCollectionInput}.
    #
    # @option params [String] :collection_name
    #   <p>The name of the geofence collection to update.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    # @option params [String] :description
    #   <p>Updates the description for the geofence collection.</p>
    #
    # @return [Types::UpdateGeofenceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_geofence_collection(
    #     collection_name: 'CollectionName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     pricing_plan_data_source: 'PricingPlanDataSource',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGeofenceCollectionOutput
    #   resp.data.collection_name #=> String
    #   resp.data.collection_arn #=> String
    #   resp.data.update_time #=> Time
    #
    def update_geofence_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGeofenceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGeofenceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "geofencing.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGeofenceCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateGeofenceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGeofenceCollection,
        stubs: @stubs,
        params_class: Params::UpdateGeofenceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_geofence_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified properties of a given map resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMapInput}.
    #
    # @option params [String] :map_name
    #   <p>The name of the map resource to update.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>Updates the description for the map resource.</p>
    #
    # @return [Types::UpdateMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_map(
    #     map_name: 'MapName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMapOutput
    #   resp.data.map_name #=> String
    #   resp.data.map_arn #=> String
    #   resp.data.update_time #=> Time
    #
    def update_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "maps.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMap,
        stubs: @stubs,
        params_class: Params::UpdateMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified properties of a given place index resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePlaceIndexInput}.
    #
    # @option params [String] :index_name
    #   <p>The name of the place index resource to update.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>Updates the description for the place index resource.</p>
    #
    # @option params [DataSourceConfiguration] :data_source_configuration
    #   <p>Updates the data storage option for the place index resource.</p>
    #
    # @return [Types::UpdatePlaceIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_place_index(
    #     index_name: 'IndexName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description',
    #     data_source_configuration: {
    #       intended_use: 'SingleUse' # accepts ["SingleUse", "Storage"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePlaceIndexOutput
    #   resp.data.index_name #=> String
    #   resp.data.index_arn #=> String
    #   resp.data.update_time #=> Time
    #
    def update_place_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePlaceIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePlaceIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "places.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePlaceIndex
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdatePlaceIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePlaceIndex,
        stubs: @stubs,
        params_class: Params::UpdatePlaceIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_place_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified properties for a given route calculator resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRouteCalculatorInput}.
    #
    # @option params [String] :calculator_name
    #   <p>The name of the route calculator resource to update.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :description
    #   <p>Updates the description for the route calculator resource.</p>
    #
    # @return [Types::UpdateRouteCalculatorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route_calculator(
    #     calculator_name: 'CalculatorName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRouteCalculatorOutput
    #   resp.data.calculator_name #=> String
    #   resp.data.calculator_arn #=> String
    #   resp.data.update_time #=> Time
    #
    def update_route_calculator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRouteCalculatorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRouteCalculatorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "routes.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRouteCalculator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateRouteCalculator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRouteCalculator,
        stubs: @stubs,
        params_class: Params::UpdateRouteCalculatorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_route_calculator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified properties of a given tracker resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrackerInput}.
    #
    # @option params [String] :tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #
    # @option params [String] :pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #
    # @option params [String] :pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #
    # @option params [String] :description
    #   <p>Updates the description for the tracker resource.</p>
    #
    # @option params [String] :position_filtering
    #   <p>Updates the position filtering for the tracker resource.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TimeBased</code> - Location updates are evaluated against linked geofence collections,
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds,
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are
    #                       ignored. Location updates within this distance are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This helps educe the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateTrackerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tracker(
    #     tracker_name: 'TrackerName', # required
    #     pricing_plan: 'RequestBasedUsage', # accepts ["RequestBasedUsage", "MobileAssetTracking", "MobileAssetManagement"]
    #     pricing_plan_data_source: 'PricingPlanDataSource',
    #     description: 'Description',
    #     position_filtering: 'TimeBased' # accepts ["TimeBased", "DistanceBased", "AccuracyBased"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrackerOutput
    #   resp.data.tracker_name #=> String
    #   resp.data.tracker_arn #=> String
    #   resp.data.update_time #=> Time
    #
    def update_tracker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrackerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrackerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "tracking.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTracker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateTracker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTracker,
        stubs: @stubs,
        params_class: Params::UpdateTrackerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_tracker
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
