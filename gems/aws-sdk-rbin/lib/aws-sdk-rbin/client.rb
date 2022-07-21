# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Rbin
  # An API client for AmazonRecycleBin
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the <i>Recycle Bin API Reference</i>. This documentation provides
  #       descriptions and syntax for each of the actions and data types in Recycle Bin.</p>
  #
  #          <p>Recycle Bin is a resource recovery feature that enables you to restore accidentally
  #       deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your resources are
  #       deleted, they are retained in the Recycle Bin for a time period that you specify.</p>
  #
  #          <p>You can restore a resource from the Recycle Bin at any time before its retention period
  #       expires. After you restore a resource from the Recycle Bin, the resource is removed from the
  #       Recycle Bin, and you can then use it in the same way you use any other resource of that type
  #       in your account. If the retention period expires and the resource is not restored, the resource
  #       is permanently deleted from the Recycle Bin and is no longer available for recovery. For more
  #       information about Recycle Bin, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-recycle-bin.html">
  #         Recycle Bin</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::Rbin::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Recycle Bin retention rule. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule">
    #       Create Recycle Bin retention rules</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleInput}.
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    # @option params [String] :description
    #   <p>The retention rule description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>Specifies the resource tags to use to identify resources that are to be retained by a
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule
    #         does not have any resource tags specified. It retains all deleted resources of the specified
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #
    # @return [Types::CreateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule(
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: 'DAYS' # required - accepts ["DAYS"]
    #     }, # required
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     resource_type: 'EBS_SNAPSHOT', # required - accepts ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #     resource_tags: [
    #       {
    #         resource_tag_key: 'ResourceTagKey', # required
    #         resource_tag_value: 'ResourceTagValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleOutput
    #   resp.data.identifier #=> String
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.retention_period_value #=> Integer
    #   resp.data.retention_period.retention_period_unit #=> String, one of ["DAYS"]
    #   resp.data.description #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.resource_type #=> String, one of ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #   resp.data.resource_tags #=> Array<ResourceTag>
    #   resp.data.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.resource_tags[0].resource_tag_key #=> String
    #   resp.data.resource_tags[0].resource_tag_value #=> String
    #   resp.data.status #=> String, one of ["pending", "available"]
    #
    def create_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRule,
        stubs: @stubs,
        params_class: Params::CreateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Recycle Bin retention rule. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule">
    #       Delete Recycle Bin retention rules</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleInput}.
    #
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    # @return [Types::DeleteRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule(
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleOutput
    #
    def delete_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRule,
        stubs: @stubs,
        params_class: Params::DeleteRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Recycle Bin retention rule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRuleInput}.
    #
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    # @return [Types::GetRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule(
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRuleOutput
    #   resp.data.identifier #=> String
    #   resp.data.description #=> String
    #   resp.data.resource_type #=> String, one of ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.retention_period_value #=> Integer
    #   resp.data.retention_period.retention_period_unit #=> String, one of ["DAYS"]
    #   resp.data.resource_tags #=> Array<ResourceTag>
    #   resp.data.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.resource_tags[0].resource_tag_key #=> String
    #   resp.data.resource_tags[0].resource_tag_value #=> String
    #   resp.data.status #=> String, one of ["pending", "available"]
    #
    def get_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRule,
        stubs: @stubs,
        params_class: Params::GetRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Recycle Bin retention rules in the Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type retained by the retention rule. Only retention rules that retain
    #         the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed
    #         AMIs are supported. To list retention rules that retain snapshots, specify
    #         <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify
    #         <code>EC2_IMAGE</code>.</p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>Information about the resource tags used to identify resources that are retained by the retention
    #         rule.</p>
    #
    # @return [Types::ListRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     resource_type: 'EBS_SNAPSHOT', # required - accepts ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #     resource_tags: [
    #       {
    #         resource_tag_key: 'ResourceTagKey', # required
    #         resource_tag_value: 'ResourceTagValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesOutput
    #   resp.data.rules #=> Array<RuleSummary>
    #   resp.data.rules[0] #=> Types::RuleSummary
    #   resp.data.rules[0].identifier #=> String
    #   resp.data.rules[0].description #=> String
    #   resp.data.rules[0].retention_period #=> Types::RetentionPeriod
    #   resp.data.rules[0].retention_period.retention_period_value #=> Integer
    #   resp.data.rules[0].retention_period.retention_period_unit #=> String, one of ["DAYS"]
    #   resp.data.next_token #=> String
    #
    def list_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRules,
        stubs: @stubs,
        params_class: Params::ListRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags assigned to a retention rule.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
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

    # <p>Assigns tags to the specified retention rule.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Unassigns a tag from a retention rule.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Updates an existing Recycle Bin retention rule. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule">
    #       Update Recycle Bin retention rules</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleInput}.
    #
    # @option params [String] :identifier
    #   <p>The unique ID of the retention rule.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #
    # @option params [String] :description
    #   <p>The retention rule description.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    #
    # @option params [Array<ResourceTag>] :resource_tags
    #   <p>Specifies the resource tags to use to identify resources that are to be retained by a
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule
    #         does not have any resource tags specified. It retains all deleted resources of the specified
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #
    # @return [Types::UpdateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule(
    #     identifier: 'Identifier', # required
    #     retention_period: {
    #       retention_period_value: 1, # required
    #       retention_period_unit: 'DAYS' # required - accepts ["DAYS"]
    #     },
    #     description: 'Description',
    #     resource_type: 'EBS_SNAPSHOT', # accepts ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #     resource_tags: [
    #       {
    #         resource_tag_key: 'ResourceTagKey', # required
    #         resource_tag_value: 'ResourceTagValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleOutput
    #   resp.data.identifier #=> String
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.retention_period_value #=> Integer
    #   resp.data.retention_period.retention_period_unit #=> String, one of ["DAYS"]
    #   resp.data.description #=> String
    #   resp.data.resource_type #=> String, one of ["EBS_SNAPSHOT", "EC2_IMAGE"]
    #   resp.data.resource_tags #=> Array<ResourceTag>
    #   resp.data.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.resource_tags[0].resource_tag_key #=> String
    #   resp.data.resource_tags[0].resource_tag_value #=> String
    #   resp.data.status #=> String, one of ["pending", "available"]
    #
    def update_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRule,
        stubs: @stubs,
        params_class: Params::UpdateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule
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
