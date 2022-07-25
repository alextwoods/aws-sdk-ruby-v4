# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IotDeviceAdvisor
  # An API client for IotSenateService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test capability for
  #             validating IoT devices during device software development. Device Advisor provides
  #             pre-built tests that you can use to validate IoT devices for reliable and secure
  #             connectivity with Amazon Web Services IoT Core before deploying devices to production. By using Device Advisor,
  #             you can confirm that your devices can connect to Amazon Web Services IoT Core, follow security
  #             best practices and, if applicable, receive software updates from IoT Device Management.
  #             You can also download signed qualification reports to submit to the Amazon Web Services Partner Network
  #             to get your device qualified for the Amazon Web Services Partner Device Catalog without the need to send
  #             your device in and wait for it to be tested.</p>
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
    def initialize(config = AWS::SDK::IotDeviceAdvisor::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Device Advisor test suite.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateSuiteDefinition</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSuiteDefinitionInput}.
    #
    # @option params [SuiteDefinitionConfiguration] :suite_definition_configuration
    #   <p>Creates a Device Advisor test suite with suite definition configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the suite definition.</p>
    #
    # @return [Types::CreateSuiteDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_suite_definition(
    #     suite_definition_configuration: {
    #       suite_definition_name: 'suiteDefinitionName',
    #       devices: [
    #         {
    #           thing_arn: 'thingArn',
    #           certificate_arn: 'certificateArn'
    #         }
    #       ],
    #       intended_for_qualification: false,
    #       root_group: 'rootGroup',
    #       device_permission_role_arn: 'devicePermissionRoleArn'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSuiteDefinitionOutput
    #   resp.data.suite_definition_id #=> String
    #   resp.data.suite_definition_arn #=> String
    #   resp.data.suite_definition_name #=> String
    #   resp.data.created_at #=> Time
    #
    def create_suite_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSuiteDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSuiteDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSuiteDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateSuiteDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSuiteDefinition,
        stubs: @stubs,
        params_class: Params::CreateSuiteDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_suite_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Device Advisor test suite.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteSuiteDefinition</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSuiteDefinitionInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to be deleted.</p>
    #
    # @return [Types::DeleteSuiteDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suite_definition(
    #     suite_definition_id: 'suiteDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSuiteDefinitionOutput
    #
    def delete_suite_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSuiteDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSuiteDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSuiteDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteSuiteDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSuiteDefinition,
        stubs: @stubs,
        params_class: Params::DeleteSuiteDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_suite_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an Device Advisor endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEndpointInput}.
    #
    # @option params [String] :thing_arn
    #   <p>The thing ARN of the device. This is an optional parameter.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The certificate ARN of the device. This is an optional parameter.</p>
    #
    # @return [Types::GetEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint(
    #     thing_arn: 'thingArn',
    #     certificate_arn: 'certificateArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEndpointOutput
    #   resp.data.endpoint #=> String
    #
    def get_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEndpoint,
        stubs: @stubs,
        params_class: Params::GetEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Device Advisor test suite.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteDefinition</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSuiteDefinitionInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to get.</p>
    #
    # @option params [String] :suite_definition_version
    #   <p>Suite definition version of the test suite to get.</p>
    #
    # @return [Types::GetSuiteDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_definition(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_definition_version: 'suiteDefinitionVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSuiteDefinitionOutput
    #   resp.data.suite_definition_id #=> String
    #   resp.data.suite_definition_arn #=> String
    #   resp.data.suite_definition_version #=> String
    #   resp.data.latest_version #=> String
    #   resp.data.suite_definition_configuration #=> Types::SuiteDefinitionConfiguration
    #   resp.data.suite_definition_configuration.suite_definition_name #=> String
    #   resp.data.suite_definition_configuration.devices #=> Array<DeviceUnderTest>
    #   resp.data.suite_definition_configuration.devices[0] #=> Types::DeviceUnderTest
    #   resp.data.suite_definition_configuration.devices[0].thing_arn #=> String
    #   resp.data.suite_definition_configuration.devices[0].certificate_arn #=> String
    #   resp.data.suite_definition_configuration.intended_for_qualification #=> Boolean
    #   resp.data.suite_definition_configuration.root_group #=> String
    #   resp.data.suite_definition_configuration.device_permission_role_arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_modified_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_suite_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSuiteDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSuiteDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSuiteDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSuiteDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSuiteDefinition,
        stubs: @stubs,
        params_class: Params::GetSuiteDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_suite_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Device Advisor test suite run.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteRun</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSuiteRunInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    #
    # @option params [String] :suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    #
    # @return [Types::GetSuiteRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_run(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_run_id: 'suiteRunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSuiteRunOutput
    #   resp.data.suite_definition_id #=> String
    #   resp.data.suite_definition_version #=> String
    #   resp.data.suite_run_id #=> String
    #   resp.data.suite_run_arn #=> String
    #   resp.data.suite_run_configuration #=> Types::SuiteRunConfiguration
    #   resp.data.suite_run_configuration.primary_device #=> Types::DeviceUnderTest
    #   resp.data.suite_run_configuration.primary_device.thing_arn #=> String
    #   resp.data.suite_run_configuration.primary_device.certificate_arn #=> String
    #   resp.data.suite_run_configuration.selected_test_list #=> Array<String>
    #   resp.data.suite_run_configuration.selected_test_list[0] #=> String
    #   resp.data.suite_run_configuration.parallel_run #=> Boolean
    #   resp.data.test_result #=> Types::TestResult
    #   resp.data.test_result.groups #=> Array<GroupResult>
    #   resp.data.test_result.groups[0] #=> Types::GroupResult
    #   resp.data.test_result.groups[0].group_id #=> String
    #   resp.data.test_result.groups[0].group_name #=> String
    #   resp.data.test_result.groups[0].tests #=> Array<TestCaseRun>
    #   resp.data.test_result.groups[0].tests[0] #=> Types::TestCaseRun
    #   resp.data.test_result.groups[0].tests[0].test_case_run_id #=> String
    #   resp.data.test_result.groups[0].tests[0].test_case_definition_id #=> String
    #   resp.data.test_result.groups[0].tests[0].test_case_definition_name #=> String
    #   resp.data.test_result.groups[0].tests[0].status #=> String, one of ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #   resp.data.test_result.groups[0].tests[0].start_time #=> Time
    #   resp.data.test_result.groups[0].tests[0].end_time #=> Time
    #   resp.data.test_result.groups[0].tests[0].log_url #=> String
    #   resp.data.test_result.groups[0].tests[0].warnings #=> String
    #   resp.data.test_result.groups[0].tests[0].failure #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.status #=> String, one of ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #   resp.data.error_reason #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_suite_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSuiteRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSuiteRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSuiteRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSuiteRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSuiteRun,
        stubs: @stubs,
        params_class: Params::GetSuiteRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_suite_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a report download link for a successful Device Advisor qualifying test suite run.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteRunReport</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSuiteRunReportInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #
    # @option params [String] :suite_run_id
    #   <p>Suite run ID of the test suite run.</p>
    #
    # @return [Types::GetSuiteRunReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_run_report(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_run_id: 'suiteRunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSuiteRunReportOutput
    #   resp.data.qualification_report_download_url #=> String
    #
    def get_suite_run_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSuiteRunReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSuiteRunReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSuiteRunReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSuiteRunReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSuiteRunReport,
        stubs: @stubs,
        params_class: Params::GetSuiteRunReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_suite_run_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Device Advisor test suites you have created.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSuiteDefinitions</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSuiteDefinitionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at once.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used to get the next set of results.</p>
    #
    # @return [Types::ListSuiteDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suite_definitions(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSuiteDefinitionsOutput
    #   resp.data.suite_definition_information_list #=> Array<SuiteDefinitionInformation>
    #   resp.data.suite_definition_information_list[0] #=> Types::SuiteDefinitionInformation
    #   resp.data.suite_definition_information_list[0].suite_definition_id #=> String
    #   resp.data.suite_definition_information_list[0].suite_definition_name #=> String
    #   resp.data.suite_definition_information_list[0].default_devices #=> Array<DeviceUnderTest>
    #   resp.data.suite_definition_information_list[0].default_devices[0] #=> Types::DeviceUnderTest
    #   resp.data.suite_definition_information_list[0].default_devices[0].thing_arn #=> String
    #   resp.data.suite_definition_information_list[0].default_devices[0].certificate_arn #=> String
    #   resp.data.suite_definition_information_list[0].intended_for_qualification #=> Boolean
    #   resp.data.suite_definition_information_list[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_suite_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSuiteDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSuiteDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSuiteDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListSuiteDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSuiteDefinitions,
        stubs: @stubs,
        params_class: Params::ListSuiteDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_suite_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists runs of the specified Device Advisor test suite. You can list all runs of the test
    #             suite, or the runs of a specific version of the test suite.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSuiteRuns</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSuiteRunsInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Lists the test suite runs of the specified test suite based on suite definition
    #               ID.</p>
    #
    # @option params [String] :suite_definition_version
    #   <p>Must be passed along with <code>suiteDefinitionId</code>. Lists the test suite runs of
    #               the specified test suite based on suite definition version.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at once.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    #
    # @return [Types::ListSuiteRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suite_runs(
    #     suite_definition_id: 'suiteDefinitionId',
    #     suite_definition_version: 'suiteDefinitionVersion',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSuiteRunsOutput
    #   resp.data.suite_runs_list #=> Array<SuiteRunInformation>
    #   resp.data.suite_runs_list[0] #=> Types::SuiteRunInformation
    #   resp.data.suite_runs_list[0].suite_definition_id #=> String
    #   resp.data.suite_runs_list[0].suite_definition_version #=> String
    #   resp.data.suite_runs_list[0].suite_definition_name #=> String
    #   resp.data.suite_runs_list[0].suite_run_id #=> String
    #   resp.data.suite_runs_list[0].created_at #=> Time
    #   resp.data.suite_runs_list[0].started_at #=> Time
    #   resp.data.suite_runs_list[0].end_at #=> Time
    #   resp.data.suite_runs_list[0].status #=> String, one of ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #   resp.data.suite_runs_list[0].passed #=> Integer
    #   resp.data.suite_runs_list[0].failed #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_suite_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSuiteRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSuiteRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSuiteRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListSuiteRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSuiteRuns,
        stubs: @stubs,
        params_class: Params::ListSuiteRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_suite_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags attached to an IoT Device Advisor resource.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTagsForResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the IoT Device Advisor resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Starts a Device Advisor test suite run.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartSuiteRun</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSuiteRunInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #
    # @option params [String] :suite_definition_version
    #   <p>Suite definition version of the test suite.</p>
    #
    # @option params [SuiteRunConfiguration] :suite_run_configuration
    #   <p>Suite run configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the suite run.</p>
    #
    # @return [Types::StartSuiteRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_suite_run(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_definition_version: 'suiteDefinitionVersion',
    #     suite_run_configuration: {
    #       primary_device: {
    #         thing_arn: 'thingArn',
    #         certificate_arn: 'certificateArn'
    #       },
    #       selected_test_list: [
    #         'member'
    #       ],
    #       parallel_run: false
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSuiteRunOutput
    #   resp.data.suite_run_id #=> String
    #   resp.data.suite_run_arn #=> String
    #   resp.data.created_at #=> Time
    #
    def start_suite_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSuiteRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSuiteRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSuiteRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::StartSuiteRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSuiteRun,
        stubs: @stubs,
        params_class: Params::StartSuiteRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_suite_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a Device Advisor test suite run that is currently running.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StopSuiteRun</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StopSuiteRunInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite run to be stopped.</p>
    #
    # @option params [String] :suite_run_id
    #   <p>Suite run ID of the test suite run to be stopped.</p>
    #
    # @return [Types::StopSuiteRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_suite_run(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_run_id: 'suiteRunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopSuiteRunOutput
    #
    def stop_suite_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopSuiteRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopSuiteRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopSuiteRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopSuiteRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopSuiteRun,
        stubs: @stubs,
        params_class: Params::StopSuiteRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_suite_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds to and modifies existing tags of an IoT Device Advisor resource.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TagResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the IoT Device Advisor resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from an IoT Device Advisor resource.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UntagResource</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>List of tag keys to remove from the IoT Device Advisor resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Updates a Device Advisor test suite.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateSuiteDefinition</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSuiteDefinitionInput}.
    #
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to be updated.</p>
    #
    # @option params [SuiteDefinitionConfiguration] :suite_definition_configuration
    #   <p>Updates a Device Advisor test suite with suite definition configuration.</p>
    #
    # @return [Types::UpdateSuiteDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_suite_definition(
    #     suite_definition_id: 'suiteDefinitionId', # required
    #     suite_definition_configuration: {
    #       suite_definition_name: 'suiteDefinitionName',
    #       devices: [
    #         {
    #           thing_arn: 'thingArn',
    #           certificate_arn: 'certificateArn'
    #         }
    #       ],
    #       intended_for_qualification: false,
    #       root_group: 'rootGroup',
    #       device_permission_role_arn: 'devicePermissionRoleArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSuiteDefinitionOutput
    #   resp.data.suite_definition_id #=> String
    #   resp.data.suite_definition_arn #=> String
    #   resp.data.suite_definition_name #=> String
    #   resp.data.suite_definition_version #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #
    def update_suite_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSuiteDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSuiteDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSuiteDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateSuiteDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSuiteDefinition,
        stubs: @stubs,
        params_class: Params::UpdateSuiteDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_suite_definition
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
