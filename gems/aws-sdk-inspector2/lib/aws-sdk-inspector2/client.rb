# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Inspector2
  # An API client for Inspector2
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Inspector is a vulnerability discovery service that automates continuous scanning for
  #          security vulnerabilities within your Amazon EC2 and Amazon ECR environments.</p>
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
    def initialize(config = AWS::SDK::Inspector2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates an Amazon Web Services account with an Amazon Inspector delegated administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateMemberInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to be associated.</p>
    #
    # @return [Types::AssociateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateMemberOutput
    #   resp.data.account_id #=> String
    #
    def associate_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::AssociateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateMember,
        stubs: @stubs,
        params_class: Params::AssociateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts within your environment.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetAccountStatusInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The 12-digit Amazon Web Services account IDs of the accounts to retrieve Amazon Inspector status for.</p>
    #
    # @return [Types::BatchGetAccountStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_account_status(
    #     account_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetAccountStatusOutput
    #   resp.data.accounts #=> Array<AccountState>
    #   resp.data.accounts[0] #=> Types::AccountState
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.accounts[0].state #=> Types::State
    #   resp.data.accounts[0].state.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.accounts[0].state.error_code #=> String, one of ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #   resp.data.accounts[0].state.error_message #=> String
    #   resp.data.accounts[0].resource_state #=> Types::ResourceState
    #   resp.data.accounts[0].resource_state.ec2 #=> Types::State
    #   resp.data.accounts[0].resource_state.ecr #=> Types::State
    #   resp.data.failed_accounts #=> Array<FailedAccount>
    #   resp.data.failed_accounts[0] #=> Types::FailedAccount
    #   resp.data.failed_accounts[0].account_id #=> String
    #   resp.data.failed_accounts[0].status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts[0].resource_status #=> Types::ResourceStatus
    #   resp.data.failed_accounts[0].resource_status.ec2 #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts[0].resource_status.ecr #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts[0].error_code #=> String, one of ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #   resp.data.failed_accounts[0].error_message #=> String
    #
    def batch_get_account_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetAccountStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetAccountStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetAccountStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetAccountStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetAccountStatus,
        stubs: @stubs,
        params_class: Params::BatchGetAccountStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_account_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets free trial status for multiple Amazon Web Services accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetFreeTrialInfoInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The account IDs to get free trial status for.</p>
    #
    # @return [Types::BatchGetFreeTrialInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_free_trial_info(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetFreeTrialInfoOutput
    #   resp.data.accounts #=> Array<FreeTrialAccountInfo>
    #   resp.data.accounts[0] #=> Types::FreeTrialAccountInfo
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.accounts[0].free_trial_info #=> Array<FreeTrialInfo>
    #   resp.data.accounts[0].free_trial_info[0] #=> Types::FreeTrialInfo
    #   resp.data.accounts[0].free_trial_info[0].type #=> String, one of ["EC2", "ECR"]
    #   resp.data.accounts[0].free_trial_info[0].start #=> Time
    #   resp.data.accounts[0].free_trial_info[0].end #=> Time
    #   resp.data.accounts[0].free_trial_info[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.failed_accounts #=> Array<FreeTrialInfoError>
    #   resp.data.failed_accounts[0] #=> Types::FreeTrialInfoError
    #   resp.data.failed_accounts[0].account_id #=> String
    #   resp.data.failed_accounts[0].code #=> String, one of ["ACCESS_DENIED", "INTERNAL_ERROR"]
    #   resp.data.failed_accounts[0].message #=> String
    #
    def batch_get_free_trial_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetFreeTrialInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetFreeTrialInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetFreeTrialInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetFreeTrialInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetFreeTrialInfo,
        stubs: @stubs,
        params_class: Params::BatchGetFreeTrialInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_free_trial_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the given findings report.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelFindingsReportInput}.
    #
    # @option params [String] :report_id
    #   <p>The ID of the report to be canceled.</p>
    #
    # @return [Types::CancelFindingsReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_findings_report(
    #     report_id: 'reportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelFindingsReportOutput
    #   resp.data.report_id #=> String
    #
    def cancel_findings_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelFindingsReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelFindingsReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelFindingsReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelFindingsReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelFindingsReport,
        stubs: @stubs,
        params_class: Params::CancelFindingsReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_findings_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a filter resource using specified filter criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFilterInput}.
    #
    # @option params [String] :action
    #   <p>Defines the action that is to be applied to the findings that match the filter.</p>
    #
    # @option params [String] :description
    #   <p>A description of the filter.</p>
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>Defines the criteria to be used in the filter for querying findings.</p>
    #
    # @option params [String] :name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters
    #            include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not
    #            allowed.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags for the filter.</p>
    #
    # @return [Types::CreateFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter(
    #     action: 'NONE', # required - accepts ["NONE", "SUPPRESS"]
    #     description: 'description',
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #         }
    #       ],
    #     }, # required
    #     name: 'name', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFilterOutput
    #   resp.data.arn #=> String
    #
    def create_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFilter,
        stubs: @stubs,
        params_class: Params::CreateFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a finding report.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFindingsReportInput}.
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>The filter criteria to apply to the results of the finding report.</p>
    #
    # @option params [String] :report_format
    #   <p>The format to generate the report in.</p>
    #
    # @option params [Destination] :s3_destination
    #   <p>The Amazon S3 export destination for the report.</p>
    #
    # @return [Types::CreateFindingsReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_findings_report(
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #         }
    #       ],
    #     },
    #     report_format: 'CSV', # required - accepts ["CSV", "JSON"]
    #     s3_destination: {
    #       bucket_name: 'bucketName', # required
    #       key_prefix: 'keyPrefix',
    #       kms_key_arn: 'kmsKeyArn' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFindingsReportOutput
    #   resp.data.report_id #=> String
    #
    def create_findings_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFindingsReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFindingsReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFindingsReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateFindingsReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFindingsReport,
        stubs: @stubs,
        params_class: Params::CreateFindingsReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_findings_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a filter resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFilterInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Number (ARN) of the filter to be deleted.</p>
    #
    # @return [Types::DeleteFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFilterOutput
    #   resp.data.arn #=> String
    #
    def delete_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFilter,
        stubs: @stubs,
        params_class: Params::DeleteFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe Amazon Inspector configuration settings for an Amazon Web Services organization</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigurationInput}.
    #
    # @return [Types::DescribeOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Types::AutoEnable
    #   resp.data.auto_enable.ec2 #=> Boolean
    #   resp.data.auto_enable.ecr #=> Boolean
    #   resp.data.max_account_limit_reached #=> Boolean
    #
    def describe_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables Amazon Inspector scans for one or more Amazon Web Services accounts. Disabling all scan types in an account
    #          disables the Amazon Inspector service.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>An array of account IDs you want to disable Amazon Inspector scans for.</p>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The resource scan types you want to disable.</p>
    #
    # @return [Types::DisableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable(
    #     account_ids: [
    #       'member'
    #     ],
    #     resource_types: [
    #       'EC2' # accepts ["EC2", "ECR"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.accounts[0].status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.accounts[0].resource_status #=> Types::ResourceStatus
    #   resp.data.accounts[0].resource_status.ec2 #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.accounts[0].resource_status.ecr #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts #=> Array<FailedAccount>
    #   resp.data.failed_accounts[0] #=> Types::FailedAccount
    #   resp.data.failed_accounts[0].account_id #=> String
    #   resp.data.failed_accounts[0].status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts[0].resource_status #=> Types::ResourceStatus
    #   resp.data.failed_accounts[0].error_code #=> String, one of ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #   resp.data.failed_accounts[0].error_message #=> String
    #
    def disable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Disable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::Disable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Disable,
        stubs: @stubs,
        params_class: Params::DisableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the Amazon Inspector delegated administrator for your organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableDelegatedAdminAccountInput}.
    #
    # @option params [String] :delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the current Amazon Inspector delegated administrator.</p>
    #
    # @return [Types::DisableDelegatedAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_delegated_admin_account(
    #     delegated_admin_account_id: 'delegatedAdminAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableDelegatedAdminAccountOutput
    #   resp.data.delegated_admin_account_id #=> String
    #
    def disable_delegated_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableDelegatedAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableDelegatedAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableDelegatedAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DisableDelegatedAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableDelegatedAdminAccount,
        stubs: @stubs,
        params_class: Params::DisableDelegatedAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_delegated_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a member account from an Amazon Inspector delegated administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMemberInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to disassociate.</p>
    #
    # @return [Types::DisassociateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMemberOutput
    #   resp.data.account_id #=> String
    #
    def disassociate_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::DisassociateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMember,
        stubs: @stubs,
        params_class: Params::DisassociateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables Amazon Inspector scans for one or more Amazon Web Services accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs you want to enable Amazon Inspector scans for.</p>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The resource scan types you want to enable.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    #
    # @return [Types::EnableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable(
    #     account_ids: [
    #       'member'
    #     ],
    #     resource_types: [
    #       'EC2' # accepts ["EC2", "ECR"]
    #     ], # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.accounts[0].status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.accounts[0].resource_status #=> Types::ResourceStatus
    #   resp.data.accounts[0].resource_status.ec2 #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.accounts[0].resource_status.ecr #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts #=> Array<FailedAccount>
    #   resp.data.failed_accounts[0] #=> Types::FailedAccount
    #   resp.data.failed_accounts[0].account_id #=> String
    #   resp.data.failed_accounts[0].status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #   resp.data.failed_accounts[0].resource_status #=> Types::ResourceStatus
    #   resp.data.failed_accounts[0].error_code #=> String, one of ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #   resp.data.failed_accounts[0].error_message #=> String
    #
    def enable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Enable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::Enable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Enable,
        stubs: @stubs,
        params_class: Params::EnableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the Amazon Inspector delegated administrator for your Organizations organization.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableDelegatedAdminAccountInput}.
    #
    # @option params [String] :delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    #
    # @return [Types::EnableDelegatedAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_delegated_admin_account(
    #     delegated_admin_account_id: 'delegatedAdminAccountId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableDelegatedAdminAccountOutput
    #   resp.data.delegated_admin_account_id #=> String
    #
    def enable_delegated_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableDelegatedAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableDelegatedAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableDelegatedAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::EnableDelegatedAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableDelegatedAdminAccount,
        stubs: @stubs,
        params_class: Params::EnableDelegatedAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_delegated_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the Amazon Inspector delegated administrator for your
    #          organization.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDelegatedAdminAccountInput}.
    #
    # @return [Types::GetDelegatedAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delegated_admin_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDelegatedAdminAccountOutput
    #   resp.data.delegated_admin #=> Types::DelegatedAdmin
    #   resp.data.delegated_admin.account_id #=> String
    #   resp.data.delegated_admin.relationship_status #=> String, one of ["CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"]
    #
    def get_delegated_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDelegatedAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDelegatedAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDelegatedAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDelegatedAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDelegatedAdminAccount,
        stubs: @stubs,
        params_class: Params::GetDelegatedAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_delegated_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of a findings report.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsReportStatusInput}.
    #
    # @option params [String] :report_id
    #   <p>The ID of the report to retrieve the status of.</p>
    #
    # @return [Types::GetFindingsReportStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_report_status(
    #     report_id: 'reportId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsReportStatusOutput
    #   resp.data.report_id #=> String
    #   resp.data.status #=> String, one of ["SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"]
    #   resp.data.error_code #=> String, one of ["INTERNAL_ERROR", "INVALID_PERMISSIONS"]
    #   resp.data.error_message #=> String
    #   resp.data.destination #=> Types::Destination
    #   resp.data.destination.bucket_name #=> String
    #   resp.data.destination.key_prefix #=> String
    #   resp.data.destination.kms_key_arn #=> String
    #   resp.data.filter_criteria #=> Types::FilterCriteria
    #   resp.data.filter_criteria.finding_arn #=> Array<StringFilter>
    #   resp.data.filter_criteria.finding_arn[0] #=> Types::StringFilter
    #   resp.data.filter_criteria.finding_arn[0].comparison #=> String, one of ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #   resp.data.filter_criteria.finding_arn[0].value #=> String
    #   resp.data.filter_criteria.aws_account_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.finding_type #=> Array<StringFilter>
    #   resp.data.filter_criteria.severity #=> Array<StringFilter>
    #   resp.data.filter_criteria.first_observed_at #=> Array<DateFilter>
    #   resp.data.filter_criteria.first_observed_at[0] #=> Types::DateFilter
    #   resp.data.filter_criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.data.filter_criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.data.filter_criteria.last_observed_at #=> Array<DateFilter>
    #   resp.data.filter_criteria.updated_at #=> Array<DateFilter>
    #   resp.data.filter_criteria.finding_status #=> Array<StringFilter>
    #   resp.data.filter_criteria.title #=> Array<StringFilter>
    #   resp.data.filter_criteria.inspector_score #=> Array<NumberFilter>
    #   resp.data.filter_criteria.inspector_score[0] #=> Types::NumberFilter
    #   resp.data.filter_criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.data.filter_criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.data.filter_criteria.resource_type #=> Array<StringFilter>
    #   resp.data.filter_criteria.resource_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.resource_tags #=> Array<MapFilter>
    #   resp.data.filter_criteria.resource_tags[0] #=> Types::MapFilter
    #   resp.data.filter_criteria.resource_tags[0].comparison #=> String, one of ["EQUALS"]
    #   resp.data.filter_criteria.resource_tags[0].key #=> String
    #   resp.data.filter_criteria.resource_tags[0].value #=> String
    #   resp.data.filter_criteria.ec2_instance_image_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.ec2_instance_vpc_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.ec2_instance_subnet_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.ecr_image_pushed_at #=> Array<DateFilter>
    #   resp.data.filter_criteria.ecr_image_architecture #=> Array<StringFilter>
    #   resp.data.filter_criteria.ecr_image_registry #=> Array<StringFilter>
    #   resp.data.filter_criteria.ecr_image_repository_name #=> Array<StringFilter>
    #   resp.data.filter_criteria.ecr_image_tags #=> Array<StringFilter>
    #   resp.data.filter_criteria.ecr_image_hash #=> Array<StringFilter>
    #   resp.data.filter_criteria.port_range #=> Array<PortRangeFilter>
    #   resp.data.filter_criteria.port_range[0] #=> Types::PortRangeFilter
    #   resp.data.filter_criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.data.filter_criteria.port_range[0].end_inclusive #=> Integer
    #   resp.data.filter_criteria.network_protocol #=> Array<StringFilter>
    #   resp.data.filter_criteria.component_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.component_type #=> Array<StringFilter>
    #   resp.data.filter_criteria.vulnerability_id #=> Array<StringFilter>
    #   resp.data.filter_criteria.vulnerability_source #=> Array<StringFilter>
    #   resp.data.filter_criteria.vendor_severity #=> Array<StringFilter>
    #   resp.data.filter_criteria.vulnerable_packages #=> Array<PackageFilter>
    #   resp.data.filter_criteria.vulnerable_packages[0] #=> Types::PackageFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].name #=> Types::StringFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].version #=> Types::StringFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].epoch #=> Types::NumberFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].release #=> Types::StringFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].architecture #=> Types::StringFilter
    #   resp.data.filter_criteria.vulnerable_packages[0].source_layer_hash #=> Types::StringFilter
    #   resp.data.filter_criteria.related_vulnerabilities #=> Array<StringFilter>
    #
    def get_findings_report_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsReportStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsReportStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingsReportStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetFindingsReportStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingsReportStatus,
        stubs: @stubs,
        params_class: Params::GetFindingsReportStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings_report_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets member information for your organization.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMemberInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the member account to retrieve information on.</p>
    #
    # @return [Types::GetMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member(
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMemberOutput
    #   resp.data.member #=> Types::Member
    #   resp.data.member.account_id #=> String
    #   resp.data.member.relationship_status #=> String, one of ["CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"]
    #   resp.data.member.delegated_admin_account_id #=> String
    #   resp.data.member.updated_at #=> Time
    #
    def get_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMember,
        stubs: @stubs,
        params_class: Params::GetMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the permissions an account has to configure Amazon Inspector.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountPermissionsInput}.
    #
    # @option params [String] :service
    #   <p>The service scan type to check permissions for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @return [Types::ListAccountPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_permissions(
    #     service: 'EC2', # accepts ["EC2", "ECR"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountPermissionsOutput
    #   resp.data.permissions #=> Array<Permission>
    #   resp.data.permissions[0] #=> Types::Permission
    #   resp.data.permissions[0].service #=> String, one of ["EC2", "ECR"]
    #   resp.data.permissions[0].operation #=> String, one of ["ENABLE_SCANNING", "DISABLE_SCANNING", "ENABLE_REPOSITORY", "DISABLE_REPOSITORY"]
    #   resp.data.next_token #=> String
    #
    def list_account_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAccountPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountPermissions,
        stubs: @stubs,
        params_class: Params::ListAccountPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists coverage details for you environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCoverageInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @option params [CoverageFilterCriteria] :filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #
    # @return [Types::ListCoverageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoverageOutput
    #   resp.data.next_token #=> String
    #   resp.data.covered_resources #=> Array<CoveredResource>
    #   resp.data.covered_resources[0] #=> Types::CoveredResource
    #   resp.data.covered_resources[0].resource_type #=> String, one of ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY"]
    #   resp.data.covered_resources[0].resource_id #=> String
    #   resp.data.covered_resources[0].account_id #=> String
    #   resp.data.covered_resources[0].scan_type #=> String, one of ["NETWORK", "PACKAGE"]
    #   resp.data.covered_resources[0].scan_status #=> Types::ScanStatus
    #   resp.data.covered_resources[0].scan_status.status_code #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.covered_resources[0].scan_status.reason #=> String, one of ["PENDING_INITIAL_SCAN", "ACCESS_DENIED", "INTERNAL_ERROR", "UNMANAGED_EC2_INSTANCE", "UNSUPPORTED_OS", "SCAN_ELIGIBILITY_EXPIRED", "RESOURCE_TERMINATED", "SUCCESSFUL", "NO_RESOURCES_FOUND", "IMAGE_SIZE_EXCEEDED", "SCAN_FREQUENCY_MANUAL", "SCAN_FREQUENCY_SCAN_ON_PUSH", "EC2_INSTANCE_STOPPED"]
    #   resp.data.covered_resources[0].resource_metadata #=> Types::ResourceScanMetadata
    #   resp.data.covered_resources[0].resource_metadata.ecr_repository #=> Types::EcrRepositoryMetadata
    #   resp.data.covered_resources[0].resource_metadata.ecr_repository.name #=> String
    #   resp.data.covered_resources[0].resource_metadata.ecr_repository.scan_frequency #=> String, one of ["MANUAL", "SCAN_ON_PUSH", "CONTINUOUS_SCAN"]
    #   resp.data.covered_resources[0].resource_metadata.ecr_image #=> Types::EcrContainerImageMetadata
    #   resp.data.covered_resources[0].resource_metadata.ecr_image.tags #=> Array<String>
    #   resp.data.covered_resources[0].resource_metadata.ecr_image.tags[0] #=> String
    #   resp.data.covered_resources[0].resource_metadata.ec2 #=> Types::Ec2Metadata
    #   resp.data.covered_resources[0].resource_metadata.ec2.tags #=> Hash<String, String>
    #   resp.data.covered_resources[0].resource_metadata.ec2.tags['key'] #=> String
    #   resp.data.covered_resources[0].resource_metadata.ec2.ami_id #=> String
    #   resp.data.covered_resources[0].resource_metadata.ec2.platform #=> String, one of ["WINDOWS", "LINUX", "UNKNOWN"]
    #
    def list_coverage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoverageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoverageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoverage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListCoverage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoverage,
        stubs: @stubs,
        params_class: Params::ListCoverageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_coverage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists Amazon Inspector coverage statistics for your environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCoverageStatisticsInput}.
    #
    # @option params [CoverageFilterCriteria] :filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #
    # @option params [String] :group_by
    #   <p>The value to group the results by.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @return [Types::ListCoverageStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage_statistics(
    #     filter_criteria: {
    #       scan_status_code: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     },
    #     group_by: 'SCAN_STATUS_CODE', # accepts ["SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoverageStatisticsOutput
    #   resp.data.counts_by_group #=> Array<Counts>
    #   resp.data.counts_by_group[0] #=> Types::Counts
    #   resp.data.counts_by_group[0].count #=> Integer
    #   resp.data.counts_by_group[0].group_key #=> String, one of ["SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"]
    #   resp.data.total_counts #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_coverage_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoverageStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoverageStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoverageStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListCoverageStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoverageStatistics,
        stubs: @stubs,
        params_class: Params::ListCoverageStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_coverage_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about the Amazon Inspector delegated administrator of your
    #          organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDelegatedAdminAccountsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @return [Types::ListDelegatedAdminAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_admin_accounts(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDelegatedAdminAccountsOutput
    #   resp.data.delegated_admin_accounts #=> Array<DelegatedAdminAccount>
    #   resp.data.delegated_admin_accounts[0] #=> Types::DelegatedAdminAccount
    #   resp.data.delegated_admin_accounts[0].account_id #=> String
    #   resp.data.delegated_admin_accounts[0].status #=> String, one of ["ENABLED", "DISABLE_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def list_delegated_admin_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDelegatedAdminAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDelegatedAdminAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDelegatedAdminAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDelegatedAdminAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDelegatedAdminAccounts,
        stubs: @stubs,
        params_class: Params::ListDelegatedAdminAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_delegated_admin_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the filters associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFiltersInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>The Amazon resource number (ARN) of the filter.</p>
    #
    # @option params [String] :action
    #   <p>The action the filter applies to matched findings.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @return [Types::ListFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters(
    #     arns: [
    #       'member'
    #     ],
    #     action: 'NONE', # accepts ["NONE", "SUPPRESS"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFiltersOutput
    #   resp.data.filters #=> Array<Filter>
    #   resp.data.filters[0] #=> Types::Filter
    #   resp.data.filters[0].arn #=> String
    #   resp.data.filters[0].owner_id #=> String
    #   resp.data.filters[0].name #=> String
    #   resp.data.filters[0].criteria #=> Types::FilterCriteria
    #   resp.data.filters[0].criteria.finding_arn #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.finding_arn[0] #=> Types::StringFilter
    #   resp.data.filters[0].criteria.finding_arn[0].comparison #=> String, one of ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #   resp.data.filters[0].criteria.finding_arn[0].value #=> String
    #   resp.data.filters[0].criteria.aws_account_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.finding_type #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.severity #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.first_observed_at #=> Array<DateFilter>
    #   resp.data.filters[0].criteria.first_observed_at[0] #=> Types::DateFilter
    #   resp.data.filters[0].criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.data.filters[0].criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.data.filters[0].criteria.last_observed_at #=> Array<DateFilter>
    #   resp.data.filters[0].criteria.updated_at #=> Array<DateFilter>
    #   resp.data.filters[0].criteria.finding_status #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.title #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.inspector_score #=> Array<NumberFilter>
    #   resp.data.filters[0].criteria.inspector_score[0] #=> Types::NumberFilter
    #   resp.data.filters[0].criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.data.filters[0].criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.data.filters[0].criteria.resource_type #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.resource_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.resource_tags #=> Array<MapFilter>
    #   resp.data.filters[0].criteria.resource_tags[0] #=> Types::MapFilter
    #   resp.data.filters[0].criteria.resource_tags[0].comparison #=> String, one of ["EQUALS"]
    #   resp.data.filters[0].criteria.resource_tags[0].key #=> String
    #   resp.data.filters[0].criteria.resource_tags[0].value #=> String
    #   resp.data.filters[0].criteria.ec2_instance_image_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ec2_instance_vpc_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ec2_instance_subnet_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ecr_image_pushed_at #=> Array<DateFilter>
    #   resp.data.filters[0].criteria.ecr_image_architecture #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ecr_image_registry #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ecr_image_repository_name #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ecr_image_tags #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.ecr_image_hash #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.port_range #=> Array<PortRangeFilter>
    #   resp.data.filters[0].criteria.port_range[0] #=> Types::PortRangeFilter
    #   resp.data.filters[0].criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.data.filters[0].criteria.port_range[0].end_inclusive #=> Integer
    #   resp.data.filters[0].criteria.network_protocol #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.component_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.component_type #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.vulnerability_id #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.vulnerability_source #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.vendor_severity #=> Array<StringFilter>
    #   resp.data.filters[0].criteria.vulnerable_packages #=> Array<PackageFilter>
    #   resp.data.filters[0].criteria.vulnerable_packages[0] #=> Types::PackageFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].name #=> Types::StringFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].version #=> Types::StringFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].epoch #=> Types::NumberFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].release #=> Types::StringFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].architecture #=> Types::StringFilter
    #   resp.data.filters[0].criteria.vulnerable_packages[0].source_layer_hash #=> Types::StringFilter
    #   resp.data.filters[0].criteria.related_vulnerabilities #=> Array<StringFilter>
    #   resp.data.filters[0].action #=> String, one of ["NONE", "SUPPRESS"]
    #   resp.data.filters[0].created_at #=> Time
    #   resp.data.filters[0].updated_at #=> Time
    #   resp.data.filters[0].description #=> String
    #   resp.data.filters[0].reason #=> String
    #   resp.data.filters[0].tags #=> Hash<String, String>
    #   resp.data.filters[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFilters,
        stubs: @stubs,
        params_class: Params::ListFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists aggregated finding data for your environment based on specific criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingAggregationsInput}.
    #
    # @option params [String] :aggregation_type
    #   <p>The type of the aggregation request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [Array<StringFilter>] :account_ids
    #   <p>The Amazon Web Services account IDs to retrieve finding aggregation data for.</p>
    #
    # @option params [AggregationRequest] :aggregation_request
    #   <p>Details of the aggregation request that is used to filter your aggregation results.</p>
    #
    # @return [Types::ListFindingAggregationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregations(
    #     aggregation_type: 'FINDING_TYPE', # required - accepts ["FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT"]
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     account_ids: [
    #       {
    #         comparison: 'EQUALS', # required - accepts ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #         value: 'value' # required
    #       }
    #     ],
    #     aggregation_request: {
    #       # One of:
    #       account_aggregation: {
    #         finding_type: 'NETWORK_REACHABILITY', # accepts ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #         resource_type: 'AWS_EC2_INSTANCE', # accepts ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       },
    #       ami_aggregation: {
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL", "AFFECTED_INSTANCES"]
    #       },
    #       aws_ecr_container_aggregation: {
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       },
    #       ec2_instance_aggregation: {
    #         instance_tags: [
    #           {
    #             comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #             key: 'key', # required
    #             value: 'value'
    #           }
    #         ],
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'NETWORK_FINDINGS' # accepts ["NETWORK_FINDINGS", "CRITICAL", "HIGH", "ALL"]
    #       },
    #       finding_type_aggregation: {
    #         finding_type: 'NETWORK_REACHABILITY', # accepts ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #         resource_type: 'AWS_EC2_INSTANCE', # accepts ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       },
    #       image_layer_aggregation: {
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       },
    #       package_aggregation: {
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       },
    #       repository_aggregation: {
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL", "AFFECTED_IMAGES"]
    #       },
    #       title_aggregation: {
    #         resource_type: 'AWS_EC2_INSTANCE', # accepts ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #         sort_order: 'ASC', # accepts ["ASC", "DESC"]
    #         sort_by: 'CRITICAL' # accepts ["CRITICAL", "HIGH", "ALL"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingAggregationsOutput
    #   resp.data.aggregation_type #=> String, one of ["FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT"]
    #   resp.data.responses #=> Array<AggregationResponse>
    #   resp.data.responses[0] #=> Types::AggregationResponse, one of [AccountAggregation, AmiAggregation, AwsEcrContainerAggregation, Ec2InstanceAggregation, FindingTypeAggregation, ImageLayerAggregation, PackageAggregation, RepositoryAggregation, TitleAggregation]
    #   resp.data.responses[0].account_aggregation #=> Types::AccountAggregationResponse
    #   resp.data.responses[0].account_aggregation.account_id #=> String
    #   resp.data.responses[0].account_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].account_aggregation.severity_counts.all #=> Integer
    #   resp.data.responses[0].account_aggregation.severity_counts.medium #=> Integer
    #   resp.data.responses[0].account_aggregation.severity_counts.high #=> Integer
    #   resp.data.responses[0].account_aggregation.severity_counts.critical #=> Integer
    #   resp.data.responses[0].ami_aggregation #=> Types::AmiAggregationResponse
    #   resp.data.responses[0].ami_aggregation.ami #=> String
    #   resp.data.responses[0].ami_aggregation.account_id #=> String
    #   resp.data.responses[0].ami_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].ami_aggregation.affected_instances #=> Integer
    #   resp.data.responses[0].aws_ecr_container_aggregation #=> Types::AwsEcrContainerAggregationResponse
    #   resp.data.responses[0].aws_ecr_container_aggregation.resource_id #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.image_sha #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.repository #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.architecture #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.image_tags #=> Array<String>
    #   resp.data.responses[0].aws_ecr_container_aggregation.image_tags[0] #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.account_id #=> String
    #   resp.data.responses[0].aws_ecr_container_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].ec2_instance_aggregation #=> Types::Ec2InstanceAggregationResponse
    #   resp.data.responses[0].ec2_instance_aggregation.instance_id #=> String
    #   resp.data.responses[0].ec2_instance_aggregation.ami #=> String
    #   resp.data.responses[0].ec2_instance_aggregation.operating_system #=> String
    #   resp.data.responses[0].ec2_instance_aggregation.instance_tags #=> Hash<String, String>
    #   resp.data.responses[0].ec2_instance_aggregation.instance_tags['key'] #=> String
    #   resp.data.responses[0].ec2_instance_aggregation.account_id #=> String
    #   resp.data.responses[0].ec2_instance_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].ec2_instance_aggregation.network_findings #=> Integer
    #   resp.data.responses[0].finding_type_aggregation #=> Types::FindingTypeAggregationResponse
    #   resp.data.responses[0].finding_type_aggregation.account_id #=> String
    #   resp.data.responses[0].finding_type_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].image_layer_aggregation #=> Types::ImageLayerAggregationResponse
    #   resp.data.responses[0].image_layer_aggregation.repository #=> String
    #   resp.data.responses[0].image_layer_aggregation.resource_id #=> String
    #   resp.data.responses[0].image_layer_aggregation.layer_hash #=> String
    #   resp.data.responses[0].image_layer_aggregation.account_id #=> String
    #   resp.data.responses[0].image_layer_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].package_aggregation #=> Types::PackageAggregationResponse
    #   resp.data.responses[0].package_aggregation.package_name #=> String
    #   resp.data.responses[0].package_aggregation.account_id #=> String
    #   resp.data.responses[0].package_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].repository_aggregation #=> Types::RepositoryAggregationResponse
    #   resp.data.responses[0].repository_aggregation.repository #=> String
    #   resp.data.responses[0].repository_aggregation.account_id #=> String
    #   resp.data.responses[0].repository_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.responses[0].repository_aggregation.affected_images #=> Integer
    #   resp.data.responses[0].title_aggregation #=> Types::TitleAggregationResponse
    #   resp.data.responses[0].title_aggregation.title #=> String
    #   resp.data.responses[0].title_aggregation.vulnerability_id #=> String
    #   resp.data.responses[0].title_aggregation.account_id #=> String
    #   resp.data.responses[0].title_aggregation.severity_counts #=> Types::SeverityCounts
    #   resp.data.next_token #=> String
    #
    def list_finding_aggregations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingAggregationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingAggregationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindingAggregations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListFindingAggregations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindingAggregations,
        stubs: @stubs,
        params_class: Params::ListFindingAggregationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_finding_aggregations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists findings for your environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>Details on the filters to apply to your finding results.</p>
    #
    # @option params [SortCriteria] :sort_criteria
    #   <p>Details on the sort criteria to apply to your finding results.</p>
    #
    # @return [Types::ListFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #         }
    #       ],
    #     },
    #     sort_criteria: {
    #       field: 'AWS_ACCOUNT_ID', # required - accepts ["AWS_ACCOUNT_ID", "FINDING_TYPE", "SEVERITY", "FIRST_OBSERVED_AT", "LAST_OBSERVED_AT", "FINDING_STATUS", "RESOURCE_TYPE", "ECR_IMAGE_PUSHED_AT", "ECR_IMAGE_REPOSITORY_NAME", "ECR_IMAGE_REGISTRY", "NETWORK_PROTOCOL", "COMPONENT_TYPE", "VULNERABILITY_ID", "VULNERABILITY_SOURCE", "INSPECTOR_SCORE", "VENDOR_SEVERITY"]
    #       sort_order: 'ASC' # required - accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsOutput
    #   resp.data.next_token #=> String
    #   resp.data.findings #=> Array<Finding>
    #   resp.data.findings[0] #=> Types::Finding
    #   resp.data.findings[0].finding_arn #=> String
    #   resp.data.findings[0].aws_account_id #=> String
    #   resp.data.findings[0].type #=> String, one of ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #   resp.data.findings[0].description #=> String
    #   resp.data.findings[0].title #=> String
    #   resp.data.findings[0].remediation #=> Types::Remediation
    #   resp.data.findings[0].remediation.recommendation #=> Types::Recommendation
    #   resp.data.findings[0].remediation.recommendation.text #=> String
    #   resp.data.findings[0].remediation.recommendation.url #=> String
    #   resp.data.findings[0].severity #=> String, one of ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNTRIAGED"]
    #   resp.data.findings[0].first_observed_at #=> Time
    #   resp.data.findings[0].last_observed_at #=> Time
    #   resp.data.findings[0].updated_at #=> Time
    #   resp.data.findings[0].status #=> String, one of ["ACTIVE", "SUPPRESSED", "CLOSED"]
    #   resp.data.findings[0].resources #=> Array<Resource>
    #   resp.data.findings[0].resources[0] #=> Types::Resource
    #   resp.data.findings[0].resources[0].type #=> String, one of ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY"]
    #   resp.data.findings[0].resources[0].id #=> String
    #   resp.data.findings[0].resources[0].partition #=> String
    #   resp.data.findings[0].resources[0].region #=> String
    #   resp.data.findings[0].resources[0].tags #=> Hash<String, String>
    #   resp.data.findings[0].resources[0].tags['key'] #=> String
    #   resp.data.findings[0].resources[0].details #=> Types::ResourceDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance #=> Types::AwsEc2InstanceDetails
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.type #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.image_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.key_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.iam_instance_profile_arn #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.vpc_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.subnet_id #=> String
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.launched_at #=> Time
    #   resp.data.findings[0].resources[0].details.aws_ec2_instance.platform #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image #=> Types::AwsEcrContainerImageDetails
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array<String>
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_tags[0] #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.pushed_at #=> Time
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.author #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.image_hash #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.registry #=> String
    #   resp.data.findings[0].resources[0].details.aws_ecr_container_image.platform #=> String
    #   resp.data.findings[0].inspector_score #=> Float
    #   resp.data.findings[0].inspector_score_details #=> Types::InspectorScoreDetails
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss #=> Types::CvssScoreDetails
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.score_source #=> String
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.cvss_source #=> String
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.version #=> String
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.score #=> Float
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.scoring_vector #=> String
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.adjustments #=> Array<CvssScoreAdjustment>
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.adjustments[0] #=> Types::CvssScoreAdjustment
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].metric #=> String
    #   resp.data.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].reason #=> String
    #   resp.data.findings[0].network_reachability_details #=> Types::NetworkReachabilityDetails
    #   resp.data.findings[0].network_reachability_details.open_port_range #=> Types::PortRange
    #   resp.data.findings[0].network_reachability_details.open_port_range.begin #=> Integer
    #   resp.data.findings[0].network_reachability_details.open_port_range.end #=> Integer
    #   resp.data.findings[0].network_reachability_details.protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.findings[0].network_reachability_details.network_path #=> Types::NetworkPath
    #   resp.data.findings[0].network_reachability_details.network_path.steps #=> Array<Step>
    #   resp.data.findings[0].network_reachability_details.network_path.steps[0] #=> Types::Step
    #   resp.data.findings[0].network_reachability_details.network_path.steps[0].component_id #=> String
    #   resp.data.findings[0].network_reachability_details.network_path.steps[0].component_type #=> String
    #   resp.data.findings[0].package_vulnerability_details #=> Types::PackageVulnerabilityDetails
    #   resp.data.findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages #=> Array<VulnerablePackage>
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0] #=> Types::VulnerablePackage
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String, one of ["BUNDLER", "CARGO", "COMPOSER", "NPM", "NUGET", "PIPENV", "POETRY", "YARN", "GOBINARY", "GOMOD", "JAR", "OS"]
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.data.findings[0].package_vulnerability_details.vulnerable_packages[0].fixed_in_version #=> String
    #   resp.data.findings[0].package_vulnerability_details.source #=> String
    #   resp.data.findings[0].package_vulnerability_details.cvss #=> Array<CvssScore>
    #   resp.data.findings[0].package_vulnerability_details.cvss[0] #=> Types::CvssScore
    #   resp.data.findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.data.findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.data.findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.data.findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.data.findings[0].package_vulnerability_details.related_vulnerabilities #=> Array<String>
    #   resp.data.findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.data.findings[0].package_vulnerability_details.source_url #=> String
    #   resp.data.findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.data.findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.data.findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.data.findings[0].package_vulnerability_details.reference_urls #=> Array<String>
    #   resp.data.findings[0].package_vulnerability_details.reference_urls[0] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
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

    # <p>List members associated with the Amazon Inspector delegated administrator for your
    #          organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [Boolean] :only_associated
    #   <p>Specifies whether to list only currently associated members if <code>True</code> or to
    #            list all members within the organization if <code>False</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].relationship_status #=> String, one of ["CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"]
    #   resp.data.members[0].delegated_admin_account_id #=> String
    #   resp.data.members[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMembers,
        stubs: @stubs,
        params_class: Params::ListMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags attached to a given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon resource number (ARN) of the resource to list tags of.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Lists the Amazon Inspector usage totals over the last 30 days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsageTotalsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The Amazon Web Services account IDs to retrieve usage totals for.</p>
    #
    # @return [Types::ListUsageTotalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_totals(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     account_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsageTotalsOutput
    #   resp.data.next_token #=> String
    #   resp.data.totals #=> Array<UsageTotal>
    #   resp.data.totals[0] #=> Types::UsageTotal
    #   resp.data.totals[0].account_id #=> String
    #   resp.data.totals[0].usage #=> Array<Usage>
    #   resp.data.totals[0].usage[0] #=> Types::Usage
    #   resp.data.totals[0].usage[0].type #=> String, one of ["EC2_INSTANCE_HOURS", "ECR_INITIAL_SCAN", "ECR_RESCAN"]
    #   resp.data.totals[0].usage[0].total #=> Float
    #   resp.data.totals[0].usage[0].estimated_monthly_cost #=> Float
    #   resp.data.totals[0].usage[0].currency #=> String, one of ["USD"]
    #
    def list_usage_totals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsageTotalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsageTotalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsageTotals
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListUsageTotals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsageTotals,
        stubs: @stubs,
        params_class: Params::ListUsageTotalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_usage_totals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply a tag to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFilterInput}.
    #
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    # @option params [String] :description
    #   <p>A description of the filter.</p>
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>Defines the criteria to be update in the filter.</p>
    #
    # @option params [String] :name
    #   <p>The name of the filter.</p>
    #
    # @option params [String] :filter_arn
    #   <p>The Amazon Resource Number (ARN) of the filter to update.</p>
    #
    # @return [Types::UpdateFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter(
    #     action: 'NONE', # accepts ["NONE", "SUPPRESS"]
    #     description: 'description',
    #     filter_criteria: {
    #       finding_arn: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #           value: 'value' # required
    #         }
    #       ],
    #       first_observed_at: [
    #         {
    #           start_inclusive: Time.now,
    #           end_inclusive: Time.now
    #         }
    #       ],
    #       inspector_score: [
    #         {
    #           upper_inclusive: 1.0,
    #           lower_inclusive: 1.0
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: 'EQUALS', # required - accepts ["EQUALS"]
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1
    #         }
    #       ],
    #       vulnerable_packages: [
    #         {
    #         }
    #       ],
    #     },
    #     name: 'name',
    #     filter_arn: 'filterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFilterOutput
    #   resp.data.arn #=> String
    #
    def update_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFilter,
        stubs: @stubs,
        params_class: Params::UpdateFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configurations for your Amazon Inspector organization.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationConfigurationInput}.
    #
    # @option params [AutoEnable] :auto_enable
    #   <p>Defines which scan types are enabled automatically for new members of your Amazon Inspector organization.</p>
    #
    # @return [Types::UpdateOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration(
    #     auto_enable: {
    #       ec2: false, # required
    #       ecr: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Types::AutoEnable
    #   resp.data.auto_enable.ec2 #=> Boolean
    #   resp.data.auto_enable.ecr #=> Boolean
    #
    def update_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOrganizationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_organization_configuration
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
