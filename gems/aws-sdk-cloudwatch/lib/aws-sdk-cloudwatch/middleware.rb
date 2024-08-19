# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CloudWatch
  # @api private
  module Middleware

    class DeleteAlarms
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteAlarmsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteAlarms
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_alarms, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteAlarms,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteAlarms,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFound]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteAlarms,
          stub_error_classes: [Stubs::ResourceNotFound],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteAnomalyDetector
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteAnomalyDetectorInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteAnomalyDetector
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_anomaly_detector, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteAnomalyDetector,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteAnomalyDetector,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteAnomalyDetector,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteDashboards
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteDashboardsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteDashboards
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_dashboards, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteDashboards,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteDashboards,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DashboardNotFoundError, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteDashboards,
          stub_error_classes: [Stubs::DashboardNotFoundError, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteInsightRules,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteMetricStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteMetricStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteMetricStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_metric_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteMetricStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteMetricStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteMetricStream,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeAlarmHistory
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeAlarmHistoryInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeAlarmHistory
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_alarm_history, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeAlarmHistory,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeAlarmHistory,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeAlarmHistory,
          stub_error_classes: [Stubs::InvalidNextToken],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeAlarms
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeAlarmsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeAlarms
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_alarms, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeAlarms,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeAlarms,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeAlarms,
          stub_error_classes: [Stubs::InvalidNextToken],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeAlarmsForMetric
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeAlarmsForMetricInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeAlarmsForMetric
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_alarms_for_metric, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeAlarmsForMetric,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeAlarmsForMetric,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeAlarmsForMetric,
          stub_error_classes: [],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeAnomalyDetectors
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeAnomalyDetectorsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeAnomalyDetectors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_anomaly_detectors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeAnomalyDetectors,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeAnomalyDetectors,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeAnomalyDetectors,
          stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeInsightRules,
          stub_error_classes: [Stubs::InvalidNextToken],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableAlarmActions
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableAlarmActionsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableAlarmActions
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_alarm_actions, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableAlarmActions,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DisableAlarmActions,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DisableAlarmActions,
          stub_error_classes: [],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DisableInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DisableInsightRules,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableAlarmActions
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableAlarmActionsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableAlarmActions
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_alarm_actions, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableAlarmActions,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::EnableAlarmActions,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::EnableAlarmActions,
          stub_error_classes: [],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::EnableInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::EnableInsightRules,
          stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetDashboard
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetDashboardInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetDashboard
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_dashboard, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetDashboard,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetDashboard,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DashboardNotFoundError, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetDashboard,
          stub_error_classes: [Stubs::DashboardNotFoundError, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetInsightRuleReport
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetInsightRuleReportInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetInsightRuleReport
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_insight_rule_report, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetInsightRuleReport,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetInsightRuleReport,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetInsightRuleReport,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetMetricData
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetMetricDataInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetMetricData
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_metric_data, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetMetricData,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetMetricData,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetMetricData,
          stub_error_classes: [Stubs::InvalidNextToken],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetMetricStatistics
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetMetricStatisticsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetMetricStatistics
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_metric_statistics, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetMetricStatistics,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetMetricStatistics,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetMetricStatistics,
          stub_error_classes: [Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetMetricStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetMetricStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetMetricStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_metric_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetMetricStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetMetricStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetMetricStream,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetMetricWidgetImage
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetMetricWidgetImageInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetMetricWidgetImage
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_metric_widget_image, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetMetricWidgetImage,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetMetricWidgetImage,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetMetricWidgetImage,
          stub_error_classes: [],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDashboards
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListDashboardsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListDashboards
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_dashboards, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListDashboards,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListDashboards,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListDashboards,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListManagedInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListManagedInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListManagedInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_managed_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListManagedInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListManagedInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListManagedInsightRules,
          stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListMetricStreams
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListMetricStreamsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListMetricStreams
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_metric_streams, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListMetricStreams,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListMetricStreams,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidNextToken, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListMetricStreams,
          stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListMetrics
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListMetricsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListMetrics
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_metrics, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListMetrics,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListMetrics,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListMetrics,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListTagsForResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListTagsForResourceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListTagsForResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_tags_for_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListTagsForResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListTagsForResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListTagsForResource,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutAnomalyDetector
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutAnomalyDetectorInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutAnomalyDetector
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_anomaly_detector, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutAnomalyDetector,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutAnomalyDetector,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutAnomalyDetector,
          stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutCompositeAlarm
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutCompositeAlarmInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutCompositeAlarm
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_composite_alarm, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutCompositeAlarm,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutCompositeAlarm,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutCompositeAlarm,
          stub_error_classes: [Stubs::LimitExceededFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutDashboard
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutDashboardInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutDashboard
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_dashboard, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutDashboard,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutDashboard,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DashboardInvalidInputError, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutDashboard,
          stub_error_classes: [Stubs::DashboardInvalidInputError, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutInsightRule
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutInsightRuleInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutInsightRule
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_insight_rule, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutInsightRule,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutInsightRule,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutInsightRule,
          stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutManagedInsightRules
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutManagedInsightRulesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutManagedInsightRules
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_managed_insight_rules, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutManagedInsightRules,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutManagedInsightRules,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutManagedInsightRules,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutMetricAlarm
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutMetricAlarmInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutMetricAlarm
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_metric_alarm, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutMetricAlarm,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutMetricAlarm,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutMetricAlarm,
          stub_error_classes: [Stubs::LimitExceededFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutMetricData
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutMetricDataInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutMetricData
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_metric_data, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::RequestCompression,
          disable_request_compression: config.disable_request_compression,
          encodings: ['gzip'],
          request_min_compression_size_bytes: config.request_min_compression_size_bytes,
          streaming: false
        )
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutMetricData,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutMetricData,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InternalServiceFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutMetricData,
          stub_error_classes: [Stubs::InternalServiceFault, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutMetricStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutMetricStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutMetricStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_metric_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutMetricStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutMetricStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterCombinationException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutMetricStream,
          stub_error_classes: [Stubs::InvalidParameterCombinationException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class SetAlarmState
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::SetAlarmStateInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::SetAlarmState
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :set_alarm_state, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::SetAlarmState,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::SetAlarmState,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidFormatFault, Errors::ResourceNotFound]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::SetAlarmState,
          stub_error_classes: [Stubs::InvalidFormatFault, Stubs::ResourceNotFound],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartMetricStreams
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartMetricStreamsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartMetricStreams
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_metric_streams, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartMetricStreams,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartMetricStreams,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::StartMetricStreams,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopMetricStreams
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StopMetricStreamsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StopMetricStreams
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :stop_metric_streams, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StopMetricStreams,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StopMetricStreams,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::StopMetricStreams,
          stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class TagResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::TagResourceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :tag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::TagResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::TagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::TagResource,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UntagResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UntagResourceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UntagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :untag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UntagResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UntagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ResourceNotFoundException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UntagResource,
          stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
