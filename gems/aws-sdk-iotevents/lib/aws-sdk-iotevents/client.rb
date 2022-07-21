# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTEvents
  # An API client for IotColumboService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and
  #       triggers actions when such events occur. You can use AWS IoT Events API operations to create, read,
  #       update, and delete inputs and detector models, and to list their versions.</p>
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
    def initialize(config = AWS::SDK::IoTEvents::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get
    #       notified when the value is outside a specified range. For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html">Create an
    #         alarm model</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAlarmModelInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>A unique name that helps you identify the alarm model. You can't change this name after
    #         you create the alarm model.</p>
    #
    # @option params [String] :alarm_model_description
    #   <p>A description that tells you what the alarm model detects.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs that contain metadata for the alarm model. The tags help you
    #         manage the alarm model. For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html">Tagging your AWS IoT Events
    #           resources</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    #            <p>You can create up to 50 tags for one alarm model.</p>
    #
    # @option params [String] :key
    #   <p>An input attribute used as a key to create an alarm.
    #   AWS IoT Events routes <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html">inputs</a>
    #   associated with this key to the alarm.</p>
    #
    # @option params [Integer] :severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #
    # @option params [AlarmRule] :alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    #
    # @option params [AlarmNotification] :alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    #
    # @option params [AlarmEventActions] :alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    #
    # @option params [AlarmCapabilities] :alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    #
    # @return [Types::CreateAlarmModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alarm_model(
    #     alarm_model_name: 'alarmModelName', # required
    #     alarm_model_description: 'alarmModelDescription',
    #     role_arn: 'roleArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     key: 'key',
    #     severity: 1,
    #     alarm_rule: {
    #       simple_rule: {
    #         input_property: 'inputProperty', # required
    #         comparison_operator: 'GREATER', # required - accepts ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"]
    #         threshold: 'threshold' # required
    #       }
    #     }, # required
    #     alarm_notification: {
    #       notification_actions: [
    #         {
    #           action: {
    #             lambda_action: {
    #               function_arn: 'functionArn', # required
    #               payload: {
    #                 content_expression: 'contentExpression', # required
    #                 type: 'STRING' # required - accepts ["STRING", "JSON"]
    #               }
    #             }
    #           }, # required
    #           sms_configurations: [
    #             {
    #               sender_id: 'senderId',
    #               additional_message: 'additionalMessage',
    #               recipients: [
    #                 {
    #                   sso_identity: {
    #                     identity_store_id: 'identityStoreId', # required
    #                     user_id: 'userId'
    #                   }
    #                 }
    #               ] # required
    #             }
    #           ],
    #           email_configurations: [
    #             {
    #               from: 'from', # required
    #               content: {
    #                 subject: 'subject',
    #                 additional_message: 'additionalMessage'
    #               },
    #               recipients: {
    #               } # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     alarm_event_actions: {
    #       alarm_actions: [
    #         {
    #           sns: {
    #             target_arn: 'targetArn', # required
    #           },
    #           iot_topic_publish: {
    #             mqtt_topic: 'mqttTopic', # required
    #           },
    #           iot_events: {
    #             input_name: 'inputName', # required
    #           },
    #           sqs: {
    #             queue_url: 'queueUrl', # required
    #             use_base64: false,
    #           },
    #           firehose: {
    #             delivery_stream_name: 'deliveryStreamName', # required
    #             separator: 'separator',
    #           },
    #           dynamo_db: {
    #             hash_key_type: 'hashKeyType',
    #             hash_key_field: 'hashKeyField', # required
    #             hash_key_value: 'hashKeyValue', # required
    #             range_key_type: 'rangeKeyType',
    #             range_key_field: 'rangeKeyField',
    #             range_key_value: 'rangeKeyValue',
    #             operation: 'operation',
    #             payload_field: 'payloadField',
    #             table_name: 'tableName', # required
    #           },
    #           dynamo_d_bv2: {
    #             table_name: 'tableName', # required
    #           },
    #           iot_site_wise: {
    #             entry_id: 'entryId',
    #             asset_id: 'assetId',
    #             property_id: 'propertyId',
    #             property_alias: 'propertyAlias',
    #             property_value: {
    #               value: {
    #                 string_value: 'stringValue',
    #                 integer_value: 'integerValue',
    #                 double_value: 'doubleValue',
    #                 boolean_value: 'booleanValue'
    #               },
    #               timestamp: {
    #                 time_in_seconds: 'timeInSeconds', # required
    #                 offset_in_nanos: 'offsetInNanos'
    #               },
    #               quality: 'quality'
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     alarm_capabilities: {
    #       initialization_configuration: {
    #         disabled_on_initialization: false # required
    #       },
    #       acknowledge_flow: {
    #         enabled: false # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAlarmModelOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.alarm_model_arn #=> String
    #   resp.data.alarm_model_version #=> String
    #   resp.data.last_update_time #=> Time
    #   resp.data.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #
    def create_alarm_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAlarmModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAlarmModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlarmModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceAlreadyExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateAlarmModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlarmModel,
        stubs: @stubs,
        params_class: Params::CreateAlarmModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alarm_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a detector model.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDetectorModelInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model.</p>
    #
    # @option params [DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how the detectors operate.</p>
    #
    # @option params [String] :detector_model_description
    #   <p>A brief description of the detector model.</p>
    #
    # @option params [String] :key
    #   <p>The input attribute key used to identify a device or system to create a detector (an
    #         instance of the detector model) and then to route each input received to the appropriate
    #         detector (instance). This parameter uses a JSON-path expression in the message payload of each
    #         input to specify the attribute-value pair that is used to identify the device associated with
    #         the input.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the detector model.</p>
    #
    # @option params [String] :evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #
    # @return [Types::CreateDetectorModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector_model(
    #     detector_model_name: 'detectorModelName', # required
    #     detector_model_definition: {
    #       states: [
    #         {
    #           state_name: 'stateName', # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition',
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: 'variableName', # required
    #                       value: 'value' # required
    #                     },
    #                     sns: {
    #                       target_arn: 'targetArn', # required
    #                       payload: {
    #                         content_expression: 'contentExpression', # required
    #                         type: 'STRING' # required - accepts ["STRING", "JSON"]
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: 'mqttTopic', # required
    #                     },
    #                     set_timer: {
    #                       timer_name: 'timerName', # required
    #                       seconds: 1,
    #                       duration_expression: 'durationExpression'
    #                     },
    #                     clear_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     lambda: {
    #                       function_arn: 'functionArn', # required
    #                     },
    #                     iot_events: {
    #                       input_name: 'inputName', # required
    #                     },
    #                     sqs: {
    #                       queue_url: 'queueUrl', # required
    #                       use_base64: false,
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: 'deliveryStreamName', # required
    #                       separator: 'separator',
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: 'hashKeyType',
    #                       hash_key_field: 'hashKeyField', # required
    #                       hash_key_value: 'hashKeyValue', # required
    #                       range_key_type: 'rangeKeyType',
    #                       range_key_field: 'rangeKeyField',
    #                       range_key_value: 'rangeKeyValue',
    #                       operation: 'operation',
    #                       payload_field: 'payloadField',
    #                       table_name: 'tableName', # required
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: 'tableName', # required
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: 'entryId',
    #                       asset_id: 'assetId',
    #                       property_id: 'propertyId',
    #                       property_alias: 'propertyAlias',
    #                       property_value: {
    #                         value: {
    #                           string_value: 'stringValue',
    #                           integer_value: 'integerValue',
    #                           double_value: 'doubleValue',
    #                           boolean_value: 'booleanValue'
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: 'timeInSeconds', # required
    #                           offset_in_nanos: 'offsetInNanos'
    #                         },
    #                         quality: 'quality'
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition', # required
    #                 next_state: 'nextState' # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #           },
    #           on_exit: {
    #           }
    #         }
    #       ], # required
    #       initial_state_name: 'initialStateName' # required
    #     }, # required
    #     detector_model_description: 'detectorModelDescription',
    #     key: 'key',
    #     role_arn: 'roleArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     evaluation_method: 'BATCH' # accepts ["BATCH", "SERIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDetectorModelOutput
    #   resp.data.detector_model_configuration #=> Types::DetectorModelConfiguration
    #   resp.data.detector_model_configuration.detector_model_name #=> String
    #   resp.data.detector_model_configuration.detector_model_version #=> String
    #   resp.data.detector_model_configuration.detector_model_description #=> String
    #   resp.data.detector_model_configuration.detector_model_arn #=> String
    #   resp.data.detector_model_configuration.role_arn #=> String
    #   resp.data.detector_model_configuration.creation_time #=> Time
    #   resp.data.detector_model_configuration.last_update_time #=> Time
    #   resp.data.detector_model_configuration.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"]
    #   resp.data.detector_model_configuration.key #=> String
    #   resp.data.detector_model_configuration.evaluation_method #=> String, one of ["BATCH", "SERIAL"]
    #
    def create_detector_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDetectorModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDetectorModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDetectorModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceAlreadyExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateDetectorModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDetectorModel,
        stubs: @stubs,
        params_class: Params::CreateDetectorModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_detector_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an input.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInputInput}.
    #
    # @option params [String] :input_name
    #   <p>The name you want to give to the input.</p>
    #
    # @option params [String] :input_description
    #   <p>A brief description of the input.</p>
    #
    # @option params [InputDefinition] :input_definition
    #   <p>The definition of the input.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata that can be used to manage the input.</p>
    #
    # @return [Types::CreateInputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input(
    #     input_name: 'inputName', # required
    #     input_description: 'inputDescription',
    #     input_definition: {
    #       attributes: [
    #         {
    #           json_path: 'jsonPath' # required
    #         }
    #       ] # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInputOutput
    #   resp.data.input_configuration #=> Types::InputConfiguration
    #   resp.data.input_configuration.input_name #=> String
    #   resp.data.input_configuration.input_description #=> String
    #   resp.data.input_configuration.input_arn #=> String
    #   resp.data.input_configuration.creation_time #=> Time
    #   resp.data.input_configuration.last_update_time #=> Time
    #   resp.data.input_configuration.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING"]
    #
    def create_input(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateInput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInput,
        stubs: @stubs,
        params_class: Params::CreateInputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_input
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an alarm model. Any alarm instances that were created based on this alarm model
    #       are also deleted. This action can't be undone.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAlarmModelInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @return [Types::DeleteAlarmModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alarm_model(
    #     alarm_model_name: 'alarmModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAlarmModelOutput
    #
    def delete_alarm_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAlarmModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAlarmModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlarmModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteAlarmModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlarmModel,
        stubs: @stubs,
        params_class: Params::DeleteAlarmModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alarm_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a detector model. Any active instances of the detector model are also
    #       deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDetectorModelInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model to be deleted.</p>
    #
    # @return [Types::DeleteDetectorModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector_model(
    #     detector_model_name: 'detectorModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDetectorModelOutput
    #
    def delete_detector_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDetectorModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDetectorModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDetectorModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteDetectorModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDetectorModel,
        stubs: @stubs,
        params_class: Params::DeleteDetectorModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_detector_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an input.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInputInput}.
    #
    # @option params [String] :input_name
    #   <p>The name of the input to delete.</p>
    #
    # @return [Types::DeleteInputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input(
    #     input_name: 'inputName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInputOutput
    #
    def delete_input(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteInput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInput,
        stubs: @stubs,
        params_class: Params::DeleteInputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_input
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an alarm model. If you don't specify a value for the
    #         <code>alarmModelVersion</code> parameter, the latest version is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAlarmModelInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @option params [String] :alarm_model_version
    #   <p>The version of the alarm model.</p>
    #
    # @return [Types::DescribeAlarmModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarm_model(
    #     alarm_model_name: 'alarmModelName', # required
    #     alarm_model_version: 'alarmModelVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAlarmModelOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.alarm_model_arn #=> String
    #   resp.data.alarm_model_version #=> String
    #   resp.data.last_update_time #=> Time
    #   resp.data.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.alarm_model_name #=> String
    #   resp.data.alarm_model_description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.key #=> String
    #   resp.data.severity #=> Integer
    #   resp.data.alarm_rule #=> Types::AlarmRule
    #   resp.data.alarm_rule.simple_rule #=> Types::SimpleRule
    #   resp.data.alarm_rule.simple_rule.input_property #=> String
    #   resp.data.alarm_rule.simple_rule.comparison_operator #=> String, one of ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"]
    #   resp.data.alarm_rule.simple_rule.threshold #=> String
    #   resp.data.alarm_notification #=> Types::AlarmNotification
    #   resp.data.alarm_notification.notification_actions #=> Array<NotificationAction>
    #   resp.data.alarm_notification.notification_actions[0] #=> Types::NotificationAction
    #   resp.data.alarm_notification.notification_actions[0].action #=> Types::NotificationTargetActions
    #   resp.data.alarm_notification.notification_actions[0].action.lambda_action #=> Types::LambdaAction
    #   resp.data.alarm_notification.notification_actions[0].action.lambda_action.function_arn #=> String
    #   resp.data.alarm_notification.notification_actions[0].action.lambda_action.payload #=> Types::Payload
    #   resp.data.alarm_notification.notification_actions[0].action.lambda_action.payload.content_expression #=> String
    #   resp.data.alarm_notification.notification_actions[0].action.lambda_action.payload.type #=> String, one of ["STRING", "JSON"]
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations #=> Array<SMSConfiguration>
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0] #=> Types::SMSConfiguration
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].sender_id #=> String
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].additional_message #=> String
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].recipients #=> Array<RecipientDetail>
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].recipients[0] #=> Types::RecipientDetail
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].recipients[0].sso_identity #=> Types::SSOIdentity
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].recipients[0].sso_identity.identity_store_id #=> String
    #   resp.data.alarm_notification.notification_actions[0].sms_configurations[0].recipients[0].sso_identity.user_id #=> String
    #   resp.data.alarm_notification.notification_actions[0].email_configurations #=> Array<EmailConfiguration>
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0] #=> Types::EmailConfiguration
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].from #=> String
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].content #=> Types::EmailContent
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].content.subject #=> String
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].content.additional_message #=> String
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].recipients #=> Types::EmailRecipients
    #   resp.data.alarm_notification.notification_actions[0].email_configurations[0].recipients.to #=> Array<RecipientDetail>
    #   resp.data.alarm_event_actions #=> Types::AlarmEventActions
    #   resp.data.alarm_event_actions.alarm_actions #=> Array<AlarmAction>
    #   resp.data.alarm_event_actions.alarm_actions[0] #=> Types::AlarmAction
    #   resp.data.alarm_event_actions.alarm_actions[0].sns #=> Types::SNSTopicPublishAction
    #   resp.data.alarm_event_actions.alarm_actions[0].sns.target_arn #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].sns.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_topic_publish #=> Types::IotTopicPublishAction
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_topic_publish.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].lambda #=> Types::LambdaAction
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_events #=> Types::IotEventsAction
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_events.input_name #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_events.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].sqs #=> Types::SqsAction
    #   resp.data.alarm_event_actions.alarm_actions[0].sqs.queue_url #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].sqs.use_base64 #=> Boolean
    #   resp.data.alarm_event_actions.alarm_actions[0].sqs.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].firehose #=> Types::FirehoseAction
    #   resp.data.alarm_event_actions.alarm_actions[0].firehose.delivery_stream_name #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].firehose.separator #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].firehose.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db #=> Types::DynamoDBAction
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.hash_key_type #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.hash_key_field #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.hash_key_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.range_key_type #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.range_key_field #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.range_key_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.operation #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.payload_field #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.table_name #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_db.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_d_bv2 #=> Types::DynamoDBv2Action
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_d_bv2.table_name #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].dynamo_d_bv2.payload #=> Types::Payload
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise #=> Types::IotSiteWiseAction
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.entry_id #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.asset_id #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_id #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_alias #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value #=> Types::AssetPropertyValue
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.value #=> Types::AssetPropertyVariant
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.value.string_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.value.integer_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.value.double_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.value.boolean_value #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.timestamp #=> Types::AssetPropertyTimestamp
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.timestamp.time_in_seconds #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.timestamp.offset_in_nanos #=> String
    #   resp.data.alarm_event_actions.alarm_actions[0].iot_site_wise.property_value.quality #=> String
    #   resp.data.alarm_capabilities #=> Types::AlarmCapabilities
    #   resp.data.alarm_capabilities.initialization_configuration #=> Types::InitializationConfiguration
    #   resp.data.alarm_capabilities.initialization_configuration.disabled_on_initialization #=> Boolean
    #   resp.data.alarm_capabilities.acknowledge_flow #=> Types::AcknowledgeFlow
    #   resp.data.alarm_capabilities.acknowledge_flow.enabled #=> Boolean
    #
    def describe_alarm_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlarmModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlarmModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlarmModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeAlarmModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlarmModel,
        stubs: @stubs,
        params_class: Params::DescribeAlarmModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_alarm_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a detector model. If the <code>version</code> parameter is not specified,
    #       information about the latest version is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDetectorModelInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model.</p>
    #
    # @option params [String] :detector_model_version
    #   <p>The version of the detector model.</p>
    #
    # @return [Types::DescribeDetectorModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector_model(
    #     detector_model_name: 'detectorModelName', # required
    #     detector_model_version: 'detectorModelVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDetectorModelOutput
    #   resp.data.detector_model #=> Types::DetectorModel
    #   resp.data.detector_model.detector_model_definition #=> Types::DetectorModelDefinition
    #   resp.data.detector_model.detector_model_definition.states #=> Array<State>
    #   resp.data.detector_model.detector_model_definition.states[0] #=> Types::State
    #   resp.data.detector_model.detector_model_definition.states[0].state_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input #=> Types::OnInputLifecycle
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events #=> Array<Event>
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0] #=> Types::Event
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].event_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].condition #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions #=> Array<Action>
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0] #=> Types::Action
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_variable #=> Types::SetVariableAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_variable.variable_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_variable.value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns #=> Types::SNSTopicPublishAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns.target_arn #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns.payload.content_expression #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns.payload.type #=> String, one of ["STRING", "JSON"]
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_topic_publish #=> Types::IotTopicPublishAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_topic_publish.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer #=> Types::SetTimerAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer.timer_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer.seconds #=> Integer
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer.duration_expression #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].clear_timer #=> Types::ClearTimerAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].clear_timer.timer_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].reset_timer #=> Types::ResetTimerAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].reset_timer.timer_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].lambda #=> Types::LambdaAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].lambda.function_arn #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].lambda.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_events #=> Types::IotEventsAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_events.input_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_events.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sqs #=> Types::SqsAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sqs.queue_url #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sqs.use_base64 #=> Boolean
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sqs.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].firehose #=> Types::FirehoseAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].firehose.delivery_stream_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].firehose.separator #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].firehose.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db #=> Types::DynamoDBAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.hash_key_type #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.hash_key_field #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.hash_key_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.range_key_type #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.range_key_field #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.range_key_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.operation #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.payload_field #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.table_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_db.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_d_bv2 #=> Types::DynamoDBv2Action
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_d_bv2.table_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].dynamo_d_bv2.payload #=> Types::Payload
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise #=> Types::IotSiteWiseAction
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.entry_id #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.asset_id #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_id #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_alias #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value #=> Types::AssetPropertyValue
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.value #=> Types::AssetPropertyVariant
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.value.string_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.value.integer_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.value.double_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.value.boolean_value #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.timestamp #=> Types::AssetPropertyTimestamp
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.timestamp.time_in_seconds #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.timestamp.offset_in_nanos #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_site_wise.property_value.quality #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events #=> Array<TransitionEvent>
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events[0] #=> Types::TransitionEvent
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events[0].event_name #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events[0].condition #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions #=> Array<Action>
    #   resp.data.detector_model.detector_model_definition.states[0].on_input.transition_events[0].next_state #=> String
    #   resp.data.detector_model.detector_model_definition.states[0].on_enter #=> Types::OnEnterLifecycle
    #   resp.data.detector_model.detector_model_definition.states[0].on_enter.events #=> Array<Event>
    #   resp.data.detector_model.detector_model_definition.states[0].on_exit #=> Types::OnExitLifecycle
    #   resp.data.detector_model.detector_model_definition.states[0].on_exit.events #=> Array<Event>
    #   resp.data.detector_model.detector_model_definition.initial_state_name #=> String
    #   resp.data.detector_model.detector_model_configuration #=> Types::DetectorModelConfiguration
    #   resp.data.detector_model.detector_model_configuration.detector_model_name #=> String
    #   resp.data.detector_model.detector_model_configuration.detector_model_version #=> String
    #   resp.data.detector_model.detector_model_configuration.detector_model_description #=> String
    #   resp.data.detector_model.detector_model_configuration.detector_model_arn #=> String
    #   resp.data.detector_model.detector_model_configuration.role_arn #=> String
    #   resp.data.detector_model.detector_model_configuration.creation_time #=> Time
    #   resp.data.detector_model.detector_model_configuration.last_update_time #=> Time
    #   resp.data.detector_model.detector_model_configuration.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"]
    #   resp.data.detector_model.detector_model_configuration.key #=> String
    #   resp.data.detector_model.detector_model_configuration.evaluation_method #=> String, one of ["BATCH", "SERIAL"]
    #
    def describe_detector_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDetectorModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDetectorModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDetectorModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeDetectorModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDetectorModel,
        stubs: @stubs,
        params_class: Params::DescribeDetectorModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_detector_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves runtime information about a detector model analysis.</p>
    #          <note>
    #             <p>After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeDetectorModelAnalysisInput}.
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    #
    # @return [Types::DescribeDetectorModelAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector_model_analysis(
    #     analysis_id: 'analysisId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDetectorModelAnalysisOutput
    #   resp.data.status #=> String, one of ["RUNNING", "COMPLETE", "FAILED"]
    #
    def describe_detector_model_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDetectorModelAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDetectorModelAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDetectorModelAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeDetectorModelAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDetectorModelAnalysis,
        stubs: @stubs,
        params_class: Params::DescribeDetectorModelAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_detector_model_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an input.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInputInput}.
    #
    # @option params [String] :input_name
    #   <p>The name of the input.</p>
    #
    # @return [Types::DescribeInputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input(
    #     input_name: 'inputName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInputOutput
    #   resp.data.input #=> Types::Input
    #   resp.data.input.input_configuration #=> Types::InputConfiguration
    #   resp.data.input.input_configuration.input_name #=> String
    #   resp.data.input.input_configuration.input_description #=> String
    #   resp.data.input.input_configuration.input_arn #=> String
    #   resp.data.input.input_configuration.creation_time #=> Time
    #   resp.data.input.input_configuration.last_update_time #=> Time
    #   resp.data.input.input_configuration.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING"]
    #   resp.data.input.input_definition #=> Types::InputDefinition
    #   resp.data.input.input_definition.attributes #=> Array<Attribute>
    #   resp.data.input.input_definition.attributes[0] #=> Types::Attribute
    #   resp.data.input.input_definition.attributes[0].json_path #=> String
    #
    def describe_input(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeInput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInput,
        stubs: @stubs,
        params_class: Params::DescribeInputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_input
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current settings of the AWS IoT Events logging options.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoggingOptionsInput}.
    #
    # @return [Types::DescribeLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoggingOptionsOutput
    #   resp.data.logging_options #=> Types::LoggingOptions
    #   resp.data.logging_options.role_arn #=> String
    #   resp.data.logging_options.level #=> String, one of ["ERROR", "INFO", "DEBUG"]
    #   resp.data.logging_options.enabled #=> Boolean
    #   resp.data.logging_options.detector_debug_options #=> Array<DetectorDebugOption>
    #   resp.data.logging_options.detector_debug_options[0] #=> Types::DetectorDebugOption
    #   resp.data.logging_options.detector_debug_options[0].detector_model_name #=> String
    #   resp.data.logging_options.detector_debug_options[0].key_value #=> String
    #
    def describe_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::DescribeLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoggingOptions,
        stubs: @stubs,
        params_class: Params::DescribeLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves one or more analysis results of the detector model.</p>
    #          <note>
    #             <p>After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDetectorModelAnalysisResultsInput}.
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::GetDetectorModelAnalysisResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector_model_analysis_results(
    #     analysis_id: 'analysisId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDetectorModelAnalysisResultsOutput
    #   resp.data.analysis_results #=> Array<AnalysisResult>
    #   resp.data.analysis_results[0] #=> Types::AnalysisResult
    #   resp.data.analysis_results[0].type #=> String
    #   resp.data.analysis_results[0].level #=> String, one of ["INFO", "WARNING", "ERROR"]
    #   resp.data.analysis_results[0].message #=> String
    #   resp.data.analysis_results[0].locations #=> Array<AnalysisResultLocation>
    #   resp.data.analysis_results[0].locations[0] #=> Types::AnalysisResultLocation
    #   resp.data.analysis_results[0].locations[0].path #=> String
    #   resp.data.next_token #=> String
    #
    def get_detector_model_analysis_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDetectorModelAnalysisResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDetectorModelAnalysisResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDetectorModelAnalysisResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetDetectorModelAnalysisResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDetectorModelAnalysisResults,
        stubs: @stubs,
        params_class: Params::GetDetectorModelAnalysisResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_detector_model_analysis_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions of an alarm model. The operation returns only the metadata
    #       associated with each alarm model version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlarmModelVersionsInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListAlarmModelVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarm_model_versions(
    #     alarm_model_name: 'alarmModelName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlarmModelVersionsOutput
    #   resp.data.alarm_model_version_summaries #=> Array<AlarmModelVersionSummary>
    #   resp.data.alarm_model_version_summaries[0] #=> Types::AlarmModelVersionSummary
    #   resp.data.alarm_model_version_summaries[0].alarm_model_name #=> String
    #   resp.data.alarm_model_version_summaries[0].alarm_model_arn #=> String
    #   resp.data.alarm_model_version_summaries[0].alarm_model_version #=> String
    #   resp.data.alarm_model_version_summaries[0].role_arn #=> String
    #   resp.data.alarm_model_version_summaries[0].creation_time #=> Time
    #   resp.data.alarm_model_version_summaries[0].last_update_time #=> Time
    #   resp.data.alarm_model_version_summaries[0].status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #   resp.data.alarm_model_version_summaries[0].status_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_alarm_model_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlarmModelVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlarmModelVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlarmModelVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListAlarmModelVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlarmModelVersions,
        stubs: @stubs,
        params_class: Params::ListAlarmModelVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alarm_model_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the alarm models that you created. The operation returns only the metadata
    #       associated with each alarm model.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlarmModelsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListAlarmModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarm_models(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlarmModelsOutput
    #   resp.data.alarm_model_summaries #=> Array<AlarmModelSummary>
    #   resp.data.alarm_model_summaries[0] #=> Types::AlarmModelSummary
    #   resp.data.alarm_model_summaries[0].creation_time #=> Time
    #   resp.data.alarm_model_summaries[0].alarm_model_description #=> String
    #   resp.data.alarm_model_summaries[0].alarm_model_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_alarm_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlarmModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlarmModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlarmModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListAlarmModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlarmModels,
        stubs: @stubs,
        params_class: Params::ListAlarmModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alarm_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions of a detector model. Only the metadata associated with each
    #       detector model version is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectorModelVersionsInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose versions are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDetectorModelVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detector_model_versions(
    #     detector_model_name: 'detectorModelName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectorModelVersionsOutput
    #   resp.data.detector_model_version_summaries #=> Array<DetectorModelVersionSummary>
    #   resp.data.detector_model_version_summaries[0] #=> Types::DetectorModelVersionSummary
    #   resp.data.detector_model_version_summaries[0].detector_model_name #=> String
    #   resp.data.detector_model_version_summaries[0].detector_model_version #=> String
    #   resp.data.detector_model_version_summaries[0].detector_model_arn #=> String
    #   resp.data.detector_model_version_summaries[0].role_arn #=> String
    #   resp.data.detector_model_version_summaries[0].creation_time #=> Time
    #   resp.data.detector_model_version_summaries[0].last_update_time #=> Time
    #   resp.data.detector_model_version_summaries[0].status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"]
    #   resp.data.detector_model_version_summaries[0].evaluation_method #=> String, one of ["BATCH", "SERIAL"]
    #   resp.data.next_token #=> String
    #
    def list_detector_model_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectorModelVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectorModelVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectorModelVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListDetectorModelVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectorModelVersions,
        stubs: @stubs,
        params_class: Params::ListDetectorModelVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detector_model_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the detector models you have created. Only the metadata associated with each
    #       detector model is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectorModelsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDetectorModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detector_models(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectorModelsOutput
    #   resp.data.detector_model_summaries #=> Array<DetectorModelSummary>
    #   resp.data.detector_model_summaries[0] #=> Types::DetectorModelSummary
    #   resp.data.detector_model_summaries[0].detector_model_name #=> String
    #   resp.data.detector_model_summaries[0].detector_model_description #=> String
    #   resp.data.detector_model_summaries[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_detector_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectorModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectorModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectorModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListDetectorModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectorModels,
        stubs: @stubs,
        params_class: Params::ListDetectorModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detector_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists one or more input routings.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListInputRoutingsInput}.
    #
    # @option params [InputIdentifier] :input_identifier
    #   <p>
    #         The identifer of the routed input.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to be returned per request.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         The token that you can use to return the next set of results.
    #       </p>
    #
    # @return [Types::ListInputRoutingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_routings(
    #     input_identifier: {
    #       iot_events_input_identifier: {
    #         input_name: 'inputName' # required
    #       },
    #       iot_site_wise_input_identifier: {
    #         iot_site_wise_asset_model_property_identifier: {
    #           asset_model_id: 'assetModelId', # required
    #           property_id: 'propertyId' # required
    #         }
    #       }
    #     }, # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInputRoutingsOutput
    #   resp.data.routed_resources #=> Array<RoutedResource>
    #   resp.data.routed_resources[0] #=> Types::RoutedResource
    #   resp.data.routed_resources[0].name #=> String
    #   resp.data.routed_resources[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_input_routings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInputRoutingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInputRoutingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInputRoutings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListInputRoutings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInputRoutings,
        stubs: @stubs,
        params_class: Params::ListInputRoutingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_input_routings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the inputs you have created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInputsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListInputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inputs(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInputsOutput
    #   resp.data.input_summaries #=> Array<InputSummary>
    #   resp.data.input_summaries[0] #=> Types::InputSummary
    #   resp.data.input_summaries[0].input_name #=> String
    #   resp.data.input_summaries[0].input_description #=> String
    #   resp.data.input_summaries[0].input_arn #=> String
    #   resp.data.input_summaries[0].creation_time #=> Time
    #   resp.data.input_summaries[0].last_update_time #=> Time
    #   resp.data.input_summaries[0].status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING"]
    #   resp.data.next_token #=> String
    #
    def list_inputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListInputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInputs,
        stubs: @stubs,
        params_class: Params::ListInputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_inputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
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

    # <p>Sets or updates the AWS IoT Events logging options.</p>
    #          <p>If you update the value of any <code>loggingOptions</code> field, it takes up to one
    #       minute for the change to take effect. If you change the policy attached to the role you
    #       specified in the <code>roleArn</code> field (for example, to correct an invalid policy), it
    #       takes up to five minutes for that change to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLoggingOptionsInput}.
    #
    # @option params [LoggingOptions] :logging_options
    #   <p>The new values of the AWS IoT Events logging options.</p>
    #
    # @return [Types::PutLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options(
    #     logging_options: {
    #       role_arn: 'roleArn', # required
    #       level: 'ERROR', # required - accepts ["ERROR", "INFO", "DEBUG"]
    #       enabled: false, # required
    #       detector_debug_options: [
    #         {
    #           detector_model_name: 'detectorModelName', # required
    #           key_value: 'keyValue'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLoggingOptionsOutput
    #
    def put_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLoggingOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ServiceUnavailableException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::PutLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLoggingOptions,
        stubs: @stubs,
        params_class: Params::PutLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs an analysis of your detector model. For more information,
    #       see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html">Troubleshooting a detector model</a>
    #       in the <i>AWS IoT Events Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDetectorModelAnalysisInput}.
    #
    # @option params [DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    #
    # @return [Types::StartDetectorModelAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_detector_model_analysis(
    #     detector_model_definition: {
    #       states: [
    #         {
    #           state_name: 'stateName', # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition',
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: 'variableName', # required
    #                       value: 'value' # required
    #                     },
    #                     sns: {
    #                       target_arn: 'targetArn', # required
    #                       payload: {
    #                         content_expression: 'contentExpression', # required
    #                         type: 'STRING' # required - accepts ["STRING", "JSON"]
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: 'mqttTopic', # required
    #                     },
    #                     set_timer: {
    #                       timer_name: 'timerName', # required
    #                       seconds: 1,
    #                       duration_expression: 'durationExpression'
    #                     },
    #                     clear_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     lambda: {
    #                       function_arn: 'functionArn', # required
    #                     },
    #                     iot_events: {
    #                       input_name: 'inputName', # required
    #                     },
    #                     sqs: {
    #                       queue_url: 'queueUrl', # required
    #                       use_base64: false,
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: 'deliveryStreamName', # required
    #                       separator: 'separator',
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: 'hashKeyType',
    #                       hash_key_field: 'hashKeyField', # required
    #                       hash_key_value: 'hashKeyValue', # required
    #                       range_key_type: 'rangeKeyType',
    #                       range_key_field: 'rangeKeyField',
    #                       range_key_value: 'rangeKeyValue',
    #                       operation: 'operation',
    #                       payload_field: 'payloadField',
    #                       table_name: 'tableName', # required
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: 'tableName', # required
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: 'entryId',
    #                       asset_id: 'assetId',
    #                       property_id: 'propertyId',
    #                       property_alias: 'propertyAlias',
    #                       property_value: {
    #                         value: {
    #                           string_value: 'stringValue',
    #                           integer_value: 'integerValue',
    #                           double_value: 'doubleValue',
    #                           boolean_value: 'booleanValue'
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: 'timeInSeconds', # required
    #                           offset_in_nanos: 'offsetInNanos'
    #                         },
    #                         quality: 'quality'
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition', # required
    #                 next_state: 'nextState' # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #           },
    #           on_exit: {
    #           }
    #         }
    #       ], # required
    #       initial_state_name: 'initialStateName' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDetectorModelAnalysisOutput
    #   resp.data.analysis_id #=> String
    #
    def start_detector_model_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDetectorModelAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDetectorModelAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDetectorModelAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartDetectorModelAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDetectorModelAnalysis,
        stubs: @stubs,
        params_class: Params::StartDetectorModelAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_detector_model_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to
    #       manage a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
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
    #         value: 'value' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
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

    # <p>Removes the given tags (metadata) from the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
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

    # <p>Updates an alarm model. Any alarms that were created based on the previous version are
    #       deleted and then created again as new data arrives.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAlarmModelInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @option params [String] :alarm_model_description
    #   <p>The description of the alarm model.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #
    # @option params [Integer] :severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #
    # @option params [AlarmRule] :alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    #
    # @option params [AlarmNotification] :alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    #
    # @option params [AlarmEventActions] :alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    #
    # @option params [AlarmCapabilities] :alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    #
    # @return [Types::UpdateAlarmModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alarm_model(
    #     alarm_model_name: 'alarmModelName', # required
    #     alarm_model_description: 'alarmModelDescription',
    #     role_arn: 'roleArn', # required
    #     severity: 1,
    #     alarm_rule: {
    #       simple_rule: {
    #         input_property: 'inputProperty', # required
    #         comparison_operator: 'GREATER', # required - accepts ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"]
    #         threshold: 'threshold' # required
    #       }
    #     }, # required
    #     alarm_notification: {
    #       notification_actions: [
    #         {
    #           action: {
    #             lambda_action: {
    #               function_arn: 'functionArn', # required
    #               payload: {
    #                 content_expression: 'contentExpression', # required
    #                 type: 'STRING' # required - accepts ["STRING", "JSON"]
    #               }
    #             }
    #           }, # required
    #           sms_configurations: [
    #             {
    #               sender_id: 'senderId',
    #               additional_message: 'additionalMessage',
    #               recipients: [
    #                 {
    #                   sso_identity: {
    #                     identity_store_id: 'identityStoreId', # required
    #                     user_id: 'userId'
    #                   }
    #                 }
    #               ] # required
    #             }
    #           ],
    #           email_configurations: [
    #             {
    #               from: 'from', # required
    #               content: {
    #                 subject: 'subject',
    #                 additional_message: 'additionalMessage'
    #               },
    #               recipients: {
    #               } # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     alarm_event_actions: {
    #       alarm_actions: [
    #         {
    #           sns: {
    #             target_arn: 'targetArn', # required
    #           },
    #           iot_topic_publish: {
    #             mqtt_topic: 'mqttTopic', # required
    #           },
    #           iot_events: {
    #             input_name: 'inputName', # required
    #           },
    #           sqs: {
    #             queue_url: 'queueUrl', # required
    #             use_base64: false,
    #           },
    #           firehose: {
    #             delivery_stream_name: 'deliveryStreamName', # required
    #             separator: 'separator',
    #           },
    #           dynamo_db: {
    #             hash_key_type: 'hashKeyType',
    #             hash_key_field: 'hashKeyField', # required
    #             hash_key_value: 'hashKeyValue', # required
    #             range_key_type: 'rangeKeyType',
    #             range_key_field: 'rangeKeyField',
    #             range_key_value: 'rangeKeyValue',
    #             operation: 'operation',
    #             payload_field: 'payloadField',
    #             table_name: 'tableName', # required
    #           },
    #           dynamo_d_bv2: {
    #             table_name: 'tableName', # required
    #           },
    #           iot_site_wise: {
    #             entry_id: 'entryId',
    #             asset_id: 'assetId',
    #             property_id: 'propertyId',
    #             property_alias: 'propertyAlias',
    #             property_value: {
    #               value: {
    #                 string_value: 'stringValue',
    #                 integer_value: 'integerValue',
    #                 double_value: 'doubleValue',
    #                 boolean_value: 'booleanValue'
    #               },
    #               timestamp: {
    #                 time_in_seconds: 'timeInSeconds', # required
    #                 offset_in_nanos: 'offsetInNanos'
    #               },
    #               quality: 'quality'
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     alarm_capabilities: {
    #       initialization_configuration: {
    #         disabled_on_initialization: false # required
    #       },
    #       acknowledge_flow: {
    #         enabled: false # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAlarmModelOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.alarm_model_arn #=> String
    #   resp.data.alarm_model_version #=> String
    #   resp.data.last_update_time #=> Time
    #   resp.data.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #
    def update_alarm_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAlarmModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAlarmModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAlarmModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateAlarmModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAlarmModel,
        stubs: @stubs,
        params_class: Params::UpdateAlarmModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_alarm_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a detector model. Detectors (instances) spawned by the previous version are
    #       deleted and then re-created as new inputs arrive.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDetectorModelInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model that is updated.</p>
    #
    # @option params [DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    #
    # @option params [String] :detector_model_description
    #   <p>A brief description of the detector model.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    #
    # @option params [String] :evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #
    # @return [Types::UpdateDetectorModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_model(
    #     detector_model_name: 'detectorModelName', # required
    #     detector_model_definition: {
    #       states: [
    #         {
    #           state_name: 'stateName', # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition',
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: 'variableName', # required
    #                       value: 'value' # required
    #                     },
    #                     sns: {
    #                       target_arn: 'targetArn', # required
    #                       payload: {
    #                         content_expression: 'contentExpression', # required
    #                         type: 'STRING' # required - accepts ["STRING", "JSON"]
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: 'mqttTopic', # required
    #                     },
    #                     set_timer: {
    #                       timer_name: 'timerName', # required
    #                       seconds: 1,
    #                       duration_expression: 'durationExpression'
    #                     },
    #                     clear_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: 'timerName' # required
    #                     },
    #                     lambda: {
    #                       function_arn: 'functionArn', # required
    #                     },
    #                     iot_events: {
    #                       input_name: 'inputName', # required
    #                     },
    #                     sqs: {
    #                       queue_url: 'queueUrl', # required
    #                       use_base64: false,
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: 'deliveryStreamName', # required
    #                       separator: 'separator',
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: 'hashKeyType',
    #                       hash_key_field: 'hashKeyField', # required
    #                       hash_key_value: 'hashKeyValue', # required
    #                       range_key_type: 'rangeKeyType',
    #                       range_key_field: 'rangeKeyField',
    #                       range_key_value: 'rangeKeyValue',
    #                       operation: 'operation',
    #                       payload_field: 'payloadField',
    #                       table_name: 'tableName', # required
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: 'tableName', # required
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: 'entryId',
    #                       asset_id: 'assetId',
    #                       property_id: 'propertyId',
    #                       property_alias: 'propertyAlias',
    #                       property_value: {
    #                         value: {
    #                           string_value: 'stringValue',
    #                           integer_value: 'integerValue',
    #                           double_value: 'doubleValue',
    #                           boolean_value: 'booleanValue'
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: 'timeInSeconds', # required
    #                           offset_in_nanos: 'offsetInNanos'
    #                         },
    #                         quality: 'quality'
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: 'eventName', # required
    #                 condition: 'condition', # required
    #                 next_state: 'nextState' # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #           },
    #           on_exit: {
    #           }
    #         }
    #       ], # required
    #       initial_state_name: 'initialStateName' # required
    #     }, # required
    #     detector_model_description: 'detectorModelDescription',
    #     role_arn: 'roleArn', # required
    #     evaluation_method: 'BATCH' # accepts ["BATCH", "SERIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDetectorModelOutput
    #   resp.data.detector_model_configuration #=> Types::DetectorModelConfiguration
    #   resp.data.detector_model_configuration.detector_model_name #=> String
    #   resp.data.detector_model_configuration.detector_model_version #=> String
    #   resp.data.detector_model_configuration.detector_model_description #=> String
    #   resp.data.detector_model_configuration.detector_model_arn #=> String
    #   resp.data.detector_model_configuration.role_arn #=> String
    #   resp.data.detector_model_configuration.creation_time #=> Time
    #   resp.data.detector_model_configuration.last_update_time #=> Time
    #   resp.data.detector_model_configuration.status #=> String, one of ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"]
    #   resp.data.detector_model_configuration.key #=> String
    #   resp.data.detector_model_configuration.evaluation_method #=> String, one of ["BATCH", "SERIAL"]
    #
    def update_detector_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDetectorModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDetectorModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDetectorModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateDetectorModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDetectorModel,
        stubs: @stubs,
        params_class: Params::UpdateDetectorModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_detector_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an input.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInputInput}.
    #
    # @option params [String] :input_name
    #   <p>The name of the input you want to update.</p>
    #
    # @option params [String] :input_description
    #   <p>A brief description of the input.</p>
    #
    # @option params [InputDefinition] :input_definition
    #   <p>The definition of the input.</p>
    #
    # @return [Types::UpdateInputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input(
    #     input_name: 'inputName', # required
    #     input_description: 'inputDescription',
    #     input_definition: {
    #       attributes: [
    #         {
    #           json_path: 'jsonPath' # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInputOutput
    #   resp.data.input_configuration #=> Types::InputConfiguration
    #   resp.data.input_configuration.input_name #=> String
    #   resp.data.input_configuration.input_description #=> String
    #   resp.data.input_configuration.input_arn #=> String
    #   resp.data.input_configuration.creation_time #=> Time
    #   resp.data.input_configuration.last_update_time #=> Time
    #   resp.data.input_configuration.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING"]
    #
    def update_input(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateInput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInput,
        stubs: @stubs,
        params_class: Params::UpdateInputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_input
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
