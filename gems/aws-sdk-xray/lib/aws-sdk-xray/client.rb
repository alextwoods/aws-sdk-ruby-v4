# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::XRay
  # An API client for AWSXRay
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services X-Ray provides APIs for managing debug traces and retrieving service maps
  #       and other data created by processing those traces.</p>
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
    def initialize(config = AWS::SDK::XRay::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves a list of traces specified by ID. Each trace is a collection of segment
    #       documents that originates from a single request. Use <code>GetTraceSummaries</code> to get a
    #       list of trace IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetTracesInput}.
    #
    # @option params [Array<String>] :trace_ids
    #   <p>Specify the trace IDs of requests for which to retrieve segments.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::BatchGetTracesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_traces(
    #     trace_ids: [
    #       'member'
    #     ], # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetTracesOutput
    #   resp.data.traces #=> Array<Trace>
    #   resp.data.traces[0] #=> Types::Trace
    #   resp.data.traces[0].id #=> String
    #   resp.data.traces[0].duration #=> Float
    #   resp.data.traces[0].limit_exceeded #=> Boolean
    #   resp.data.traces[0].segments #=> Array<Segment>
    #   resp.data.traces[0].segments[0] #=> Types::Segment
    #   resp.data.traces[0].segments[0].id #=> String
    #   resp.data.traces[0].segments[0].document #=> String
    #   resp.data.unprocessed_trace_ids #=> Array<String>
    #   resp.data.unprocessed_trace_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def batch_get_traces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetTracesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetTracesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetTraces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::BatchGetTraces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetTraces,
        stubs: @stubs,
        params_class: Params::BatchGetTracesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_traces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a group resource with a name and a filter expression. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the new group. Default is a reserved name and names must
    #               be unique.</p>
    #
    # @option params [String] :filter_expression
    #   <p>The filter expression defining criteria by which to group traces.</p>
    #
    # @option params [InsightsConfiguration] :insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #               <ul>
    #               <li>
    #                       <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       new group or false to disable insights for the new group.</p>
    #                   </li>
    #               <li>
    #                       <p>The NotifcationsEnabled boolean can be set to true to enable insights
    #                       notifications for the new group. Notifications may only be enabled on a group
    #                       with InsightsEnabled set to true.</p>
    #                   </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group.
    #               For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                   resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #           <p>The following restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                   <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                   <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                   <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                       / = + - and @</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                       use.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     group_name: 'GroupName', # required
    #     filter_expression: 'FilterExpression',
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_name #=> String
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.filter_expression #=> String
    #   resp.data.group.insights_configuration #=> Types::InsightsConfiguration
    #   resp.data.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.data.group.insights_configuration.notifications_enabled #=> Boolean
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a rule to control sampling behavior for instrumented applications. Services
    #          retrieve rules with <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html">GetSamplingRules</a>, and evaluate each rule in ascending
    #          order of <i>priority</i> for each request. If a rule matches, the service
    #          records a trace, borrowing it from the reservoir size. After 10 seconds, the service
    #          reports back to X-Ray with <a href="https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html">GetSamplingTargets</a> to get updated versions of
    #          each in-use rule. The updated rule contains a trace quota that the service can use instead
    #          of borrowing from the reservoir.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSamplingRuleInput}.
    #
    # @option params [SamplingRule] :sampling_rule
    #   <p>The rule definition.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling
    #            rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #               resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #                  / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services
    #                  use.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateSamplingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sampling_rule(
    #     sampling_rule: {
    #       rule_name: 'RuleName',
    #       rule_arn: 'RuleARN',
    #       resource_arn: 'ResourceARN', # required
    #       priority: 1, # required
    #       fixed_rate: 1.0, # required
    #       reservoir_size: 1, # required
    #       service_name: 'ServiceName', # required
    #       service_type: 'ServiceType', # required
    #       host: 'Host', # required
    #       http_method: 'HTTPMethod', # required
    #       url_path: 'URLPath', # required
    #       version: 1, # required
    #       attributes: {
    #         'key' => 'value'
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSamplingRuleOutput
    #   resp.data.sampling_rule_record #=> Types::SamplingRuleRecord
    #   resp.data.sampling_rule_record.sampling_rule #=> Types::SamplingRule
    #   resp.data.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.data.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.data.sampling_rule_record.sampling_rule.host #=> String
    #   resp.data.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.data.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.data.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.attributes #=> Hash<String, String>
    #   resp.data.sampling_rule_record.sampling_rule.attributes['key'] #=> String
    #   resp.data.sampling_rule_record.created_at #=> Time
    #   resp.data.sampling_rule_record.modified_at #=> Time
    #
    def create_sampling_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSamplingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSamplingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSamplingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException, Errors::RuleLimitExceededException]),
        data_parser: Parsers::CreateSamplingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSamplingRule,
        stubs: @stubs,
        params_class: Params::CreateSamplingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sampling_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a group resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    #
    # @option params [String] :group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_name: 'GroupName',
    #     group_arn: 'GroupARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a sampling rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSamplingRuleInput}.
    #
    # @option params [String] :rule_name
    #   <p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #
    # @option params [String] :rule_arn
    #   <p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>
    #
    # @return [Types::DeleteSamplingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sampling_rule(
    #     rule_name: 'RuleName',
    #     rule_arn: 'RuleARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSamplingRuleOutput
    #   resp.data.sampling_rule_record #=> Types::SamplingRuleRecord
    #   resp.data.sampling_rule_record.sampling_rule #=> Types::SamplingRule
    #   resp.data.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.data.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.data.sampling_rule_record.sampling_rule.host #=> String
    #   resp.data.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.data.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.data.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.attributes #=> Hash<String, String>
    #   resp.data.sampling_rule_record.sampling_rule.attributes['key'] #=> String
    #   resp.data.sampling_rule_record.created_at #=> Time
    #   resp.data.sampling_rule_record.modified_at #=> Time
    #
    def delete_sampling_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSamplingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSamplingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSamplingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::DeleteSamplingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSamplingRule,
        stubs: @stubs,
        params_class: Params::DeleteSamplingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sampling_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current encryption configuration for X-Ray data.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEncryptionConfigInput}.
    #
    # @return [Types::GetEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_encryption_config()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEncryptionConfigOutput
    #   resp.data.encryption_config #=> Types::EncryptionConfig
    #   resp.data.encryption_config.key_id #=> String
    #   resp.data.encryption_config.status #=> String, one of ["UPDATING", "ACTIVE"]
    #   resp.data.encryption_config.type #=> String, one of ["NONE", "KMS"]
    #
    def get_encryption_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEncryptionConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEncryptionConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEncryptionConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetEncryptionConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEncryptionConfig,
        stubs: @stubs,
        params_class: Params::GetEncryptionConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_encryption_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves group resource details.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    #
    # @option params [String] :group_arn
    #   <p>The ARN of the group that was generated on creation.</p>
    #
    # @return [Types::GetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group(
    #     group_name: 'GroupName',
    #     group_arn: 'GroupARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_name #=> String
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.filter_expression #=> String
    #   resp.data.group.insights_configuration #=> Types::InsightsConfiguration
    #   resp.data.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.data.group.insights_configuration.notifications_enabled #=> Boolean
    #
    def get_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroup,
        stubs: @stubs,
        params_class: Params::GetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all active group details.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_groups(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupsOutput
    #   resp.data.groups #=> Array<GroupSummary>
    #   resp.data.groups[0] #=> Types::GroupSummary
    #   resp.data.groups[0].group_name #=> String
    #   resp.data.groups[0].group_arn #=> String
    #   resp.data.groups[0].filter_expression #=> String
    #   resp.data.groups[0].insights_configuration #=> Types::InsightsConfiguration
    #   resp.data.groups[0].insights_configuration.insights_enabled #=> Boolean
    #   resp.data.groups[0].insights_configuration.notifications_enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroups,
        stubs: @stubs,
        params_class: Params::GetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the summary information of an insight. This includes impact to clients and
    #          root cause services, the top anomalous services, the category, the state of the insight,
    #          and the start and end time of the insight.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightInput}.
    #
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #
    # @return [Types::GetInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight(
    #     insight_id: 'InsightId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightOutput
    #   resp.data.insight #=> Types::Insight
    #   resp.data.insight.insight_id #=> String
    #   resp.data.insight.group_arn #=> String
    #   resp.data.insight.group_name #=> String
    #   resp.data.insight.root_cause_service_id #=> Types::ServiceId
    #   resp.data.insight.root_cause_service_id.name #=> String
    #   resp.data.insight.root_cause_service_id.names #=> Array<String>
    #   resp.data.insight.root_cause_service_id.names[0] #=> String
    #   resp.data.insight.root_cause_service_id.account_id #=> String
    #   resp.data.insight.root_cause_service_id.type #=> String
    #   resp.data.insight.categories #=> Array<String>
    #   resp.data.insight.categories[0] #=> String, one of ["FAULT"]
    #   resp.data.insight.state #=> String, one of ["ACTIVE", "CLOSED"]
    #   resp.data.insight.start_time #=> Time
    #   resp.data.insight.end_time #=> Time
    #   resp.data.insight.summary #=> String
    #   resp.data.insight.client_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight.client_request_impact_statistics.fault_count #=> Integer
    #   resp.data.insight.client_request_impact_statistics.ok_count #=> Integer
    #   resp.data.insight.client_request_impact_statistics.total_count #=> Integer
    #   resp.data.insight.root_cause_service_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight.top_anomalous_services #=> Array<AnomalousService>
    #   resp.data.insight.top_anomalous_services[0] #=> Types::AnomalousService
    #   resp.data.insight.top_anomalous_services[0].service_id #=> Types::ServiceId
    #
    def get_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsight
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsight,
        stubs: @stubs,
        params_class: Params::GetInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an
    #          event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray
    #          console.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightEventsInput}.
    #
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Used to retrieve at most the specified value of events.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of events. </p>
    #
    # @return [Types::GetInsightEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_events(
    #     insight_id: 'InsightId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightEventsOutput
    #   resp.data.insight_events #=> Array<InsightEvent>
    #   resp.data.insight_events[0] #=> Types::InsightEvent
    #   resp.data.insight_events[0].summary #=> String
    #   resp.data.insight_events[0].event_time #=> Time
    #   resp.data.insight_events[0].client_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight_events[0].client_request_impact_statistics.fault_count #=> Integer
    #   resp.data.insight_events[0].client_request_impact_statistics.ok_count #=> Integer
    #   resp.data.insight_events[0].client_request_impact_statistics.total_count #=> Integer
    #   resp.data.insight_events[0].root_cause_service_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight_events[0].top_anomalous_services #=> Array<AnomalousService>
    #   resp.data.insight_events[0].top_anomalous_services[0] #=> Types::AnomalousService
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id #=> Types::ServiceId
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id.name #=> String
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id.names #=> Array<String>
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id.names[0] #=> String
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id.account_id #=> String
    #   resp.data.insight_events[0].top_anomalous_services[0].service_id.type #=> String
    #   resp.data.next_token #=> String
    #
    def get_insight_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetInsightEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightEvents,
        stubs: @stubs,
        params_class: Params::GetInsightEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a service graph structure filtered by the specified insight. The service graph is limited to only
    #          structural information. For a complete service graph, use this API with the GetServiceGraph API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightImpactGraphInput}.
    #
    # @option params [String] :insight_id
    #   <p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>
    #
    # @option params [Time] :start_time
    #   <p>The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value
    #            provided and can't be more than 30 days old.</p>
    #
    # @option params [Time] :end_time
    #   <p>The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided.
    #            The time range between the start time and end time can't be more than six hours. </p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page of results. </p>
    #
    # @return [Types::GetInsightImpactGraphOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_impact_graph(
    #     insight_id: 'InsightId', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightImpactGraphOutput
    #   resp.data.insight_id #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.service_graph_start_time #=> Time
    #   resp.data.service_graph_end_time #=> Time
    #   resp.data.services #=> Array<InsightImpactGraphService>
    #   resp.data.services[0] #=> Types::InsightImpactGraphService
    #   resp.data.services[0].reference_id #=> Integer
    #   resp.data.services[0].type #=> String
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].names #=> Array<String>
    #   resp.data.services[0].names[0] #=> String
    #   resp.data.services[0].account_id #=> String
    #   resp.data.services[0].edges #=> Array<InsightImpactGraphEdge>
    #   resp.data.services[0].edges[0] #=> Types::InsightImpactGraphEdge
    #   resp.data.services[0].edges[0].reference_id #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_insight_impact_graph(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightImpactGraphInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightImpactGraphInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightImpactGraph
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetInsightImpactGraph
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightImpactGraph,
        stubs: @stubs,
        params_class: Params::GetInsightImpactGraphOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight_impact_graph
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the summaries of all insights in the specified group matching the provided filter values.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightSummariesInput}.
    #
    # @option params [Array<String>] :states
    #   <p>The list of insight states. </p>
    #
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of the group. Required if the GroupName isn't provided.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group. Required if the GroupARN isn't provided.</p>
    #
    # @option params [Time] :start_time
    #   <p>The beginning of the time frame in which the insights started. The start time can't be more than 30 days
    #            old.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time frame in which the insights ended. The end time can't be more than 30 days old.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetInsightSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_summaries(
    #     states: [
    #       'ACTIVE' # accepts ["ACTIVE", "CLOSED"]
    #     ],
    #     group_arn: 'GroupARN',
    #     group_name: 'GroupName',
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightSummariesOutput
    #   resp.data.insight_summaries #=> Array<InsightSummary>
    #   resp.data.insight_summaries[0] #=> Types::InsightSummary
    #   resp.data.insight_summaries[0].insight_id #=> String
    #   resp.data.insight_summaries[0].group_arn #=> String
    #   resp.data.insight_summaries[0].group_name #=> String
    #   resp.data.insight_summaries[0].root_cause_service_id #=> Types::ServiceId
    #   resp.data.insight_summaries[0].root_cause_service_id.name #=> String
    #   resp.data.insight_summaries[0].root_cause_service_id.names #=> Array<String>
    #   resp.data.insight_summaries[0].root_cause_service_id.names[0] #=> String
    #   resp.data.insight_summaries[0].root_cause_service_id.account_id #=> String
    #   resp.data.insight_summaries[0].root_cause_service_id.type #=> String
    #   resp.data.insight_summaries[0].categories #=> Array<String>
    #   resp.data.insight_summaries[0].categories[0] #=> String, one of ["FAULT"]
    #   resp.data.insight_summaries[0].state #=> String, one of ["ACTIVE", "CLOSED"]
    #   resp.data.insight_summaries[0].start_time #=> Time
    #   resp.data.insight_summaries[0].end_time #=> Time
    #   resp.data.insight_summaries[0].summary #=> String
    #   resp.data.insight_summaries[0].client_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight_summaries[0].client_request_impact_statistics.fault_count #=> Integer
    #   resp.data.insight_summaries[0].client_request_impact_statistics.ok_count #=> Integer
    #   resp.data.insight_summaries[0].client_request_impact_statistics.total_count #=> Integer
    #   resp.data.insight_summaries[0].root_cause_service_request_impact_statistics #=> Types::RequestImpactStatistics
    #   resp.data.insight_summaries[0].top_anomalous_services #=> Array<AnomalousService>
    #   resp.data.insight_summaries[0].top_anomalous_services[0] #=> Types::AnomalousService
    #   resp.data.insight_summaries[0].top_anomalous_services[0].service_id #=> Types::ServiceId
    #   resp.data.insight_summaries[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def get_insight_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetInsightSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightSummaries,
        stubs: @stubs,
        params_class: Params::GetInsightSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all sampling rules.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSamplingRulesInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetSamplingRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_rules(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSamplingRulesOutput
    #   resp.data.sampling_rule_records #=> Array<SamplingRuleRecord>
    #   resp.data.sampling_rule_records[0] #=> Types::SamplingRuleRecord
    #   resp.data.sampling_rule_records[0].sampling_rule #=> Types::SamplingRule
    #   resp.data.sampling_rule_records[0].sampling_rule.rule_name #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.rule_arn #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.resource_arn #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.priority #=> Integer
    #   resp.data.sampling_rule_records[0].sampling_rule.fixed_rate #=> Float
    #   resp.data.sampling_rule_records[0].sampling_rule.reservoir_size #=> Integer
    #   resp.data.sampling_rule_records[0].sampling_rule.service_name #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.service_type #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.host #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.http_method #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.url_path #=> String
    #   resp.data.sampling_rule_records[0].sampling_rule.version #=> Integer
    #   resp.data.sampling_rule_records[0].sampling_rule.attributes #=> Hash<String, String>
    #   resp.data.sampling_rule_records[0].sampling_rule.attributes['key'] #=> String
    #   resp.data.sampling_rule_records[0].created_at #=> Time
    #   resp.data.sampling_rule_records[0].modified_at #=> Time
    #   resp.data.next_token #=> String
    #
    def get_sampling_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSamplingRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSamplingRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSamplingRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetSamplingRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSamplingRules,
        stubs: @stubs,
        params_class: Params::GetSamplingRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sampling_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about recent sampling results for all sampling rules.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSamplingStatisticSummariesInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetSamplingStatisticSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_statistic_summaries(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSamplingStatisticSummariesOutput
    #   resp.data.sampling_statistic_summaries #=> Array<SamplingStatisticSummary>
    #   resp.data.sampling_statistic_summaries[0] #=> Types::SamplingStatisticSummary
    #   resp.data.sampling_statistic_summaries[0].rule_name #=> String
    #   resp.data.sampling_statistic_summaries[0].timestamp #=> Time
    #   resp.data.sampling_statistic_summaries[0].request_count #=> Integer
    #   resp.data.sampling_statistic_summaries[0].borrow_count #=> Integer
    #   resp.data.sampling_statistic_summaries[0].sampled_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_sampling_statistic_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSamplingStatisticSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSamplingStatisticSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSamplingStatisticSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetSamplingStatisticSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSamplingStatisticSummaries,
        stubs: @stubs,
        params_class: Params::GetSamplingStatisticSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sampling_statistic_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a sampling quota for rules that the service is using to sample requests.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetSamplingTargetsInput}.
    #
    # @option params [Array<SamplingStatisticsDocument>] :sampling_statistics_documents
    #   <p>Information about rules that the service is using to sample requests.</p>
    #
    # @return [Types::GetSamplingTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_targets(
    #     sampling_statistics_documents: [
    #       {
    #         rule_name: 'RuleName', # required
    #         client_id: 'ClientID', # required
    #         timestamp: Time.now, # required
    #         request_count: 1, # required
    #         sampled_count: 1, # required
    #         borrow_count: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSamplingTargetsOutput
    #   resp.data.sampling_target_documents #=> Array<SamplingTargetDocument>
    #   resp.data.sampling_target_documents[0] #=> Types::SamplingTargetDocument
    #   resp.data.sampling_target_documents[0].rule_name #=> String
    #   resp.data.sampling_target_documents[0].fixed_rate #=> Float
    #   resp.data.sampling_target_documents[0].reservoir_quota #=> Integer
    #   resp.data.sampling_target_documents[0].reservoir_quota_ttl #=> Time
    #   resp.data.sampling_target_documents[0].interval #=> Integer
    #   resp.data.last_rule_modification #=> Time
    #   resp.data.unprocessed_statistics #=> Array<UnprocessedStatistics>
    #   resp.data.unprocessed_statistics[0] #=> Types::UnprocessedStatistics
    #   resp.data.unprocessed_statistics[0].rule_name #=> String
    #   resp.data.unprocessed_statistics[0].error_code #=> String
    #   resp.data.unprocessed_statistics[0].message #=> String
    #
    def get_sampling_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSamplingTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSamplingTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSamplingTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetSamplingTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSamplingTargets,
        stubs: @stubs,
        params_class: Params::GetSamplingTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sampling_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a document that describes services that process incoming requests, and
    #       downstream services that they call as a result. Root services process incoming requests and
    #       make calls to downstream services. Root services are applications that use the <a href="https://docs.aws.amazon.com/xray/index.html">Amazon Web Services X-Ray SDK</a>.
    #       Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL
    #       databases.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceGraphInput}.
    #
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to generate a graph.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the timeframe for which to generate a graph.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of a group based on which you want to generate a graph.</p>
    #
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetServiceGraphOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_graph(
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: 'GroupName',
    #     group_arn: 'GroupARN',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceGraphOutput
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.services #=> Array<Service>
    #   resp.data.services[0] #=> Types::Service
    #   resp.data.services[0].reference_id #=> Integer
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].names #=> Array<String>
    #   resp.data.services[0].names[0] #=> String
    #   resp.data.services[0].root #=> Boolean
    #   resp.data.services[0].account_id #=> String
    #   resp.data.services[0].type #=> String
    #   resp.data.services[0].state #=> String
    #   resp.data.services[0].start_time #=> Time
    #   resp.data.services[0].end_time #=> Time
    #   resp.data.services[0].edges #=> Array<Edge>
    #   resp.data.services[0].edges[0] #=> Types::Edge
    #   resp.data.services[0].edges[0].reference_id #=> Integer
    #   resp.data.services[0].edges[0].start_time #=> Time
    #   resp.data.services[0].edges[0].end_time #=> Time
    #   resp.data.services[0].edges[0].summary_statistics #=> Types::EdgeStatistics
    #   resp.data.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.data.services[0].edges[0].response_time_histogram #=> Array<HistogramEntry>
    #   resp.data.services[0].edges[0].response_time_histogram[0] #=> Types::HistogramEntry
    #   resp.data.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.data.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.data.services[0].edges[0].aliases #=> Array<Alias>
    #   resp.data.services[0].edges[0].aliases[0] #=> Types::Alias
    #   resp.data.services[0].edges[0].aliases[0].name #=> String
    #   resp.data.services[0].edges[0].aliases[0].names #=> Array<String>
    #   resp.data.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.data.services[0].edges[0].aliases[0].type #=> String
    #   resp.data.services[0].summary_statistics #=> Types::ServiceStatistics
    #   resp.data.services[0].summary_statistics.ok_count #=> Integer
    #   resp.data.services[0].summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.services[0].summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.services[0].summary_statistics.total_count #=> Integer
    #   resp.data.services[0].summary_statistics.total_response_time #=> Float
    #   resp.data.services[0].duration_histogram #=> Array<HistogramEntry>
    #   resp.data.services[0].response_time_histogram #=> Array<HistogramEntry>
    #   resp.data.contains_old_group_versions #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_service_graph(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceGraphInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceGraphInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceGraph
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetServiceGraph
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceGraph,
        stubs: @stubs,
        params_class: Params::GetServiceGraphOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_graph
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get an aggregation of service statistics defined by a specific time
    #             range.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTimeSeriesServiceStatisticsInput}.
    #
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to aggregate statistics.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time frame for which to aggregate statistics.</p>
    #
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group for which to pull statistics from.</p>
    #
    # @option params [String] :group_arn
    #   <p>The Amazon Resource Name (ARN) of the group for which to pull statistics from.</p>
    #
    # @option params [String] :entity_selector_expression
    #   <p>A filter expression defining entities that will be aggregated for statistics.
    #               Supports ID, service, and edge functions. If no selector expression is specified, edge
    #               statistics are returned. </p>
    #
    # @option params [Integer] :period
    #   <p>Aggregation period in seconds.</p>
    #
    # @option params [Boolean] :forecast_statistics
    #   <p>The forecasted high and low fault count values. Forecast enabled requests require the
    #               EntitySelectorExpression ID be provided.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetTimeSeriesServiceStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_time_series_service_statistics(
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: 'GroupName',
    #     group_arn: 'GroupARN',
    #     entity_selector_expression: 'EntitySelectorExpression',
    #     period: 1,
    #     forecast_statistics: false,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTimeSeriesServiceStatisticsOutput
    #   resp.data.time_series_service_statistics #=> Array<TimeSeriesServiceStatistics>
    #   resp.data.time_series_service_statistics[0] #=> Types::TimeSeriesServiceStatistics
    #   resp.data.time_series_service_statistics[0].timestamp #=> Time
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics #=> Types::EdgeStatistics
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.ok_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.error_statistics.other_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.error_statistics.total_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.total_count #=> Integer
    #   resp.data.time_series_service_statistics[0].edge_summary_statistics.total_response_time #=> Float
    #   resp.data.time_series_service_statistics[0].service_summary_statistics #=> Types::ServiceStatistics
    #   resp.data.time_series_service_statistics[0].service_summary_statistics.ok_count #=> Integer
    #   resp.data.time_series_service_statistics[0].service_summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.time_series_service_statistics[0].service_summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.time_series_service_statistics[0].service_summary_statistics.total_count #=> Integer
    #   resp.data.time_series_service_statistics[0].service_summary_statistics.total_response_time #=> Float
    #   resp.data.time_series_service_statistics[0].service_forecast_statistics #=> Types::ForecastStatistics
    #   resp.data.time_series_service_statistics[0].service_forecast_statistics.fault_count_high #=> Integer
    #   resp.data.time_series_service_statistics[0].service_forecast_statistics.fault_count_low #=> Integer
    #   resp.data.time_series_service_statistics[0].response_time_histogram #=> Array<HistogramEntry>
    #   resp.data.time_series_service_statistics[0].response_time_histogram[0] #=> Types::HistogramEntry
    #   resp.data.time_series_service_statistics[0].response_time_histogram[0].value #=> Float
    #   resp.data.time_series_service_statistics[0].response_time_histogram[0].count #=> Integer
    #   resp.data.contains_old_group_versions #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_time_series_service_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTimeSeriesServiceStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTimeSeriesServiceStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTimeSeriesServiceStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetTimeSeriesServiceStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTimeSeriesServiceStatistics,
        stubs: @stubs,
        params_class: Params::GetTimeSeriesServiceStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_time_series_service_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a service graph for one or more specific trace IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTraceGraphInput}.
    #
    # @option params [Array<String>] :trace_ids
    #   <p>Trace IDs of requests for which to generate a service graph.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::GetTraceGraphOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_graph(
    #     trace_ids: [
    #       'member'
    #     ], # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTraceGraphOutput
    #   resp.data.services #=> Array<Service>
    #   resp.data.services[0] #=> Types::Service
    #   resp.data.services[0].reference_id #=> Integer
    #   resp.data.services[0].name #=> String
    #   resp.data.services[0].names #=> Array<String>
    #   resp.data.services[0].names[0] #=> String
    #   resp.data.services[0].root #=> Boolean
    #   resp.data.services[0].account_id #=> String
    #   resp.data.services[0].type #=> String
    #   resp.data.services[0].state #=> String
    #   resp.data.services[0].start_time #=> Time
    #   resp.data.services[0].end_time #=> Time
    #   resp.data.services[0].edges #=> Array<Edge>
    #   resp.data.services[0].edges[0] #=> Types::Edge
    #   resp.data.services[0].edges[0].reference_id #=> Integer
    #   resp.data.services[0].edges[0].start_time #=> Time
    #   resp.data.services[0].edges[0].end_time #=> Time
    #   resp.data.services[0].edges[0].summary_statistics #=> Types::EdgeStatistics
    #   resp.data.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.data.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.data.services[0].edges[0].response_time_histogram #=> Array<HistogramEntry>
    #   resp.data.services[0].edges[0].response_time_histogram[0] #=> Types::HistogramEntry
    #   resp.data.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.data.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.data.services[0].edges[0].aliases #=> Array<Alias>
    #   resp.data.services[0].edges[0].aliases[0] #=> Types::Alias
    #   resp.data.services[0].edges[0].aliases[0].name #=> String
    #   resp.data.services[0].edges[0].aliases[0].names #=> Array<String>
    #   resp.data.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.data.services[0].edges[0].aliases[0].type #=> String
    #   resp.data.services[0].summary_statistics #=> Types::ServiceStatistics
    #   resp.data.services[0].summary_statistics.ok_count #=> Integer
    #   resp.data.services[0].summary_statistics.error_statistics #=> Types::ErrorStatistics
    #   resp.data.services[0].summary_statistics.fault_statistics #=> Types::FaultStatistics
    #   resp.data.services[0].summary_statistics.total_count #=> Integer
    #   resp.data.services[0].summary_statistics.total_response_time #=> Float
    #   resp.data.services[0].duration_histogram #=> Array<HistogramEntry>
    #   resp.data.services[0].response_time_histogram #=> Array<HistogramEntry>
    #   resp.data.next_token #=> String
    #
    def get_trace_graph(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTraceGraphInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTraceGraphInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTraceGraph
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetTraceGraph
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTraceGraph,
        stubs: @stubs,
        params_class: Params::GetTraceGraphOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trace_graph
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves IDs and annotations for traces available for a specified time frame using an
    #       optional filter. To get the full traces, pass the trace IDs to
    #       <code>BatchGetTraces</code>.</p>
    #          <p>A filter expression can target traced requests that hit specific service nodes or
    #       edges, have errors, or come from a known user. For example, the following filter expression
    #       targets traces that pass through <code>api.example.com</code>:</p>
    #          <p>
    #             <code>service("api.example.com")</code>
    #          </p>
    #          <p>This filter expression finds traces that have an annotation named <code>account</code>
    #       with the value <code>12345</code>:</p>
    #          <p>
    #             <code>annotation.account = "12345"</code>
    #          </p>
    #          <p>For a full list of indexed fields and keywords that you can use in filter expressions,
    #       see <a href="https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html">Using Filter
    #         Expressions</a> in the <i>Amazon Web Services X-Ray Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTraceSummariesInput}.
    #
    # @option params [Time] :start_time
    #   <p>The start of the time frame for which to retrieve traces.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time frame for which to retrieve traces.</p>
    #
    # @option params [String] :time_range_type
    #   <p>A parameter to indicate whether to query trace summaries by TraceId or Event time.</p>
    #
    # @option params [Boolean] :sampling
    #   <p>Set to <code>true</code> to get summaries for only a subset of available
    #         traces.</p>
    #
    # @option params [SamplingStrategy] :sampling_strategy
    #   <p>A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and
    #               Value.</p>
    #
    # @option params [String] :filter_expression
    #   <p>Specify a filter expression to retrieve trace summaries for services or requests that
    #         meet certain requirements.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous request to retrieve the next page
    #         of results.</p>
    #
    # @return [Types::GetTraceSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_summaries(
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     time_range_type: 'TraceId', # accepts ["TraceId", "Event"]
    #     sampling: false,
    #     sampling_strategy: {
    #       name: 'PartialScan', # accepts ["PartialScan", "FixedRate"]
    #       value: 1.0
    #     },
    #     filter_expression: 'FilterExpression',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTraceSummariesOutput
    #   resp.data.trace_summaries #=> Array<TraceSummary>
    #   resp.data.trace_summaries[0] #=> Types::TraceSummary
    #   resp.data.trace_summaries[0].id #=> String
    #   resp.data.trace_summaries[0].duration #=> Float
    #   resp.data.trace_summaries[0].response_time #=> Float
    #   resp.data.trace_summaries[0].has_fault #=> Boolean
    #   resp.data.trace_summaries[0].has_error #=> Boolean
    #   resp.data.trace_summaries[0].has_throttle #=> Boolean
    #   resp.data.trace_summaries[0].is_partial #=> Boolean
    #   resp.data.trace_summaries[0].http #=> Types::Http
    #   resp.data.trace_summaries[0].http.http_url #=> String
    #   resp.data.trace_summaries[0].http.http_status #=> Integer
    #   resp.data.trace_summaries[0].http.http_method #=> String
    #   resp.data.trace_summaries[0].http.user_agent #=> String
    #   resp.data.trace_summaries[0].http.client_ip #=> String
    #   resp.data.trace_summaries[0].annotations #=> Hash<String, Array<ValueWithServiceIds>>
    #   resp.data.trace_summaries[0].annotations['key'] #=> Array<ValueWithServiceIds>
    #   resp.data.trace_summaries[0].annotations['key'][0] #=> Types::ValueWithServiceIds
    #   resp.data.trace_summaries[0].annotations['key'][0].annotation_value #=> Types::AnnotationValue, one of [NumberValue, BooleanValue, StringValue]
    #   resp.data.trace_summaries[0].annotations['key'][0].annotation_value.number_value #=> Float
    #   resp.data.trace_summaries[0].annotations['key'][0].annotation_value.boolean_value #=> Boolean
    #   resp.data.trace_summaries[0].annotations['key'][0].annotation_value.string_value #=> String
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids #=> Array<ServiceId>
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0] #=> Types::ServiceId
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0].name #=> String
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0].names #=> Array<String>
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0].names[0] #=> String
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0].account_id #=> String
    #   resp.data.trace_summaries[0].annotations['key'][0].service_ids[0].type #=> String
    #   resp.data.trace_summaries[0].users #=> Array<TraceUser>
    #   resp.data.trace_summaries[0].users[0] #=> Types::TraceUser
    #   resp.data.trace_summaries[0].users[0].user_name #=> String
    #   resp.data.trace_summaries[0].users[0].service_ids #=> Array<ServiceId>
    #   resp.data.trace_summaries[0].service_ids #=> Array<ServiceId>
    #   resp.data.trace_summaries[0].resource_ar_ns #=> Array<ResourceARNDetail>
    #   resp.data.trace_summaries[0].resource_ar_ns[0] #=> Types::ResourceARNDetail
    #   resp.data.trace_summaries[0].resource_ar_ns[0].arn #=> String
    #   resp.data.trace_summaries[0].instance_ids #=> Array<InstanceIdDetail>
    #   resp.data.trace_summaries[0].instance_ids[0] #=> Types::InstanceIdDetail
    #   resp.data.trace_summaries[0].instance_ids[0].id #=> String
    #   resp.data.trace_summaries[0].availability_zones #=> Array<AvailabilityZoneDetail>
    #   resp.data.trace_summaries[0].availability_zones[0] #=> Types::AvailabilityZoneDetail
    #   resp.data.trace_summaries[0].availability_zones[0].name #=> String
    #   resp.data.trace_summaries[0].entry_point #=> Types::ServiceId
    #   resp.data.trace_summaries[0].fault_root_causes #=> Array<FaultRootCause>
    #   resp.data.trace_summaries[0].fault_root_causes[0] #=> Types::FaultRootCause
    #   resp.data.trace_summaries[0].fault_root_causes[0].services #=> Array<FaultRootCauseService>
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0] #=> Types::FaultRootCauseService
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].name #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].names #=> Array<String>
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].type #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].account_id #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path #=> Array<FaultRootCauseEntity>
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0] #=> Types::FaultRootCauseEntity
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions #=> Array<RootCauseException>
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0] #=> Types::RootCauseException
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].name #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].message #=> String
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.data.trace_summaries[0].fault_root_causes[0].services[0].inferred #=> Boolean
    #   resp.data.trace_summaries[0].fault_root_causes[0].client_impacting #=> Boolean
    #   resp.data.trace_summaries[0].error_root_causes #=> Array<ErrorRootCause>
    #   resp.data.trace_summaries[0].error_root_causes[0] #=> Types::ErrorRootCause
    #   resp.data.trace_summaries[0].error_root_causes[0].services #=> Array<ErrorRootCauseService>
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0] #=> Types::ErrorRootCauseService
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].name #=> String
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].names #=> Array<String>
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].type #=> String
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].account_id #=> String
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].entity_path #=> Array<ErrorRootCauseEntity>
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].entity_path[0] #=> Types::ErrorRootCauseEntity
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions #=> Array<RootCauseException>
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.data.trace_summaries[0].error_root_causes[0].services[0].inferred #=> Boolean
    #   resp.data.trace_summaries[0].error_root_causes[0].client_impacting #=> Boolean
    #   resp.data.trace_summaries[0].response_time_root_causes #=> Array<ResponseTimeRootCause>
    #   resp.data.trace_summaries[0].response_time_root_causes[0] #=> Types::ResponseTimeRootCause
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services #=> Array<ResponseTimeRootCauseService>
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0] #=> Types::ResponseTimeRootCauseService
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].name #=> String
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].names #=> Array<String>
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].type #=> String
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].account_id #=> String
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].entity_path #=> Array<ResponseTimeRootCauseEntity>
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0] #=> Types::ResponseTimeRootCauseEntity
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].coverage #=> Float
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.data.trace_summaries[0].response_time_root_causes[0].services[0].inferred #=> Boolean
    #   resp.data.trace_summaries[0].response_time_root_causes[0].client_impacting #=> Boolean
    #   resp.data.trace_summaries[0].revision #=> Integer
    #   resp.data.trace_summaries[0].matched_event_time #=> Time
    #   resp.data.approximate_time #=> Time
    #   resp.data.traces_processed_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_trace_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTraceSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTraceSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTraceSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::GetTraceSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTraceSummaries,
        stubs: @stubs,
        params_class: Params::GetTraceSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trace_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with
    #       the current page of results as the value of this parameter to get the next page of results.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the encryption configuration for X-Ray data.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEncryptionConfigInput}.
    #
    # @option params [String] :key_id
    #   <p>An Amazon Web Services KMS key in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Alias</b> - The name of the key. For example,
    #               <code>alias/MyKey</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Key ID</b> - The KMS key ID of the key. For example,
    #             <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. Amazon Web Services X-Ray does not support asymmetric KMS keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ARN</b> - The full Amazon Resource Name of the key ID or alias.
    #             For example,
    #               <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>.
    #             Use this format to specify a key in a different account.</p>
    #               </li>
    #            </ul>
    #            <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>
    #
    # @option params [String] :type
    #   <p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set
    #         to <code>NONE</code> for default encryption.</p>
    #
    # @return [Types::PutEncryptionConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_encryption_config(
    #     key_id: 'KeyId',
    #     type: 'NONE' # required - accepts ["NONE", "KMS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEncryptionConfigOutput
    #   resp.data.encryption_config #=> Types::EncryptionConfig
    #   resp.data.encryption_config.key_id #=> String
    #   resp.data.encryption_config.status #=> String, one of ["UPDATING", "ACTIVE"]
    #   resp.data.encryption_config.type #=> String, one of ["NONE", "KMS"]
    #
    def put_encryption_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEncryptionConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEncryptionConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEncryptionConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::PutEncryptionConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEncryptionConfig,
        stubs: @stubs,
        params_class: Params::PutEncryptionConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_encryption_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used by the Amazon Web Services X-Ray daemon to upload telemetry.</p>
    #
    # @param [Hash] params
    #   See {Types::PutTelemetryRecordsInput}.
    #
    # @option params [Array<TelemetryRecord>] :telemetry_records
    #   <p></p>
    #
    # @option params [String] :ec2_instance_id
    #   <p></p>
    #
    # @option params [String] :hostname
    #   <p></p>
    #
    # @option params [String] :resource_arn
    #   <p></p>
    #
    # @return [Types::PutTelemetryRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_telemetry_records(
    #     telemetry_records: [
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code4_xx_count: 1,
    #           http_code5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1
    #         }
    #       }
    #     ], # required
    #     ec2_instance_id: 'EC2InstanceId',
    #     hostname: 'Hostname',
    #     resource_arn: 'ResourceARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutTelemetryRecordsOutput
    #
    def put_telemetry_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutTelemetryRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutTelemetryRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutTelemetryRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::PutTelemetryRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutTelemetryRecords,
        stubs: @stubs,
        params_class: Params::PutTelemetryRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_telemetry_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads segment documents to Amazon Web Services X-Ray. The <a href="https://docs.aws.amazon.com/xray/index.html">X-Ray SDK</a> generates segment documents and sends them to the X-Ray daemon, which uploads them in
    #       batches. A segment document can be a completed segment, an in-progress segment, or an array of
    #       subsegments.</p>
    #          <p>Segments must include the following fields. For the full segment document schema, see
    #       <a href="https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html">Amazon Web Services X-Ray
    #         Segment Documents</a> in the <i>Amazon Web Services X-Ray Developer Guide</i>.</p>
    #          <p class="title">
    #             <b>Required segment document fields</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>name</code> - The name of the service that handled the request.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>id</code> - A 64-bit identifier for the segment, unique among segments in the same trace, in 16
    #           hexadecimal digits.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>trace_id</code> - A unique identifier that connects all segments and subsegments originating from
    #           a single client request.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>start_time</code> - Time the segment or subsegment was created, in floating point seconds in
    #           epoch time, accurate to milliseconds. For example, <code>1480615200.010</code> or
    #             <code>1.480615200010E9</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>end_time</code> - Time the segment or subsegment was closed. For example,
    #             <code>1480615200.090</code> or <code>1.480615200090E9</code>. Specify either an <code>end_time</code> or
    #             <code>in_progress</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>in_progress</code> - Set to <code>true</code> instead of specifying an <code>end_time</code> to
    #           record that a segment has been started, but is not complete. Send an in-progress segment when your application
    #           receives a request that will take a long time to serve, to trace that the request was received. When the
    #           response is sent, send the complete segment to overwrite the in-progress segment.</p>
    #             </li>
    #          </ul>
    #          <p>A <code>trace_id</code> consists of three numbers separated by hyphens. For example,
    #       1-58406520-a006649127e371903a2de979. This includes:</p>
    #          <p class="title">
    #             <b>Trace ID Format</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The version number, for instance, <code>1</code>.</p>
    #             </li>
    #             <li>
    #                <p>The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For
    #           example, 10:00AM December 2nd, 2016 PST in epoch time is <code>1480615200</code> seconds,
    #           or <code>58406520</code> in hexadecimal.</p>
    #             </li>
    #             <li>
    #                <p>A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
    #           digits.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutTraceSegmentsInput}.
    #
    # @option params [Array<String>] :trace_segment_documents
    #   <p>A string containing a JSON document defining one or more segments or
    #         subsegments.</p>
    #
    # @return [Types::PutTraceSegmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_trace_segments(
    #     trace_segment_documents: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutTraceSegmentsOutput
    #   resp.data.unprocessed_trace_segments #=> Array<UnprocessedTraceSegment>
    #   resp.data.unprocessed_trace_segments[0] #=> Types::UnprocessedTraceSegment
    #   resp.data.unprocessed_trace_segments[0].id #=> String
    #   resp.data.unprocessed_trace_segments[0].error_code #=> String
    #   resp.data.unprocessed_trace_segments[0].message #=> String
    #
    def put_trace_segments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutTraceSegmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutTraceSegmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutTraceSegments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::PutTraceSegments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutTraceSegments,
        stubs: @stubs,
        params_class: Params::PutTraceSegmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_trace_segments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or
    #         sampling rule. For more information about ways to use tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference</i>.</p>
    #            <p>The following restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of user-applied tags per resource: 50</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag key length: 128 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Maximum tag value length: 256 Unicode characters</p>
    #               </li>
    #               <li>
    #                  <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
    #             / = + - and @</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for Amazon Web Services use. You
    #             cannot edit or delete system tags.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException, Errors::TooManyTagsException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from an Amazon Web Services X-Ray group or sampling rule. You cannot edit or delete system
    #       tags (those with an <code>aws:</code> prefix).</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException, Errors::ResourceNotFoundException]),
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

    # <p>Updates a group resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The case-sensitive name of the group.</p>
    #
    # @option params [String] :group_arn
    #   <p>The ARN that was generated upon creation.</p>
    #
    # @option params [String] :filter_expression
    #   <p>The updated filter expression defining criteria by which to group traces.</p>
    #
    # @option params [InsightsConfiguration] :insights_configuration
    #   <p>The structure containing configurations related to insights.</p>
    #           <ul>
    #               <li>
    #                   <p>The InsightsEnabled boolean can be set to true to enable insights for the
    #                       group or false to disable insights for the group.</p>
    #               </li>
    #               <li>
    #                   <p>The NotifcationsEnabled boolean can be set to true to enable insights notifications for the group.
    #                       Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_name: 'GroupName',
    #     group_arn: 'GroupARN',
    #     filter_expression: 'FilterExpression',
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_name #=> String
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.filter_expression #=> String
    #   resp.data.group.insights_configuration #=> Types::InsightsConfiguration
    #   resp.data.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.data.group.insights_configuration.notifications_enabled #=> Boolean
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a sampling rule's configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSamplingRuleInput}.
    #
    # @option params [SamplingRuleUpdate] :sampling_rule_update
    #   <p>The rule and fields to change.</p>
    #
    # @return [Types::UpdateSamplingRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sampling_rule(
    #     sampling_rule_update: {
    #       rule_name: 'RuleName',
    #       rule_arn: 'RuleARN',
    #       resource_arn: 'ResourceARN',
    #       priority: 1,
    #       fixed_rate: 1.0,
    #       reservoir_size: 1,
    #       host: 'Host',
    #       service_name: 'ServiceName',
    #       service_type: 'ServiceType',
    #       http_method: 'HTTPMethod',
    #       url_path: 'URLPath',
    #       attributes: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSamplingRuleOutput
    #   resp.data.sampling_rule_record #=> Types::SamplingRuleRecord
    #   resp.data.sampling_rule_record.sampling_rule #=> Types::SamplingRule
    #   resp.data.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.data.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.data.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.data.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.data.sampling_rule_record.sampling_rule.host #=> String
    #   resp.data.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.data.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.data.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.data.sampling_rule_record.sampling_rule.attributes #=> Hash<String, String>
    #   resp.data.sampling_rule_record.sampling_rule.attributes['key'] #=> String
    #   resp.data.sampling_rule_record.created_at #=> Time
    #   resp.data.sampling_rule_record.modified_at #=> Time
    #
    def update_sampling_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSamplingRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSamplingRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSamplingRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottledException]),
        data_parser: Parsers::UpdateSamplingRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSamplingRule,
        stubs: @stubs,
        params_class: Params::UpdateSamplingRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sampling_rule
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
