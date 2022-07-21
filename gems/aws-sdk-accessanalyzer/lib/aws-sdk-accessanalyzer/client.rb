# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AccessAnalyzer
  # An API client for AccessAnalyzer
  # See {#initialize} for a full list of supported configuration options
  # <p>Identity and Access Management Access Analyzer helps identify potential resource-access risks by enabling you to
  #          identify any policies that grant access to an external principal. It does this by using
  #          logic-based reasoning to analyze resource-based policies in your Amazon Web Services environment. An
  #          external principal can be another Amazon Web Services account, a root user, an IAM user or role, a
  #          federated user, an Amazon Web Services service, or an anonymous user. You can also use IAM Access Analyzer to
  #          preview and validate public and cross-account access to your resources before deploying
  #          permissions changes. This guide describes the Identity and Access Management Access Analyzer operations that you can
  #          call programmatically. For general information about IAM Access Analyzer, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html">Identity and Access Management Access Analyzer</a> in the <b>IAM User Guide</b>.</p>
  #          <p>To start using IAM Access Analyzer, you first need to create an analyzer.</p>
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
    def initialize(config = AWS::SDK::AccessAnalyzer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retroactively applies the archive rule to existing findings that meet the archive rule
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ApplyArchiveRuleInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The Amazon resource name (ARN) of the analyzer.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to apply.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::ApplyArchiveRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_archive_rule(
    #     analyzer_arn: 'analyzerArn', # required
    #     rule_name: 'ruleName', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplyArchiveRuleOutput
    #
    def apply_archive_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplyArchiveRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplyArchiveRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplyArchiveRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ApplyArchiveRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplyArchiveRule,
        stubs: @stubs,
        params_class: Params::ApplyArchiveRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_archive_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the requested policy generation.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelPolicyGenerationInput}.
    #
    # @option params [String] :job_id
    #   <p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
    #            operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
    #            retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
    #            the policy generation request.</p>
    #
    # @return [Types::CancelPolicyGenerationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_policy_generation(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelPolicyGenerationOutput
    #
    def cancel_policy_generation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelPolicyGenerationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelPolicyGenerationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelPolicyGeneration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::CancelPolicyGeneration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelPolicyGeneration,
        stubs: @stubs,
        params_class: Params::CancelPolicyGenerationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_policy_generation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an access preview that allows you to preview IAM Access Analyzer findings for your
    #          resource before deploying resource permissions.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessPreviewInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the account analyzer</a> used to generate the access preview. You can only create an
    #            access preview for analyzers with an <code>Account</code> type and <code>Active</code>
    #            status.</p>
    #
    # @option params [Hash<String, Configuration>] :configurations
    #   <p>Access control configuration for your resource that is used to generate the access
    #            preview. The access preview includes findings for external access allowed to the resource
    #            with the proposed access control configuration. The configuration must contain exactly one
    #            element.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::CreateAccessPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_preview(
    #     analyzer_arn: 'analyzerArn', # required
    #     configurations: {
    #       'key' => {
    #         # One of:
    #         iam_role: {
    #           trust_policy: 'trustPolicy'
    #         },
    #         kms_key: {
    #           key_policies: {
    #             'key' => 'value'
    #           },
    #           grants: [
    #             {
    #               operations: [
    #                 'CreateGrant' # accepts ["CreateGrant", "Decrypt", "DescribeKey", "Encrypt", "GenerateDataKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateDataKeyWithoutPlaintext", "GetPublicKey", "ReEncryptFrom", "ReEncryptTo", "RetireGrant", "Sign", "Verify"]
    #               ], # required
    #               grantee_principal: 'granteePrincipal', # required
    #               retiring_principal: 'retiringPrincipal',
    #               constraints: {
    #                 encryption_context_equals: {
    #                   'key' => 'value'
    #                 },
    #               },
    #               issuing_account: 'issuingAccount' # required
    #             }
    #           ]
    #         },
    #         secrets_manager_secret: {
    #           kms_key_id: 'kmsKeyId',
    #           secret_policy: 'secretPolicy'
    #         },
    #         s3_bucket: {
    #           bucket_policy: 'bucketPolicy',
    #           bucket_acl_grants: [
    #             {
    #               permission: 'READ', # required - accepts ["READ", "WRITE", "READ_ACP", "WRITE_ACP", "FULL_CONTROL"]
    #               grantee: {
    #                 # One of:
    #                 id: 'id',
    #                 uri: 'uri'
    #               } # required
    #             }
    #           ],
    #           bucket_public_access_block: {
    #             ignore_public_acls: false, # required
    #             restrict_public_buckets: false # required
    #           },
    #           access_points: {
    #             'key' => {
    #               access_point_policy: 'accessPointPolicy',
    #               network_origin: {
    #                 # One of:
    #                 vpc_configuration: {
    #                   vpc_id: 'vpcId' # required
    #                 },
    #                 internet_configuration: { }
    #               }
    #             }
    #           }
    #         },
    #         sqs_queue: {
    #           queue_policy: 'queuePolicy'
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessPreviewOutput
    #   resp.data.id #=> String
    #
    def create_access_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessPreview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::CreateAccessPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessPreview,
        stubs: @stubs,
        params_class: Params::CreateAccessPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an analyzer for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAnalyzerInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to create.</p>
    #
    # @option params [String] :type
    #   <p>The type of analyzer to create. Only ACCOUNT and ORGANIZATION analyzers are supported.
    #            You can create only one analyzer per account per Region. You can create up to 5 analyzers
    #            per organization per Region.</p>
    #
    # @option params [Array<InlineArchiveRule>] :archive_rules
    #   <p>Specifies the archive rules to add for the analyzer. Archive rules automatically archive
    #            findings that meet the criteria you define for the rule.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the analyzer.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::CreateAnalyzerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analyzer(
    #     analyzer_name: 'analyzerName', # required
    #     type: 'ACCOUNT', # required - accepts ["ACCOUNT", "ORGANIZATION"]
    #     archive_rules: [
    #       {
    #         rule_name: 'ruleName', # required
    #         filter: {
    #           'key' => {
    #             eq: [
    #               'member'
    #             ],
    #             exists: false
    #           }
    #         } # required
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAnalyzerOutput
    #   resp.data.arn #=> String
    #
    def create_analyzer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAnalyzerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAnalyzerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAnalyzer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::CreateAnalyzer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAnalyzer,
        stubs: @stubs,
        params_class: Params::CreateAnalyzerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_analyzer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an archive rule for the specified analyzer. Archive rules automatically archive
    #          new findings that meet the criteria you define when you create the rule.</p>
    #          <p>To learn about filter keys that you can use to create an archive rule, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateArchiveRuleInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the created analyzer.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to create.</p>
    #
    # @option params [Hash<String, Criterion>] :filter
    #   <p>The criteria for the rule.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::CreateArchiveRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_archive_rule(
    #     analyzer_name: 'analyzerName', # required
    #     rule_name: 'ruleName', # required
    #     filter: {
    #       'key' => {
    #         eq: [
    #           'member'
    #         ],
    #         exists: false
    #       }
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateArchiveRuleOutput
    #
    def create_archive_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateArchiveRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateArchiveRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateArchiveRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::CreateArchiveRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateArchiveRule,
        stubs: @stubs,
        params_class: Params::CreateArchiveRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_archive_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled
    #          for the account or organization in the current or specific Region. All findings that were
    #          generated by the analyzer are deleted. You cannot undo this action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnalyzerInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::DeleteAnalyzerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analyzer(
    #     analyzer_name: 'analyzerName', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnalyzerOutput
    #
    def delete_analyzer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnalyzerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnalyzerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnalyzer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteAnalyzer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnalyzer,
        stubs: @stubs,
        params_class: Params::DeleteAnalyzerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_analyzer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified archive rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteArchiveRuleInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer that associated with the archive rule to delete.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::DeleteArchiveRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive_rule(
    #     analyzer_name: 'analyzerName', # required
    #     rule_name: 'ruleName', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteArchiveRuleOutput
    #
    def delete_archive_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteArchiveRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteArchiveRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteArchiveRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteArchiveRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteArchiveRule,
        stubs: @stubs,
        params_class: Params::DeleteArchiveRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_archive_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an access preview for the specified analyzer.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPreviewInput}.
    #
    # @option params [String] :access_preview_id
    #   <p>The unique ID for the access preview.</p>
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> used to generate the access preview.</p>
    #
    # @return [Types::GetAccessPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_preview(
    #     access_preview_id: 'accessPreviewId', # required
    #     analyzer_arn: 'analyzerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPreviewOutput
    #   resp.data.access_preview #=> Types::AccessPreview
    #   resp.data.access_preview.id #=> String
    #   resp.data.access_preview.analyzer_arn #=> String
    #   resp.data.access_preview.configurations #=> Hash<String, Configuration>
    #   resp.data.access_preview.configurations['key'] #=> Types::Configuration, one of [IamRole, KmsKey, SecretsManagerSecret, S3Bucket, SqsQueue]
    #   resp.data.access_preview.configurations['key'].iam_role #=> Types::IamRoleConfiguration
    #   resp.data.access_preview.configurations['key'].iam_role.trust_policy #=> String
    #   resp.data.access_preview.configurations['key'].kms_key #=> Types::KmsKeyConfiguration
    #   resp.data.access_preview.configurations['key'].kms_key.key_policies #=> Hash<String, String>
    #   resp.data.access_preview.configurations['key'].kms_key.key_policies['key'] #=> String
    #   resp.data.access_preview.configurations['key'].kms_key.grants #=> Array<KmsGrantConfiguration>
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0] #=> Types::KmsGrantConfiguration
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].operations #=> Array<String>
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].operations[0] #=> String, one of ["CreateGrant", "Decrypt", "DescribeKey", "Encrypt", "GenerateDataKey", "GenerateDataKeyPair", "GenerateDataKeyPairWithoutPlaintext", "GenerateDataKeyWithoutPlaintext", "GetPublicKey", "ReEncryptFrom", "ReEncryptTo", "RetireGrant", "Sign", "Verify"]
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].grantee_principal #=> String
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].retiring_principal #=> String
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].constraints #=> Types::KmsGrantConstraints
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].constraints.encryption_context_equals #=> Hash<String, String>
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].constraints.encryption_context_equals['key'] #=> String
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].constraints.encryption_context_subset #=> Hash<String, String>
    #   resp.data.access_preview.configurations['key'].kms_key.grants[0].issuing_account #=> String
    #   resp.data.access_preview.configurations['key'].secrets_manager_secret #=> Types::SecretsManagerSecretConfiguration
    #   resp.data.access_preview.configurations['key'].secrets_manager_secret.kms_key_id #=> String
    #   resp.data.access_preview.configurations['key'].secrets_manager_secret.secret_policy #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket #=> Types::S3BucketConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_policy #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants #=> Array<S3BucketAclGrantConfiguration>
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants[0] #=> Types::S3BucketAclGrantConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants[0].permission #=> String, one of ["READ", "WRITE", "READ_ACP", "WRITE_ACP", "FULL_CONTROL"]
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants[0].grantee #=> Types::AclGrantee, one of [Id, Uri]
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants[0].grantee.id #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_acl_grants[0].grantee.uri #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_public_access_block #=> Types::S3PublicAccessBlockConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_public_access_block.ignore_public_acls #=> Boolean
    #   resp.data.access_preview.configurations['key'].s3_bucket.bucket_public_access_block.restrict_public_buckets #=> Boolean
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points #=> Hash<String, S3AccessPointConfiguration>
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'] #=> Types::S3AccessPointConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].access_point_policy #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].public_access_block #=> Types::S3PublicAccessBlockConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].network_origin #=> Types::NetworkOriginConfiguration, one of [VpcConfiguration, InternetConfiguration]
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].network_origin.vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].network_origin.vpc_configuration.vpc_id #=> String
    #   resp.data.access_preview.configurations['key'].s3_bucket.access_points['key'].network_origin.internet_configuration #=> Types::InternetConfiguration
    #   resp.data.access_preview.configurations['key'].sqs_queue #=> Types::SqsQueueConfiguration
    #   resp.data.access_preview.configurations['key'].sqs_queue.queue_policy #=> String
    #   resp.data.access_preview.created_at #=> Time
    #   resp.data.access_preview.status #=> String, one of ["COMPLETED", "CREATING", "FAILED"]
    #   resp.data.access_preview.status_reason #=> Types::AccessPreviewStatusReason
    #   resp.data.access_preview.status_reason.code #=> String, one of ["INTERNAL_ERROR", "INVALID_CONFIGURATION"]
    #
    def get_access_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPreview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetAccessPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPreview,
        stubs: @stubs,
        params_class: Params::GetAccessPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a resource that was analyzed.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAnalyzedResourceInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> to retrieve information from.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve information about.</p>
    #
    # @return [Types::GetAnalyzedResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzed_resource(
    #     analyzer_arn: 'analyzerArn', # required
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnalyzedResourceOutput
    #   resp.data.resource #=> Types::AnalyzedResource
    #   resp.data.resource.resource_arn #=> String
    #   resp.data.resource.resource_type #=> String, one of ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #   resp.data.resource.created_at #=> Time
    #   resp.data.resource.analyzed_at #=> Time
    #   resp.data.resource.updated_at #=> Time
    #   resp.data.resource.is_public #=> Boolean
    #   resp.data.resource.actions #=> Array<String>
    #   resp.data.resource.actions[0] #=> String
    #   resp.data.resource.shared_via #=> Array<String>
    #   resp.data.resource.shared_via[0] #=> String
    #   resp.data.resource.status #=> String, one of ["ACTIVE", "ARCHIVED", "RESOLVED"]
    #   resp.data.resource.resource_owner_account #=> String
    #   resp.data.resource.error #=> String
    #
    def get_analyzed_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnalyzedResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnalyzedResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnalyzedResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetAnalyzedResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnalyzedResource,
        stubs: @stubs,
        params_class: Params::GetAnalyzedResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_analyzed_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified analyzer.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAnalyzerInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer retrieved.</p>
    #
    # @return [Types::GetAnalyzerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzer(
    #     analyzer_name: 'analyzerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnalyzerOutput
    #   resp.data.analyzer #=> Types::AnalyzerSummary
    #   resp.data.analyzer.arn #=> String
    #   resp.data.analyzer.name #=> String
    #   resp.data.analyzer.type #=> String, one of ["ACCOUNT", "ORGANIZATION"]
    #   resp.data.analyzer.created_at #=> Time
    #   resp.data.analyzer.last_resource_analyzed #=> String
    #   resp.data.analyzer.last_resource_analyzed_at #=> Time
    #   resp.data.analyzer.tags #=> Hash<String, String>
    #   resp.data.analyzer.tags['key'] #=> String
    #   resp.data.analyzer.status #=> String, one of ["ACTIVE", "CREATING", "DISABLED", "FAILED"]
    #   resp.data.analyzer.status_reason #=> Types::StatusReason
    #   resp.data.analyzer.status_reason.code #=> String, one of ["AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"]
    #
    def get_analyzer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnalyzerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnalyzerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnalyzer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetAnalyzer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnalyzer,
        stubs: @stubs,
        params_class: Params::GetAnalyzerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_analyzer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an archive rule.</p>
    #          <p>To learn about filter keys that you can use to create an archive rule, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetArchiveRuleInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to retrieve rules from.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to retrieve.</p>
    #
    # @return [Types::GetArchiveRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_rule(
    #     analyzer_name: 'analyzerName', # required
    #     rule_name: 'ruleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetArchiveRuleOutput
    #   resp.data.archive_rule #=> Types::ArchiveRuleSummary
    #   resp.data.archive_rule.rule_name #=> String
    #   resp.data.archive_rule.filter #=> Hash<String, Criterion>
    #   resp.data.archive_rule.filter['key'] #=> Types::Criterion
    #   resp.data.archive_rule.filter['key'].eq #=> Array<String>
    #   resp.data.archive_rule.filter['key'].eq[0] #=> String
    #   resp.data.archive_rule.filter['key'].neq #=> Array<String>
    #   resp.data.archive_rule.filter['key'].contains #=> Array<String>
    #   resp.data.archive_rule.filter['key'].exists #=> Boolean
    #   resp.data.archive_rule.created_at #=> Time
    #   resp.data.archive_rule.updated_at #=> Time
    #
    def get_archive_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetArchiveRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetArchiveRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetArchiveRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetArchiveRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetArchiveRule,
        stubs: @stubs,
        params_class: Params::GetArchiveRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_archive_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified finding.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> that generated the finding.</p>
    #
    # @option params [String] :id
    #   <p>The ID of the finding to retrieve.</p>
    #
    # @return [Types::GetFindingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding(
    #     analyzer_arn: 'analyzerArn', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingOutput
    #   resp.data.finding #=> Types::Finding
    #   resp.data.finding.id #=> String
    #   resp.data.finding.principal #=> Hash<String, String>
    #   resp.data.finding.principal['key'] #=> String
    #   resp.data.finding.action #=> Array<String>
    #   resp.data.finding.action[0] #=> String
    #   resp.data.finding.resource #=> String
    #   resp.data.finding.is_public #=> Boolean
    #   resp.data.finding.resource_type #=> String, one of ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #   resp.data.finding.condition #=> Hash<String, String>
    #   resp.data.finding.condition['key'] #=> String
    #   resp.data.finding.created_at #=> Time
    #   resp.data.finding.analyzed_at #=> Time
    #   resp.data.finding.updated_at #=> Time
    #   resp.data.finding.status #=> String, one of ["ACTIVE", "ARCHIVED", "RESOLVED"]
    #   resp.data.finding.resource_owner_account #=> String
    #   resp.data.finding.error #=> String
    #   resp.data.finding.sources #=> Array<FindingSource>
    #   resp.data.finding.sources[0] #=> Types::FindingSource
    #   resp.data.finding.sources[0].type #=> String, one of ["POLICY", "BUCKET_ACL", "S3_ACCESS_POINT"]
    #   resp.data.finding.sources[0].detail #=> Types::FindingSourceDetail
    #   resp.data.finding.sources[0].detail.access_point_arn #=> String
    #
    def get_finding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFinding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetFinding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFinding,
        stubs: @stubs,
        params_class: Params::GetFindingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_finding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the policy that was generated using <code>StartPolicyGeneration</code>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetGeneratedPolicyInput}.
    #
    # @option params [String] :job_id
    #   <p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
    #            operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
    #            retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
    #            the policy generation request.</p>
    #
    # @option params [Boolean] :include_resource_placeholders
    #   <p>The level of detail that you want to generate. You can specify whether to generate
    #            policies with placeholders for resource ARNs for actions that support resource level
    #            granularity in policies.</p>
    #            <p>For example, in the resource section of a policy, you can receive a placeholder such as
    #               <code>"Resource":"arn:aws:s3:::${BucketName}"</code> instead of <code>"*"</code>.</p>
    #
    # @option params [Boolean] :include_service_level_template
    #   <p>The level of detail that you want to generate. You can specify whether to generate
    #            service-level policies. </p>
    #            <p>IAM Access Analyzer uses <code>iam:servicelastaccessed</code> to identify services that have
    #            been used recently to create this service-level template.</p>
    #
    # @return [Types::GetGeneratedPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_generated_policy(
    #     job_id: 'jobId', # required
    #     include_resource_placeholders: false,
    #     include_service_level_template: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGeneratedPolicyOutput
    #   resp.data.job_details #=> Types::JobDetails
    #   resp.data.job_details.job_id #=> String
    #   resp.data.job_details.status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"]
    #   resp.data.job_details.started_on #=> Time
    #   resp.data.job_details.completed_on #=> Time
    #   resp.data.job_details.job_error #=> Types::JobError
    #   resp.data.job_details.job_error.code #=> String, one of ["AUTHORIZATION_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SERVICE_QUOTA_EXCEEDED_ERROR", "SERVICE_ERROR"]
    #   resp.data.job_details.job_error.message #=> String
    #   resp.data.generated_policy_result #=> Types::GeneratedPolicyResult
    #   resp.data.generated_policy_result.properties #=> Types::GeneratedPolicyProperties
    #   resp.data.generated_policy_result.properties.is_complete #=> Boolean
    #   resp.data.generated_policy_result.properties.principal_arn #=> String
    #   resp.data.generated_policy_result.properties.cloud_trail_properties #=> Types::CloudTrailProperties
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties #=> Array<TrailProperties>
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties[0] #=> Types::TrailProperties
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].cloud_trail_arn #=> String
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].regions #=> Array<String>
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].regions[0] #=> String
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.trail_properties[0].all_regions #=> Boolean
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.start_time #=> Time
    #   resp.data.generated_policy_result.properties.cloud_trail_properties.end_time #=> Time
    #   resp.data.generated_policy_result.generated_policies #=> Array<GeneratedPolicy>
    #   resp.data.generated_policy_result.generated_policies[0] #=> Types::GeneratedPolicy
    #   resp.data.generated_policy_result.generated_policies[0].policy #=> String
    #
    def get_generated_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGeneratedPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGeneratedPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGeneratedPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetGeneratedPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGeneratedPolicy,
        stubs: @stubs,
        params_class: Params::GetGeneratedPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_generated_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of access preview findings generated by the specified access
    #          preview.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccessPreviewFindingsInput}.
    #
    # @option params [String] :access_preview_id
    #   <p>The unique ID for the access preview.</p>
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> used to generate the access.</p>
    #
    # @option params [Hash<String, Criterion>] :filter
    #   <p>Criteria to filter the returned findings.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListAccessPreviewFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_preview_findings(
    #     access_preview_id: 'accessPreviewId', # required
    #     analyzer_arn: 'analyzerArn', # required
    #     filter: {
    #       'key' => {
    #         eq: [
    #           'member'
    #         ],
    #         exists: false
    #       }
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessPreviewFindingsOutput
    #   resp.data.findings #=> Array<AccessPreviewFinding>
    #   resp.data.findings[0] #=> Types::AccessPreviewFinding
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].existing_finding_id #=> String
    #   resp.data.findings[0].existing_finding_status #=> String, one of ["ACTIVE", "ARCHIVED", "RESOLVED"]
    #   resp.data.findings[0].principal #=> Hash<String, String>
    #   resp.data.findings[0].principal['key'] #=> String
    #   resp.data.findings[0].action #=> Array<String>
    #   resp.data.findings[0].action[0] #=> String
    #   resp.data.findings[0].condition #=> Hash<String, String>
    #   resp.data.findings[0].condition['key'] #=> String
    #   resp.data.findings[0].resource #=> String
    #   resp.data.findings[0].is_public #=> Boolean
    #   resp.data.findings[0].resource_type #=> String, one of ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #   resp.data.findings[0].created_at #=> Time
    #   resp.data.findings[0].change_type #=> String, one of ["CHANGED", "NEW", "UNCHANGED"]
    #   resp.data.findings[0].status #=> String, one of ["ACTIVE", "ARCHIVED", "RESOLVED"]
    #   resp.data.findings[0].resource_owner_account #=> String
    #   resp.data.findings[0].error #=> String
    #   resp.data.findings[0].sources #=> Array<FindingSource>
    #   resp.data.findings[0].sources[0] #=> Types::FindingSource
    #   resp.data.findings[0].sources[0].type #=> String, one of ["POLICY", "BUCKET_ACL", "S3_ACCESS_POINT"]
    #   resp.data.findings[0].sources[0].detail #=> Types::FindingSourceDetail
    #   resp.data.findings[0].sources[0].detail.access_point_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_access_preview_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessPreviewFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessPreviewFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessPreviewFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListAccessPreviewFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessPreviewFindings,
        stubs: @stubs,
        params_class: Params::ListAccessPreviewFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_preview_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of access previews for the specified analyzer.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccessPreviewsInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> used to generate the access preview.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListAccessPreviewsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_previews(
    #     analyzer_arn: 'analyzerArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessPreviewsOutput
    #   resp.data.access_previews #=> Array<AccessPreviewSummary>
    #   resp.data.access_previews[0] #=> Types::AccessPreviewSummary
    #   resp.data.access_previews[0].id #=> String
    #   resp.data.access_previews[0].analyzer_arn #=> String
    #   resp.data.access_previews[0].created_at #=> Time
    #   resp.data.access_previews[0].status #=> String, one of ["COMPLETED", "CREATING", "FAILED"]
    #   resp.data.access_previews[0].status_reason #=> Types::AccessPreviewStatusReason
    #   resp.data.access_previews[0].status_reason.code #=> String, one of ["INTERNAL_ERROR", "INVALID_CONFIGURATION"]
    #   resp.data.next_token #=> String
    #
    def list_access_previews(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessPreviewsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessPreviewsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessPreviews
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListAccessPreviews
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessPreviews,
        stubs: @stubs,
        params_class: Params::ListAccessPreviewsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_previews
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of resources of the specified type that have been analyzed by the
    #          specified analyzer..</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnalyzedResourcesInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> to retrieve a list of analyzed resources from.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListAnalyzedResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzed_resources(
    #     analyzer_arn: 'analyzerArn', # required
    #     resource_type: 'AWS::S3::Bucket', # accepts ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnalyzedResourcesOutput
    #   resp.data.analyzed_resources #=> Array<AnalyzedResourceSummary>
    #   resp.data.analyzed_resources[0] #=> Types::AnalyzedResourceSummary
    #   resp.data.analyzed_resources[0].resource_arn #=> String
    #   resp.data.analyzed_resources[0].resource_owner_account #=> String
    #   resp.data.analyzed_resources[0].resource_type #=> String, one of ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #   resp.data.next_token #=> String
    #
    def list_analyzed_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnalyzedResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnalyzedResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnalyzedResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListAnalyzedResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnalyzedResources,
        stubs: @stubs,
        params_class: Params::ListAnalyzedResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_analyzed_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of analyzers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnalyzersInput}.
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :type
    #   <p>The type of analyzer.</p>
    #
    # @return [Types::ListAnalyzersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzers(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     type: 'ACCOUNT' # accepts ["ACCOUNT", "ORGANIZATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnalyzersOutput
    #   resp.data.analyzers #=> Array<AnalyzerSummary>
    #   resp.data.analyzers[0] #=> Types::AnalyzerSummary
    #   resp.data.analyzers[0].arn #=> String
    #   resp.data.analyzers[0].name #=> String
    #   resp.data.analyzers[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION"]
    #   resp.data.analyzers[0].created_at #=> Time
    #   resp.data.analyzers[0].last_resource_analyzed #=> String
    #   resp.data.analyzers[0].last_resource_analyzed_at #=> Time
    #   resp.data.analyzers[0].tags #=> Hash<String, String>
    #   resp.data.analyzers[0].tags['key'] #=> String
    #   resp.data.analyzers[0].status #=> String, one of ["ACTIVE", "CREATING", "DISABLED", "FAILED"]
    #   resp.data.analyzers[0].status_reason #=> Types::StatusReason
    #   resp.data.analyzers[0].status_reason.code #=> String, one of ["AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"]
    #   resp.data.next_token #=> String
    #
    def list_analyzers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnalyzersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnalyzersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnalyzers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListAnalyzers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnalyzers,
        stubs: @stubs,
        params_class: Params::ListAnalyzersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_analyzers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of archive rules created for the specified analyzer.</p>
    #
    # @param [Hash] params
    #   See {Types::ListArchiveRulesInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to retrieve rules from.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the request.</p>
    #
    # @return [Types::ListArchiveRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archive_rules(
    #     analyzer_name: 'analyzerName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListArchiveRulesOutput
    #   resp.data.archive_rules #=> Array<ArchiveRuleSummary>
    #   resp.data.archive_rules[0] #=> Types::ArchiveRuleSummary
    #   resp.data.archive_rules[0].rule_name #=> String
    #   resp.data.archive_rules[0].filter #=> Hash<String, Criterion>
    #   resp.data.archive_rules[0].filter['key'] #=> Types::Criterion
    #   resp.data.archive_rules[0].filter['key'].eq #=> Array<String>
    #   resp.data.archive_rules[0].filter['key'].eq[0] #=> String
    #   resp.data.archive_rules[0].filter['key'].neq #=> Array<String>
    #   resp.data.archive_rules[0].filter['key'].contains #=> Array<String>
    #   resp.data.archive_rules[0].filter['key'].exists #=> Boolean
    #   resp.data.archive_rules[0].created_at #=> Time
    #   resp.data.archive_rules[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_archive_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListArchiveRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListArchiveRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListArchiveRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListArchiveRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListArchiveRules,
        stubs: @stubs,
        params_class: Params::ListArchiveRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_archive_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of findings generated by the specified analyzer.</p>
    #          <p>To learn about filter keys that you can use to retrieve a list of findings, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> to retrieve findings from.</p>
    #
    # @option params [Hash<String, Criterion>] :filter
    #   <p>A filter to match for the findings to return.</p>
    #
    # @option params [SortCriteria] :sort
    #   <p>The sort order for the findings returned.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings(
    #     analyzer_arn: 'analyzerArn', # required
    #     filter: {
    #       'key' => {
    #         eq: [
    #           'member'
    #         ],
    #         exists: false
    #       }
    #     },
    #     sort: {
    #       attribute_name: 'attributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsOutput
    #   resp.data.findings #=> Array<FindingSummary>
    #   resp.data.findings[0] #=> Types::FindingSummary
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].principal #=> Hash<String, String>
    #   resp.data.findings[0].principal['key'] #=> String
    #   resp.data.findings[0].action #=> Array<String>
    #   resp.data.findings[0].action[0] #=> String
    #   resp.data.findings[0].resource #=> String
    #   resp.data.findings[0].is_public #=> Boolean
    #   resp.data.findings[0].resource_type #=> String, one of ["AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key", "AWS::SecretsManager::Secret"]
    #   resp.data.findings[0].condition #=> Hash<String, String>
    #   resp.data.findings[0].condition['key'] #=> String
    #   resp.data.findings[0].created_at #=> Time
    #   resp.data.findings[0].analyzed_at #=> Time
    #   resp.data.findings[0].updated_at #=> Time
    #   resp.data.findings[0].status #=> String, one of ["ACTIVE", "ARCHIVED", "RESOLVED"]
    #   resp.data.findings[0].resource_owner_account #=> String
    #   resp.data.findings[0].error #=> String
    #   resp.data.findings[0].sources #=> Array<FindingSource>
    #   resp.data.findings[0].sources[0] #=> Types::FindingSource
    #   resp.data.findings[0].sources[0].type #=> String, one of ["POLICY", "BUCKET_ACL", "S3_ACCESS_POINT"]
    #   resp.data.findings[0].sources[0].detail #=> Types::FindingSourceDetail
    #   resp.data.findings[0].sources[0].detail.access_point_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindings,
        stubs: @stubs,
        params_class: Params::ListFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the policy generations requested in the last seven days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPolicyGenerationsInput}.
    #
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM entity (user or role) for which you are generating a policy. Use
    #            this with <code>ListGeneratedPolicies</code> to filter the results to only include results
    #            for a specific principal.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @return [Types::ListPolicyGenerationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_generations(
    #     principal_arn: 'principalArn',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyGenerationsOutput
    #   resp.data.policy_generations #=> Array<PolicyGeneration>
    #   resp.data.policy_generations[0] #=> Types::PolicyGeneration
    #   resp.data.policy_generations[0].job_id #=> String
    #   resp.data.policy_generations[0].principal_arn #=> String
    #   resp.data.policy_generations[0].status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"]
    #   resp.data.policy_generations[0].started_on #=> Time
    #   resp.data.policy_generations[0].completed_on #=> Time
    #   resp.data.next_token #=> String
    #
    def list_policy_generations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyGenerationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyGenerationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyGenerations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListPolicyGenerations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyGenerations,
        stubs: @stubs,
        params_class: Params::ListPolicyGenerationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_generations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of tags applied to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve tags from.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Starts the policy generation request.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPolicyGenerationInput}.
    #
    # @option params [PolicyGenerationDetails] :policy_generation_details
    #   <p>Contains the ARN of the IAM entity (user or role) for which you are generating a
    #            policy.</p>
    #
    # @option params [CloudTrailDetails] :cloud_trail_details
    #   <p>A <code>CloudTrailDetails</code> object that contains details about a <code>Trail</code>
    #            that you want to analyze to generate policies.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, the subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services
    #            SDK.</p>
    #
    # @return [Types::StartPolicyGenerationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_policy_generation(
    #     policy_generation_details: {
    #       principal_arn: 'principalArn' # required
    #     }, # required
    #     cloud_trail_details: {
    #       trails: [
    #         {
    #           cloud_trail_arn: 'cloudTrailArn', # required
    #           regions: [
    #             'member'
    #           ],
    #           all_regions: false
    #         }
    #       ], # required
    #       access_role: 'accessRole', # required
    #       start_time: Time.now, # required
    #       end_time: Time.now
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPolicyGenerationOutput
    #   resp.data.job_id #=> String
    #
    def start_policy_generation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPolicyGenerationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPolicyGenerationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPolicyGeneration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StartPolicyGeneration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPolicyGeneration,
        stubs: @stubs,
        params_class: Params::StartPolicyGenerationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_policy_generation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Immediately starts a scan of the policies applied to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::StartResourceScanInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> to use to scan the policies applied to the specified
    #            resource.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to scan.</p>
    #
    # @return [Types::StartResourceScanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_scan(
    #     analyzer_arn: 'analyzerArn', # required
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartResourceScanOutput
    #
    def start_resource_scan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartResourceScanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartResourceScanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartResourceScan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StartResourceScan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartResourceScan,
        stubs: @stubs,
        params_class: Params::StartResourceScanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_resource_scan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a tag to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to add the tag to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Removes a tag from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove the tag from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key for the tag to add.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Updates the criteria and values for the specified archive rule.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateArchiveRuleInput}.
    #
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to update the archive rules for.</p>
    #
    # @option params [String] :rule_name
    #   <p>The name of the rule to update.</p>
    #
    # @option params [Hash<String, Criterion>] :filter
    #   <p>A filter to match for the rules to update. Only rules that match the filter are
    #            updated.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::UpdateArchiveRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_archive_rule(
    #     analyzer_name: 'analyzerName', # required
    #     rule_name: 'ruleName', # required
    #     filter: {
    #       'key' => {
    #         eq: [
    #           'member'
    #         ],
    #         exists: false
    #       }
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateArchiveRuleOutput
    #
    def update_archive_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateArchiveRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateArchiveRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateArchiveRule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateArchiveRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateArchiveRule,
        stubs: @stubs,
        params_class: Params::UpdateArchiveRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_archive_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status for the specified findings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFindingsInput}.
    #
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of
    #               the analyzer</a> that generated the findings to update.</p>
    #
    # @option params [String] :status
    #   <p>The state represents the action to take to update the finding Status. Use
    #               <code>ARCHIVE</code> to change an Active finding to an Archived finding. Use
    #               <code>ACTIVE</code> to change an Archived finding to an Active finding.</p>
    #
    # @option params [Array<String>] :ids
    #   <p>The IDs of the findings to update.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource identified in the finding.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token.</p>
    #
    # @return [Types::UpdateFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings(
    #     analyzer_arn: 'analyzerArn', # required
    #     status: 'ACTIVE', # required - accepts ["ACTIVE", "ARCHIVED"]
    #     ids: [
    #       'member'
    #     ],
    #     resource_arn: 'resourceArn',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFindingsOutput
    #
    def update_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFindings,
        stubs: @stubs,
        params_class: Params::UpdateFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests the validation of a policy and returns a list of findings. The findings help
    #          you identify issues and provide actionable recommendations to resolve the issue and enable
    #          you to author functional policies that meet security best practices. </p>
    #
    # @param [Hash] params
    #   See {Types::ValidatePolicyInput}.
    #
    # @option params [String] :locale
    #   <p>The locale to use for localizing the findings.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    #
    # @option params [String] :policy_document
    #   <p>The JSON policy document to use as the content for the policy.</p>
    #
    # @option params [String] :policy_type
    #   <p>The type of policy to validate. Identity policies grant permissions to IAM principals.
    #            Identity policies include managed and inline policies for IAM roles, users, and groups.
    #            They also include service-control policies (SCPs) that are attached to an Amazon Web Services
    #            organization, organizational unit (OU), or an account.</p>
    #            <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust
    #            policies for IAM roles and bucket policies for Amazon S3 buckets. You can provide a generic
    #            input such as identity policy or resource policy or a specific input such as managed policy
    #            or Amazon S3 bucket policy. </p>
    #
    # @option params [String] :validate_policy_resource_type
    #   <p>The type of resource to attach to your resource policy. Specify a value for the policy
    #            validation resource type only if the policy type is <code>RESOURCE_POLICY</code>. For
    #            example, to validate a resource policy to attach to an Amazon S3 bucket, you can choose
    #               <code>AWS::S3::Bucket</code> for the policy validation resource type.</p>
    #            <p>For resource types not supported as valid values, IAM Access Analyzer runs policy checks that
    #            apply to all resource policies. For example, to validate a resource policy to attach to a
    #            KMS key, do not specify a value for the policy validation resource type and IAM Access Analyzer
    #            will run policy checks that apply to all resource policies.</p>
    #
    # @return [Types::ValidatePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_policy(
    #     locale: 'DE', # accepts ["DE", "EN", "ES", "FR", "IT", "JA", "KO", "PT_BR", "ZH_CN", "ZH_TW"]
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     policy_document: 'policyDocument', # required
    #     policy_type: 'IDENTITY_POLICY', # required - accepts ["IDENTITY_POLICY", "RESOURCE_POLICY", "SERVICE_CONTROL_POLICY"]
    #     validate_policy_resource_type: 'AWS::S3::Bucket' # accepts ["AWS::S3::Bucket", "AWS::S3::AccessPoint", "AWS::S3::MultiRegionAccessPoint", "AWS::S3ObjectLambda::AccessPoint"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidatePolicyOutput
    #   resp.data.findings #=> Array<ValidatePolicyFinding>
    #   resp.data.findings[0] #=> Types::ValidatePolicyFinding
    #   resp.data.findings[0].finding_details #=> String
    #   resp.data.findings[0].finding_type #=> String, one of ["ERROR", "SECURITY_WARNING", "SUGGESTION", "WARNING"]
    #   resp.data.findings[0].issue_code #=> String
    #   resp.data.findings[0].learn_more_link #=> String
    #   resp.data.findings[0].locations #=> Array<Location>
    #   resp.data.findings[0].locations[0] #=> Types::Location
    #   resp.data.findings[0].locations[0].path #=> Array<PathElement>
    #   resp.data.findings[0].locations[0].path[0] #=> Types::PathElement, one of [Index, Key, Substring, Value]
    #   resp.data.findings[0].locations[0].path[0].index #=> Integer
    #   resp.data.findings[0].locations[0].path[0].key #=> String
    #   resp.data.findings[0].locations[0].path[0].substring #=> Types::Substring
    #   resp.data.findings[0].locations[0].path[0].substring.start #=> Integer
    #   resp.data.findings[0].locations[0].path[0].substring.length #=> Integer
    #   resp.data.findings[0].locations[0].path[0].value #=> String
    #   resp.data.findings[0].locations[0].span #=> Types::Span
    #   resp.data.findings[0].locations[0].span.start #=> Types::Position
    #   resp.data.findings[0].locations[0].span.start.line #=> Integer
    #   resp.data.findings[0].locations[0].span.start.column #=> Integer
    #   resp.data.findings[0].locations[0].span.start.offset #=> Integer
    #   resp.data.findings[0].locations[0].span.end #=> Types::Position
    #   resp.data.next_token #=> String
    #
    def validate_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidatePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidatePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidatePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ValidatePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidatePolicy,
        stubs: @stubs,
        params_class: Params::ValidatePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_policy
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
