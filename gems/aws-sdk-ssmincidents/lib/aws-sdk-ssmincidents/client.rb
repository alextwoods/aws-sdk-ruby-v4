# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SSMIncidents
  # An API client for SSMIncidents
  # See {#initialize} for a full list of supported configuration options
  # <p>Systems Manager Incident Manager is an incident management console designed to help users
  #       mitigate and recover from incidents affecting their Amazon Web Services-hosted applications. An
  #       incident is any unplanned interruption or reduction in quality of services. </p>
  #          <p>Incident Manager increases incident resolution by notifying responders of impact,
  #       highlighting relevant troubleshooting data, and providing collaboration tools to get services
  #       back up and running. To achieve the primary goal of reducing the time-to-resolution of
  #       critical incidents, Incident Manager automates response plans and enables responder
  #       team escalation. </p>
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
    def initialize(config = AWS::SDK::SSMIncidents::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>A replication set replicates and encrypts your data to the provided Regions with the
    #             provided KMS key. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationSetInput}.
    #
    # @option params [Hash<String, RegionMapInputValue>] :regions
    #   <p>The Regions that Incident Manager replicates your data to. You can have up to three Regions
    #               in your replication set.</p>
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @return [Types::CreateReplicationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_set(
    #     regions: {
    #       'key' => {
    #         sse_kms_key_id: 'sseKmsKeyId'
    #       }
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationSetOutput
    #   resp.data.arn #=> String
    #
    def create_replication_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateReplicationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationSet,
        stubs: @stubs,
        params_class: Params::CreateReplicationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a response plan that automates the initial response to incidents. A response
    #             plan engages contacts, starts chat channel collaboration, and initiates runbooks at the
    #             beginning of an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResponsePlanInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :name
    #   <p>The short format name of the response plan. Can't include spaces.</p>
    #
    # @option params [String] :display_name
    #   <p>The long format of the response plan name. This field can contain spaces.</p>
    #
    # @option params [IncidentTemplate] :incident_template
    #   <p>Details used to create an incident when using this response plan.</p>
    #
    # @option params [ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an
    #               incident.</p>
    #
    # @option params [Array<String>] :engagements
    #   <p>The contacts and escalation plans that the response plan engages during an
    #               incident.</p>
    #
    # @option params [Array<Action>] :actions
    #   <p>The actions that the response plan starts at the beginning of an incident.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags that you are adding to the response plan.</p>
    #
    # @return [Types::CreateResponsePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_response_plan(
    #     client_token: 'clientToken',
    #     name: 'name', # required
    #     display_name: 'displayName',
    #     incident_template: {
    #       title: 'title', # required
    #       impact: 1, # required
    #       summary: 'summary',
    #       dedupe_string: 'dedupeString',
    #       notification_targets: [
    #         {
    #           # One of:
    #           sns_topic_arn: 'snsTopicArn'
    #         }
    #       ]
    #     }, # required
    #     chat_channel: {
    #       # One of:
    #       empty: { },
    #       chatbot_sns: [
    #         'member'
    #       ]
    #     },
    #     engagements: [
    #       'member'
    #     ],
    #     actions: [
    #       {
    #         # One of:
    #         ssm_automation: {
    #           role_arn: 'roleArn', # required
    #           document_name: 'documentName', # required
    #           document_version: 'documentVersion',
    #           target_account: 'RESPONSE_PLAN_OWNER_ACCOUNT', # accepts ["RESPONSE_PLAN_OWNER_ACCOUNT", "IMPACTED_ACCOUNT"]
    #           parameters: {
    #             'key' => [
    #               'member'
    #             ]
    #           },
    #           dynamic_parameters: {
    #             'key' => {
    #               # One of:
    #               variable: 'INCIDENT_RECORD_ARN' # accepts ["INCIDENT_RECORD_ARN", "INVOLVED_RESOURCES"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResponsePlanOutput
    #   resp.data.arn #=> String
    #
    def create_response_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResponsePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResponsePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResponsePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateResponsePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResponsePlan,
        stubs: @stubs,
        params_class: Params::CreateResponsePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_response_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom timeline event on the incident details page of an incident record.
    #             Timeline events are automatically created by Incident Manager, marking key moment during an
    #             incident. You can create custom timeline events to mark important events that are
    #             automatically detected by Incident Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTimelineEventInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the action is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record to which the event will be
    #               added.</p>
    #
    # @option params [Time] :event_time
    #   <p>The time that the event occurred.</p>
    #
    # @option params [String] :event_type
    #   <p>The type of the event. You can create timeline events of type <code>Custom
    #                   Event</code>.</p>
    #
    # @option params [String] :event_data
    #   <p>A short description of the event.</p>
    #
    # @return [Types::CreateTimelineEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_timeline_event(
    #     client_token: 'clientToken',
    #     incident_record_arn: 'incidentRecordArn', # required
    #     event_time: Time.now, # required
    #     event_type: 'eventType', # required
    #     event_data: 'eventData' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTimelineEventOutput
    #   resp.data.incident_record_arn #=> String
    #   resp.data.event_id #=> String
    #
    def create_timeline_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTimelineEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTimelineEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTimelineEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateTimelineEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTimelineEvent,
        stubs: @stubs,
        params_class: Params::CreateTimelineEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_timeline_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an incident record from Incident Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIncidentRecordInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are deleting.</p>
    #
    # @return [Types::DeleteIncidentRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_incident_record(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIncidentRecordOutput
    #
    def delete_incident_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIncidentRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIncidentRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIncidentRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteIncidentRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIncidentRecord,
        stubs: @stubs,
        params_class: Params::DeleteIncidentRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_incident_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all Regions in your replication set. Deleting the replication set deletes all
    #             Incident Manager data.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationSetInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're deleting.</p>
    #
    # @return [Types::DeleteReplicationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_set(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationSetOutput
    #
    def delete_replication_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteReplicationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationSet,
        stubs: @stubs,
        params_class: Params::DeleteReplicationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the resource policy that Resource Access Manager uses to share your Incident Manager
    #             resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you're deleting the policy from.</p>
    #
    # @option params [String] :policy_id
    #   <p>The ID of the resource policy you're deleting.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'resourceArn', # required
    #     policy_id: 'policyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch alarms and EventBridge events from creating an incident with this
    #             response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResponsePlanInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    # @return [Types::DeleteResponsePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_response_plan(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResponsePlanOutput
    #
    def delete_response_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResponsePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResponsePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResponsePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteResponsePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResponsePlan,
        stubs: @stubs,
        params_class: Params::DeleteResponsePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_response_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a timeline event from an incident.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTimelineEventInput}.
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    # @option params [String] :event_id
    #   <p>The ID of the event you are updating. You can find this by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    # @return [Types::DeleteTimelineEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_timeline_event(
    #     incident_record_arn: 'incidentRecordArn', # required
    #     event_id: 'eventId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTimelineEventOutput
    #
    def delete_timeline_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTimelineEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTimelineEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTimelineEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteTimelineEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTimelineEvent,
        stubs: @stubs,
        params_class: Params::DeleteTimelineEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_timeline_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details for the specified incident record.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIncidentRecordInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    #
    # @return [Types::GetIncidentRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_incident_record(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIncidentRecordOutput
    #   resp.data.incident_record #=> Types::IncidentRecord
    #   resp.data.incident_record.arn #=> String
    #   resp.data.incident_record.title #=> String
    #   resp.data.incident_record.summary #=> String
    #   resp.data.incident_record.status #=> String, one of ["OPEN", "RESOLVED"]
    #   resp.data.incident_record.impact #=> Integer
    #   resp.data.incident_record.creation_time #=> Time
    #   resp.data.incident_record.resolved_time #=> Time
    #   resp.data.incident_record.last_modified_time #=> Time
    #   resp.data.incident_record.last_modified_by #=> String
    #   resp.data.incident_record.automation_executions #=> Array<AutomationExecution>
    #   resp.data.incident_record.automation_executions[0] #=> Types::AutomationExecution, one of [SsmExecutionArn]
    #   resp.data.incident_record.automation_executions[0].ssm_execution_arn #=> String
    #   resp.data.incident_record.incident_record_source #=> Types::IncidentRecordSource
    #   resp.data.incident_record.incident_record_source.created_by #=> String
    #   resp.data.incident_record.incident_record_source.invoked_by #=> String
    #   resp.data.incident_record.incident_record_source.resource_arn #=> String
    #   resp.data.incident_record.incident_record_source.source #=> String
    #   resp.data.incident_record.dedupe_string #=> String
    #   resp.data.incident_record.chat_channel #=> Types::ChatChannel, one of [Empty, ChatbotSns]
    #   resp.data.incident_record.chat_channel.empty #=> Types::EmptyChatChannel
    #   resp.data.incident_record.chat_channel.chatbot_sns #=> Array<String>
    #   resp.data.incident_record.chat_channel.chatbot_sns[0] #=> String
    #   resp.data.incident_record.notification_targets #=> Array<NotificationTargetItem>
    #   resp.data.incident_record.notification_targets[0] #=> Types::NotificationTargetItem, one of [SnsTopicArn]
    #   resp.data.incident_record.notification_targets[0].sns_topic_arn #=> String
    #
    def get_incident_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIncidentRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIncidentRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIncidentRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetIncidentRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIncidentRecord,
        stubs: @stubs,
        params_class: Params::GetIncidentRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_incident_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve your Incident Manager replication set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReplicationSetInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you want to retrieve.</p>
    #
    # @return [Types::GetReplicationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_set(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReplicationSetOutput
    #   resp.data.replication_set #=> Types::ReplicationSet
    #   resp.data.replication_set.arn #=> String
    #   resp.data.replication_set.region_map #=> Hash<String, RegionInfo>
    #   resp.data.replication_set.region_map['key'] #=> Types::RegionInfo
    #   resp.data.replication_set.region_map['key'].sse_kms_key_id #=> String
    #   resp.data.replication_set.region_map['key'].status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED"]
    #   resp.data.replication_set.region_map['key'].status_message #=> String
    #   resp.data.replication_set.region_map['key'].status_update_date_time #=> Time
    #   resp.data.replication_set.status #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.replication_set.deletion_protected #=> Boolean
    #   resp.data.replication_set.created_time #=> Time
    #   resp.data.replication_set.created_by #=> String
    #   resp.data.replication_set.last_modified_time #=> Time
    #   resp.data.replication_set.last_modified_by #=> String
    #
    def get_replication_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReplicationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReplicationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReplicationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetReplicationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReplicationSet,
        stubs: @stubs,
        params_class: Params::GetReplicationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_replication_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource policies attached to the specified response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePoliciesInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan with the attached resource policy. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource policies to display per page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::GetResourcePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies(
    #     resource_arn: 'resourceArn', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePoliciesOutput
    #   resp.data.resource_policies #=> Array<ResourcePolicy>
    #   resp.data.resource_policies[0] #=> Types::ResourcePolicy
    #   resp.data.resource_policies[0].policy_document #=> String
    #   resp.data.resource_policies[0].policy_id #=> String
    #   resp.data.resource_policies[0].ram_resource_share_region #=> String
    #   resp.data.next_token #=> String
    #
    def get_resource_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetResourcePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicies,
        stubs: @stubs,
        params_class: Params::GetResourcePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of the specified response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResponsePlanInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    # @return [Types::GetResponsePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_response_plan(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResponsePlanOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.incident_template #=> Types::IncidentTemplate
    #   resp.data.incident_template.title #=> String
    #   resp.data.incident_template.impact #=> Integer
    #   resp.data.incident_template.summary #=> String
    #   resp.data.incident_template.dedupe_string #=> String
    #   resp.data.incident_template.notification_targets #=> Array<NotificationTargetItem>
    #   resp.data.incident_template.notification_targets[0] #=> Types::NotificationTargetItem, one of [SnsTopicArn]
    #   resp.data.incident_template.notification_targets[0].sns_topic_arn #=> String
    #   resp.data.chat_channel #=> Types::ChatChannel, one of [Empty, ChatbotSns]
    #   resp.data.chat_channel.empty #=> Types::EmptyChatChannel
    #   resp.data.chat_channel.chatbot_sns #=> Array<String>
    #   resp.data.chat_channel.chatbot_sns[0] #=> String
    #   resp.data.engagements #=> Array<String>
    #   resp.data.engagements[0] #=> String
    #   resp.data.actions #=> Array<Action>
    #   resp.data.actions[0] #=> Types::Action, one of [SsmAutomation]
    #   resp.data.actions[0].ssm_automation #=> Types::SsmAutomation
    #   resp.data.actions[0].ssm_automation.role_arn #=> String
    #   resp.data.actions[0].ssm_automation.document_name #=> String
    #   resp.data.actions[0].ssm_automation.document_version #=> String
    #   resp.data.actions[0].ssm_automation.target_account #=> String, one of ["RESPONSE_PLAN_OWNER_ACCOUNT", "IMPACTED_ACCOUNT"]
    #   resp.data.actions[0].ssm_automation.parameters #=> Hash<String, Array<String>>
    #   resp.data.actions[0].ssm_automation.parameters['key'] #=> Array<String>
    #   resp.data.actions[0].ssm_automation.parameters['key'][0] #=> String
    #   resp.data.actions[0].ssm_automation.dynamic_parameters #=> Hash<String, DynamicSsmParameterValue>
    #   resp.data.actions[0].ssm_automation.dynamic_parameters['key'] #=> Types::DynamicSsmParameterValue, one of [Variable]
    #   resp.data.actions[0].ssm_automation.dynamic_parameters['key'].variable #=> String, one of ["INCIDENT_RECORD_ARN", "INVOLVED_RESOURCES"]
    #
    def get_response_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResponsePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResponsePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResponsePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetResponsePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResponsePlan,
        stubs: @stubs,
        params_class: Params::GetResponsePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_response_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a timeline event based on its ID and incident record.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTimelineEventInput}.
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    # @option params [String] :event_id
    #   <p>The ID of the event. You can get an event's ID when you create it, or by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    # @return [Types::GetTimelineEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_timeline_event(
    #     incident_record_arn: 'incidentRecordArn', # required
    #     event_id: 'eventId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTimelineEventOutput
    #   resp.data.event #=> Types::TimelineEvent
    #   resp.data.event.incident_record_arn #=> String
    #   resp.data.event.event_id #=> String
    #   resp.data.event.event_time #=> Time
    #   resp.data.event.event_updated_time #=> Time
    #   resp.data.event.event_type #=> String
    #   resp.data.event.event_data #=> String
    #
    def get_timeline_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTimelineEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTimelineEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTimelineEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetTimelineEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTimelineEvent,
        stubs: @stubs,
        params_class: Params::GetTimelineEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_timeline_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all incident records in your account. Use this command to retrieve the Amazon
    #             Resource Name (ARN) of the incident record you want to update. </p>
    #
    # @param [Hash] params
    #   See {Types::ListIncidentRecordsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters the list of incident records through which you are searching. You can filter
    #               on the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>creationTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>impact</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>createdBy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note the following when deciding how to use Filters:</p>
    #           <ul>
    #               <li>
    #                   <p>If you don't specify a Filter, the response includes all incident
    #                       records.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify more than one filter in a single request, the response returns
    #                       incident records that match all filters.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify a filter with more than one value, the response returns
    #                       incident records that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListIncidentRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_incident_records(
    #     filters: [
    #       {
    #         key: 'key', # required
    #         condition: {
    #           # One of:
    #           before: Time.now,
    #           after: Time.now,
    #           equals: {
    #             # One of:
    #             string_values: [
    #               'member'
    #             ],
    #             integer_values: [
    #               1
    #             ]
    #           }
    #         } # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIncidentRecordsOutput
    #   resp.data.incident_record_summaries #=> Array<IncidentRecordSummary>
    #   resp.data.incident_record_summaries[0] #=> Types::IncidentRecordSummary
    #   resp.data.incident_record_summaries[0].arn #=> String
    #   resp.data.incident_record_summaries[0].title #=> String
    #   resp.data.incident_record_summaries[0].status #=> String, one of ["OPEN", "RESOLVED"]
    #   resp.data.incident_record_summaries[0].impact #=> Integer
    #   resp.data.incident_record_summaries[0].creation_time #=> Time
    #   resp.data.incident_record_summaries[0].resolved_time #=> Time
    #   resp.data.incident_record_summaries[0].incident_record_source #=> Types::IncidentRecordSource
    #   resp.data.incident_record_summaries[0].incident_record_source.created_by #=> String
    #   resp.data.incident_record_summaries[0].incident_record_source.invoked_by #=> String
    #   resp.data.incident_record_summaries[0].incident_record_source.resource_arn #=> String
    #   resp.data.incident_record_summaries[0].incident_record_source.source #=> String
    #   resp.data.next_token #=> String
    #
    def list_incident_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIncidentRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIncidentRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIncidentRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListIncidentRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIncidentRecords,
        stubs: @stubs,
        params_class: Params::ListIncidentRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_incident_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all related items for an incident record.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRelatedItemsInput}.
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the listed related
    #               items.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of related items per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListRelatedItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_related_items(
    #     incident_record_arn: 'incidentRecordArn', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRelatedItemsOutput
    #   resp.data.related_items #=> Array<RelatedItem>
    #   resp.data.related_items[0] #=> Types::RelatedItem
    #   resp.data.related_items[0].identifier #=> Types::ItemIdentifier
    #   resp.data.related_items[0].identifier.value #=> Types::ItemValue, one of [Arn, Url, MetricDefinition]
    #   resp.data.related_items[0].identifier.value.arn #=> String
    #   resp.data.related_items[0].identifier.value.url #=> String
    #   resp.data.related_items[0].identifier.value.metric_definition #=> String
    #   resp.data.related_items[0].identifier.type #=> String, one of ["ANALYSIS", "INCIDENT", "METRIC", "PARENT", "ATTACHMENT", "OTHER", "AUTOMATION", "INVOLVED_RESOURCE"]
    #   resp.data.related_items[0].title #=> String
    #   resp.data.next_token #=> String
    #
    def list_related_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRelatedItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRelatedItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRelatedItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListRelatedItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRelatedItems,
        stubs: @stubs,
        params_class: Params::ListRelatedItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_related_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists details about the replication set configured in your account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListReplicationSetsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListReplicationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_replication_sets(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReplicationSetsOutput
    #   resp.data.replication_set_arns #=> Array<String>
    #   resp.data.replication_set_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_replication_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReplicationSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReplicationSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReplicationSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListReplicationSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReplicationSets,
        stubs: @stubs,
        params_class: Params::ListReplicationSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_replication_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all response plans in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResponsePlansInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of response plans per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListResponsePlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_response_plans(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResponsePlansOutput
    #   resp.data.response_plan_summaries #=> Array<ResponsePlanSummary>
    #   resp.data.response_plan_summaries[0] #=> Types::ResponsePlanSummary
    #   resp.data.response_plan_summaries[0].arn #=> String
    #   resp.data.response_plan_summaries[0].name #=> String
    #   resp.data.response_plan_summaries[0].display_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_response_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResponsePlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResponsePlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResponsePlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListResponsePlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResponsePlans,
        stubs: @stubs,
        params_class: Params::ListResponsePlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_response_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Lists timeline events for the specified incident record.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTimelineEventsInput}.
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters the timeline events based on the provided conditional values. You can filter
    #               timeline events using the following keys:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>eventTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>eventType</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Note the following when deciding how to use Filters:</p>
    #           <ul>
    #               <li>
    #                   <p>If you don't specify a Filter, the response includes all timeline
    #                       events.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify more than one filter in a single request, the response returns
    #                       timeline events that match all filters.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify a filter with more than one value, the response returns
    #                       timeline events that match any of the values provided.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sort_by
    #   <p>Sort by the specified key value pair.</p>
    #
    # @option params [String] :sort_order
    #   <p>Sorts the order of timeline events by the value specified in the <code>sortBy</code>
    #               field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListTimelineEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_timeline_events(
    #     incident_record_arn: 'incidentRecordArn', # required
    #     filters: [
    #       {
    #         key: 'key', # required
    #         condition: {
    #           # One of:
    #           before: Time.now,
    #           after: Time.now,
    #           equals: {
    #             # One of:
    #             string_values: [
    #               'member'
    #             ],
    #             integer_values: [
    #               1
    #             ]
    #           }
    #         } # required
    #       }
    #     ],
    #     sort_by: 'EVENT_TIME', # accepts ["EVENT_TIME"]
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTimelineEventsOutput
    #   resp.data.event_summaries #=> Array<EventSummary>
    #   resp.data.event_summaries[0] #=> Types::EventSummary
    #   resp.data.event_summaries[0].incident_record_arn #=> String
    #   resp.data.event_summaries[0].event_id #=> String
    #   resp.data.event_summaries[0].event_time #=> Time
    #   resp.data.event_summaries[0].event_updated_time #=> Time
    #   resp.data.event_summaries[0].event_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_timeline_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTimelineEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTimelineEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTimelineEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListTimelineEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTimelineEvents,
        stubs: @stubs,
        params_class: Params::ListTimelineEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_timeline_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a resource policy to the specified response plan. The resource policy is used to
    #             share the response plan using Resource Access Manager (RAM). For more
    #             information about cross-account sharing, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html">Setting up
    #                 cross-account functionality</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the resource policy
    #               to.</p>
    #
    # @option params [String] :policy
    #   <p>Details of the resource policy.</p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     resource_arn: 'resourceArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.policy_id #=> String
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to start an incident from CloudWatch alarms, EventBridge events, or
    #             manually. </p>
    #
    # @param [Hash] params
    #   See {Types::StartIncidentInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :response_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan that pre-defines summary, chat
    #               channels, Amazon SNS topics, runbooks, title, and impact of the incident. </p>
    #
    # @option params [String] :title
    #   <p>Provide a title for the incident. Providing a title overwrites the title provided by
    #               the response plan. </p>
    #
    # @option params [Integer] :impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact
    #               provided by a response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>1</code> - Critical impact, this typically relates to full application
    #                       failure that impacts many to all customers. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>2</code> - High impact, partial application failure with impact to many
    #                       customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>3</code> -  Medium impact, the application is providing reduced service
    #                       to customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>4</code> -  Low impact, customer might aren't impacted by the problem
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>5</code> - No impact, customers aren't currently impacted but urgent
    #                       action is needed to avoid impact.</p>
    #               </li>
    #            </ul>
    #
    # @option params [TriggerDetails] :trigger_details
    #   <p>Details of what created the incident record in Incident Manager.</p>
    #
    # @option params [Array<RelatedItem>] :related_items
    #   <p>Add related items to the incident for other responders to use. Related items are AWS
    #               resources, external links, or files uploaded to an Amazon S3 bucket. </p>
    #
    # @return [Types::StartIncidentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_incident(
    #     client_token: 'clientToken',
    #     response_plan_arn: 'responsePlanArn', # required
    #     title: 'title',
    #     impact: 1,
    #     trigger_details: {
    #       source: 'source', # required
    #       trigger_arn: 'triggerArn',
    #       timestamp: Time.now, # required
    #       raw_data: 'rawData'
    #     },
    #     related_items: [
    #       {
    #         identifier: {
    #           value: {
    #             # One of:
    #             arn: 'arn',
    #             url: 'url',
    #             metric_definition: 'metricDefinition'
    #           }, # required
    #           type: 'ANALYSIS' # required - accepts ["ANALYSIS", "INCIDENT", "METRIC", "PARENT", "ATTACHMENT", "OTHER", "AUTOMATION", "INVOLVED_RESOURCE"]
    #         }, # required
    #         title: 'title'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartIncidentOutput
    #   resp.data.incident_record_arn #=> String
    #
    def start_incident(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartIncidentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartIncidentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartIncident
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartIncident
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartIncident,
        stubs: @stubs,
        params_class: Params::StartIncidentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_incident
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a tag to a response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags that you are adding to the response plan.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're removing a tag from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The name of the tag you're removing from the response plan.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Update deletion protection to either allow or deny deletion of the final Region in a
    #             replication set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeletionProtectionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    #
    # @option params [Boolean] :deletion_protected
    #   <p>Details if deletion protection is enabled or disabled in your account.</p>
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @return [Types::UpdateDeletionProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deletion_protection(
    #     arn: 'arn', # required
    #     deletion_protected: false, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeletionProtectionOutput
    #
    def update_deletion_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeletionProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeletionProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeletionProtection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDeletionProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeletionProtection,
        stubs: @stubs,
        params_class: Params::UpdateDeletionProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_deletion_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the details of an incident record. You can use this operation to update an
    #             incident record from the defined chat channel. For more information about using actions
    #             in chat channels, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact">Interacting through chat</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIncidentRecordInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are updating.</p>
    #
    # @option params [String] :title
    #   <p>A brief description of the incident.</p>
    #
    # @option params [String] :summary
    #   <p>A longer description of what occurred during the incident.</p>
    #
    # @option params [Integer] :impact
    #   <p>Defines the impact of the incident to customers and applications. Providing an impact
    #               overwrites the impact provided by the response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>1</code> - Critical impact, full application failure that impacts many
    #                       to all customers. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>2</code> - High impact, partial application failure with impact to many
    #                       customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>3</code> - Medium impact, the application is providing reduced service
    #                       to customers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>4</code> - Low impact, customer aren't impacted by the problem
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>5</code> - No impact, customers aren't currently impacted but urgent
    #                       action is needed to avoid impact.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :status
    #   <p>The status of the incident. An incident can be <code>Open</code> or
    #                   <code>Resolved</code>.</p>
    #
    # @option params [ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel where responders can collaborate.</p>
    #
    # @option params [Array<NotificationTargetItem>] :notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #               incident.</p>
    #           <p>Using multiple SNS topics creates redundancy in the event that a Region is down during
    #               the incident.</p>
    #
    # @return [Types::UpdateIncidentRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_incident_record(
    #     client_token: 'clientToken',
    #     arn: 'arn', # required
    #     title: 'title',
    #     summary: 'summary',
    #     impact: 1,
    #     status: 'OPEN', # accepts ["OPEN", "RESOLVED"]
    #     chat_channel: {
    #       # One of:
    #       empty: { },
    #       chatbot_sns: [
    #         'member'
    #       ]
    #     },
    #     notification_targets: [
    #       {
    #         # One of:
    #         sns_topic_arn: 'snsTopicArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIncidentRecordOutput
    #
    def update_incident_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIncidentRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIncidentRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIncidentRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateIncidentRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIncidentRecord,
        stubs: @stubs,
        params_class: Params::UpdateIncidentRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_incident_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add or remove related items from the related items tab of an incident record.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRelatedItemsInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the related items you
    #               are updating.</p>
    #
    # @option params [RelatedItemsUpdate] :related_items_update
    #   <p>Details about the item you are adding or deleting.</p>
    #
    # @return [Types::UpdateRelatedItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_related_items(
    #     client_token: 'clientToken',
    #     incident_record_arn: 'incidentRecordArn', # required
    #     related_items_update: {
    #       # One of:
    #       item_to_add: {
    #         identifier: {
    #           value: {
    #             # One of:
    #             arn: 'arn',
    #             url: 'url',
    #             metric_definition: 'metricDefinition'
    #           }, # required
    #           type: 'ANALYSIS' # required - accepts ["ANALYSIS", "INCIDENT", "METRIC", "PARENT", "ATTACHMENT", "OTHER", "AUTOMATION", "INVOLVED_RESOURCE"]
    #         }, # required
    #         title: 'title'
    #       },
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRelatedItemsOutput
    #
    def update_related_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRelatedItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRelatedItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRelatedItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateRelatedItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRelatedItems,
        stubs: @stubs,
        params_class: Params::UpdateRelatedItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_related_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add or delete Regions from your replication set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationSetInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    #
    # @option params [Array<UpdateReplicationSetAction>] :actions
    #   <p>An action to add or delete a Region.</p>
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @return [Types::UpdateReplicationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_set(
    #     arn: 'arn', # required
    #     actions: [
    #       {
    #         # One of:
    #         add_region_action: {
    #           region_name: 'regionName', # required
    #           sse_kms_key_id: 'sseKmsKeyId'
    #         },
    #         delete_region_action: {
    #           region_name: 'regionName' # required
    #         }
    #       }
    #     ], # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReplicationSetOutput
    #
    def update_replication_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReplicationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReplicationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReplicationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateReplicationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReplicationSet,
        stubs: @stubs,
        params_class: Params::UpdateReplicationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_replication_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified response plan.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResponsePlanInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    #
    # @option params [String] :display_name
    #   <p>The long format name of the response plan. The display name can't contain
    #               spaces.</p>
    #
    # @option params [String] :incident_template_title
    #   <p>The short format name of the incident. The title can't contain spaces.</p>
    #
    # @option params [Integer] :incident_template_impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact
    #               provided by a response plan.</p>
    #           <p class="title">
    #               <b>Possible impacts:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>5</code> - Severe impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - High impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - Low impact</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1</code> - No impact</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :incident_template_summary
    #   <p>A brief summary of the incident. This typically contains what has happened, what's
    #               currently happening, and next steps.</p>
    #
    # @option params [String] :incident_template_dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the
    #               same incident in the same account.</p>
    #
    # @option params [Array<NotificationTargetItem>] :incident_template_notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #               incident.</p>
    #
    # @option params [ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an
    #               incident.</p>
    #           <p>Use the empty structure to remove the chat channel from the response plan.</p>
    #
    # @option params [Array<String>] :engagements
    #   <p>The contacts and escalation plans that Incident Manager engages at the start of the incident.</p>
    #
    # @option params [Array<Action>] :actions
    #   <p>The actions that this response plan takes at the beginning of an incident.</p>
    #
    # @return [Types::UpdateResponsePlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_response_plan(
    #     client_token: 'clientToken',
    #     arn: 'arn', # required
    #     display_name: 'displayName',
    #     incident_template_title: 'incidentTemplateTitle',
    #     incident_template_impact: 1,
    #     incident_template_summary: 'incidentTemplateSummary',
    #     incident_template_dedupe_string: 'incidentTemplateDedupeString',
    #     incident_template_notification_targets: [
    #       {
    #         # One of:
    #         sns_topic_arn: 'snsTopicArn'
    #       }
    #     ],
    #     chat_channel: {
    #       # One of:
    #       empty: { },
    #       chatbot_sns: [
    #         'member'
    #       ]
    #     },
    #     engagements: [
    #       'member'
    #     ],
    #     actions: [
    #       {
    #         # One of:
    #         ssm_automation: {
    #           role_arn: 'roleArn', # required
    #           document_name: 'documentName', # required
    #           document_version: 'documentVersion',
    #           target_account: 'RESPONSE_PLAN_OWNER_ACCOUNT', # accepts ["RESPONSE_PLAN_OWNER_ACCOUNT", "IMPACTED_ACCOUNT"]
    #           parameters: {
    #             'key' => [
    #               'member'
    #             ]
    #           },
    #           dynamic_parameters: {
    #             'key' => {
    #               # One of:
    #               variable: 'INCIDENT_RECORD_ARN' # accepts ["INCIDENT_RECORD_ARN", "INVOLVED_RESOURCES"]
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResponsePlanOutput
    #
    def update_response_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResponsePlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResponsePlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResponsePlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateResponsePlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResponsePlan,
        stubs: @stubs,
        params_class: Params::UpdateResponsePlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_response_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a timeline event. You can update events of type <code>Custom
    #             Event</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTimelineEventInput}.
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #               details.</p>
    #
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline
    #               event.</p>
    #
    # @option params [String] :event_id
    #   <p>The ID of the event you are updating. You can find this by using
    #                   <code>ListTimelineEvents</code>.</p>
    #
    # @option params [Time] :event_time
    #   <p>The time that the event occurred.</p>
    #
    # @option params [String] :event_type
    #   <p>The type of the event. You can update events of type <code>Custom Event</code>.</p>
    #
    # @option params [String] :event_data
    #   <p>A short description of the event.</p>
    #
    # @return [Types::UpdateTimelineEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_timeline_event(
    #     client_token: 'clientToken',
    #     incident_record_arn: 'incidentRecordArn', # required
    #     event_id: 'eventId', # required
    #     event_time: Time.now,
    #     event_type: 'eventType',
    #     event_data: 'eventData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTimelineEventOutput
    #
    def update_timeline_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTimelineEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTimelineEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTimelineEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateTimelineEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTimelineEvent,
        stubs: @stubs,
        params_class: Params::UpdateTimelineEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_timeline_event
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
