# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Inspector
  # An API client for InspectorService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Inspector</fullname>
  #          <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to
  #          identify potential security issues. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html"> Amazon Inspector User
  #             Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Inspector::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Assigns attributes (key and value pairs) to the findings that are specified by the
    #          ARNs of the findings.</p>
    #
    # @param [Hash] params
    #   See {Types::AddAttributesToFindingsInput}.
    #
    # @option params [Array<String>] :finding_arns
    #   <p>The ARNs that specify the findings that you want to assign attributes to.</p>
    #
    # @option params [Array<Attribute>] :attributes
    #   <p>The array of attributes that you want to assign to specified findings.</p>
    #
    # @return [Types::AddAttributesToFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_attributes_to_findings(
    #     finding_arns: [
    #       'member'
    #     ], # required
    #     attributes: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddAttributesToFindingsOutput
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def add_attributes_to_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddAttributesToFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddAttributesToFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddAttributesToFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::AddAttributesToFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddAttributesToFindings,
        stubs: @stubs,
        params_class: Params::AddAttributesToFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_attributes_to_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new assessment target using the ARN of the resource group that is generated
    #          by <a>CreateResourceGroup</a>. If resourceGroupArn is not specified, all EC2
    #          instances in the current AWS account and region are included in the assessment target. If
    #          the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    #          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    #          perform security assessments. You can create up to 50 assessment targets per AWS account.
    #          You can run up to 500 concurrent agents per AWS account. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">
    #             Amazon Inspector Assessment Targets</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssessmentTargetInput}.
    #
    # @option params [String] :assessment_target_name
    #   <p>The user-defined name that identifies the assessment target that you want to create.
    #            The name must be unique within the AWS account.</p>
    #
    # @option params [String] :resource_group_arn
    #   <p>The ARN that specifies the resource group that is used to create the assessment
    #            target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    #            and region are included in the assessment target.</p>
    #
    # @return [Types::CreateAssessmentTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_target(
    #     assessment_target_name: 'assessmentTargetName', # required
    #     resource_group_arn: 'resourceGroupArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssessmentTargetOutput
    #   resp.data.assessment_target_arn #=> String
    #
    def create_assessment_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssessmentTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssessmentTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssessmentTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidCrossAccountRoleException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::CreateAssessmentTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssessmentTarget,
        stubs: @stubs,
        params_class: Params::CreateAssessmentTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assessment_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an assessment template for the assessment target that is specified by the ARN
    #          of the assessment target. If the <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html">service-linked role</a> isn’t already registered, this action also creates and
    #          registers a service-linked role to grant Amazon Inspector access to AWS Services needed to
    #          perform security assessments.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssessmentTemplateInput}.
    #
    # @option params [String] :assessment_target_arn
    #   <p>The ARN that specifies the assessment target for which you want to create the
    #            assessment template.</p>
    #
    # @option params [String] :assessment_template_name
    #   <p>The user-defined name that identifies the assessment template that you want to
    #            create. You can create several assessment templates for an assessment target. The names of
    #            the assessment templates that correspond to a particular assessment target must be
    #            unique.</p>
    #
    # @option params [Integer] :duration_in_seconds
    #   <p>The duration of the assessment run in seconds.</p>
    #
    # @option params [Array<String>] :rules_package_arns
    #   <p>The ARNs that specify the rules packages that you want to attach to the assessment
    #            template.</p>
    #
    # @option params [Array<Attribute>] :user_attributes_for_findings
    #   <p>The user-defined attributes that are assigned to every finding that is generated by
    #            the assessment run that uses this assessment template. An attribute is a key and value pair
    #            (an <a>Attribute</a> object). Within an assessment template, each key must be
    #            unique.</p>
    #
    # @return [Types::CreateAssessmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_template(
    #     assessment_target_arn: 'assessmentTargetArn', # required
    #     assessment_template_name: 'assessmentTemplateName', # required
    #     duration_in_seconds: 1, # required
    #     rules_package_arns: [
    #       'member'
    #     ], # required
    #     user_attributes_for_findings: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssessmentTemplateOutput
    #   resp.data.assessment_template_arn #=> String
    #
    def create_assessment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssessmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssessmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssessmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::CreateAssessmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssessmentTemplate,
        stubs: @stubs,
        params_class: Params::CreateAssessmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assessment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the generation of an exclusions preview for the specified assessment template.
    #          The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can
    #          detect before it runs the assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateExclusionsPreviewInput}.
    #
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which you want to create an
    #            exclusions preview.</p>
    #
    # @return [Types::CreateExclusionsPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_exclusions_preview(
    #     assessment_template_arn: 'assessmentTemplateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExclusionsPreviewOutput
    #   resp.data.preview_token #=> String
    #
    def create_exclusions_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExclusionsPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExclusionsPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExclusionsPreview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException, Errors::PreviewGenerationInProgressException]),
        data_parser: Parsers::CreateExclusionsPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExclusionsPreview,
        stubs: @stubs,
        params_class: Params::CreateExclusionsPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_exclusions_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a resource group using the specified set of tags (key and value pairs) that
    #          are used to select the EC2 instances to be included in an Amazon Inspector assessment
    #          target. The created resource group is then used to create an Amazon Inspector assessment
    #          target. For more information, see <a>CreateAssessmentTarget</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceGroupInput}.
    #
    # @option params [Array<ResourceGroupTag>] :resource_group_tags
    #   <p>A collection of keys and an array of possible values,
    #            '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p>
    #            <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
    #
    # @return [Types::CreateResourceGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_group(
    #     resource_group_tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceGroupOutput
    #   resp.data.resource_group_arn #=> String
    #
    def create_resource_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::CreateResourceGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceGroup,
        stubs: @stubs,
        params_class: Params::CreateResourceGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the assessment run that is specified by the ARN of the assessment
    #          run.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentRunInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run that you want to delete.</p>
    #
    # @return [Types::DeleteAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_run(
    #     assessment_run_arn: 'assessmentRunArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentRunOutput
    #
    def delete_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::AssessmentRunInProgressException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::DeleteAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentRun,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the assessment target that is specified by the ARN of the assessment
    #          target.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentTargetInput}.
    #
    # @option params [String] :assessment_target_arn
    #   <p>The ARN that specifies the assessment target that you want to delete.</p>
    #
    # @return [Types::DeleteAssessmentTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_target(
    #     assessment_target_arn: 'assessmentTargetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentTargetOutput
    #
    def delete_assessment_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::AssessmentRunInProgressException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::DeleteAssessmentTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentTarget,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the assessment template that is specified by the ARN of the assessment
    #          template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentTemplateInput}.
    #
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template that you want to delete.</p>
    #
    # @return [Types::DeleteAssessmentTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_template(
    #     assessment_template_arn: 'assessmentTemplateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentTemplateOutput
    #
    def delete_assessment_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::AssessmentRunInProgressException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::DeleteAssessmentTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentTemplate,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the assessment runs that are specified by the ARNs of the assessment
    #          runs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssessmentRunsInput}.
    #
    # @option params [Array<String>] :assessment_run_arns
    #   <p>The ARN that specifies the assessment run that you want to describe.</p>
    #
    # @return [Types::DescribeAssessmentRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_assessment_runs(
    #     assessment_run_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssessmentRunsOutput
    #   resp.data.assessment_runs #=> Array<AssessmentRun>
    #   resp.data.assessment_runs[0] #=> Types::AssessmentRun
    #   resp.data.assessment_runs[0].arn #=> String
    #   resp.data.assessment_runs[0].name #=> String
    #   resp.data.assessment_runs[0].assessment_template_arn #=> String
    #   resp.data.assessment_runs[0].state #=> String, one of ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"]
    #   resp.data.assessment_runs[0].duration_in_seconds #=> Integer
    #   resp.data.assessment_runs[0].rules_package_arns #=> Array<String>
    #   resp.data.assessment_runs[0].rules_package_arns[0] #=> String
    #   resp.data.assessment_runs[0].user_attributes_for_findings #=> Array<Attribute>
    #   resp.data.assessment_runs[0].user_attributes_for_findings[0] #=> Types::Attribute
    #   resp.data.assessment_runs[0].user_attributes_for_findings[0].key #=> String
    #   resp.data.assessment_runs[0].user_attributes_for_findings[0].value #=> String
    #   resp.data.assessment_runs[0].created_at #=> Time
    #   resp.data.assessment_runs[0].started_at #=> Time
    #   resp.data.assessment_runs[0].completed_at #=> Time
    #   resp.data.assessment_runs[0].state_changed_at #=> Time
    #   resp.data.assessment_runs[0].data_collected #=> Boolean
    #   resp.data.assessment_runs[0].state_changes #=> Array<AssessmentRunStateChange>
    #   resp.data.assessment_runs[0].state_changes[0] #=> Types::AssessmentRunStateChange
    #   resp.data.assessment_runs[0].state_changes[0].state_changed_at #=> Time
    #   resp.data.assessment_runs[0].state_changes[0].state #=> String, one of ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"]
    #   resp.data.assessment_runs[0].notifications #=> Array<AssessmentRunNotification>
    #   resp.data.assessment_runs[0].notifications[0] #=> Types::AssessmentRunNotification
    #   resp.data.assessment_runs[0].notifications[0].date #=> Time
    #   resp.data.assessment_runs[0].notifications[0].event #=> String, one of ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"]
    #   resp.data.assessment_runs[0].notifications[0].message #=> String
    #   resp.data.assessment_runs[0].notifications[0].error #=> Boolean
    #   resp.data.assessment_runs[0].notifications[0].sns_topic_arn #=> String
    #   resp.data.assessment_runs[0].notifications[0].sns_publish_status_code #=> String, one of ["SUCCESS", "TOPIC_DOES_NOT_EXIST", "ACCESS_DENIED", "INTERNAL_ERROR"]
    #   resp.data.assessment_runs[0].finding_counts #=> Hash<String, Integer>
    #   resp.data.assessment_runs[0].finding_counts['key'] #=> Integer
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_assessment_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssessmentRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssessmentRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssessmentRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeAssessmentRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssessmentRuns,
        stubs: @stubs,
        params_class: Params::DescribeAssessmentRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_assessment_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the assessment targets that are specified by the ARNs of the assessment
    #          targets.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssessmentTargetsInput}.
    #
    # @option params [Array<String>] :assessment_target_arns
    #   <p>The ARNs that specifies the assessment targets that you want to describe.</p>
    #
    # @return [Types::DescribeAssessmentTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_assessment_targets(
    #     assessment_target_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssessmentTargetsOutput
    #   resp.data.assessment_targets #=> Array<AssessmentTarget>
    #   resp.data.assessment_targets[0] #=> Types::AssessmentTarget
    #   resp.data.assessment_targets[0].arn #=> String
    #   resp.data.assessment_targets[0].name #=> String
    #   resp.data.assessment_targets[0].resource_group_arn #=> String
    #   resp.data.assessment_targets[0].created_at #=> Time
    #   resp.data.assessment_targets[0].updated_at #=> Time
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_assessment_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssessmentTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssessmentTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssessmentTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeAssessmentTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssessmentTargets,
        stubs: @stubs,
        params_class: Params::DescribeAssessmentTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_assessment_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the assessment templates that are specified by the ARNs of the assessment
    #          templates.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssessmentTemplatesInput}.
    #
    # @return [Types::DescribeAssessmentTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_assessment_templates(
    #     assessment_template_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssessmentTemplatesOutput
    #   resp.data.assessment_templates #=> Array<AssessmentTemplate>
    #   resp.data.assessment_templates[0] #=> Types::AssessmentTemplate
    #   resp.data.assessment_templates[0].arn #=> String
    #   resp.data.assessment_templates[0].name #=> String
    #   resp.data.assessment_templates[0].assessment_target_arn #=> String
    #   resp.data.assessment_templates[0].duration_in_seconds #=> Integer
    #   resp.data.assessment_templates[0].rules_package_arns #=> Array<String>
    #   resp.data.assessment_templates[0].rules_package_arns[0] #=> String
    #   resp.data.assessment_templates[0].user_attributes_for_findings #=> Array<Attribute>
    #   resp.data.assessment_templates[0].user_attributes_for_findings[0] #=> Types::Attribute
    #   resp.data.assessment_templates[0].user_attributes_for_findings[0].key #=> String
    #   resp.data.assessment_templates[0].user_attributes_for_findings[0].value #=> String
    #   resp.data.assessment_templates[0].last_assessment_run_arn #=> String
    #   resp.data.assessment_templates[0].assessment_run_count #=> Integer
    #   resp.data.assessment_templates[0].created_at #=> Time
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_assessment_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssessmentTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssessmentTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssessmentTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeAssessmentTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssessmentTemplates,
        stubs: @stubs,
        params_class: Params::DescribeAssessmentTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_assessment_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the IAM role that enables Amazon Inspector to access your AWS
    #          account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCrossAccountAccessRoleInput}.
    #
    # @return [Types::DescribeCrossAccountAccessRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cross_account_access_role()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCrossAccountAccessRoleOutput
    #   resp.data.role_arn #=> String
    #   resp.data.valid #=> Boolean
    #   resp.data.registered_at #=> Time
    #
    def describe_cross_account_access_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCrossAccountAccessRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCrossAccountAccessRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCrossAccountAccessRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::DescribeCrossAccountAccessRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCrossAccountAccessRole,
        stubs: @stubs,
        params_class: Params::DescribeCrossAccountAccessRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cross_account_access_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the exclusions that are specified by the exclusions' ARNs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExclusionsInput}.
    #
    # @option params [Array<String>] :exclusion_arns
    #   <p>The list of ARNs that specify the exclusions that you want to describe.</p>
    #
    # @option params [String] :locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    #
    # @return [Types::DescribeExclusionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_exclusions(
    #     exclusion_arns: [
    #       'member'
    #     ], # required
    #     locale: 'EN_US' # accepts ["EN_US"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExclusionsOutput
    #   resp.data.exclusions #=> Hash<String, Exclusion>
    #   resp.data.exclusions['key'] #=> Types::Exclusion
    #   resp.data.exclusions['key'].arn #=> String
    #   resp.data.exclusions['key'].title #=> String
    #   resp.data.exclusions['key'].description #=> String
    #   resp.data.exclusions['key'].recommendation #=> String
    #   resp.data.exclusions['key'].scopes #=> Array<Scope>
    #   resp.data.exclusions['key'].scopes[0] #=> Types::Scope
    #   resp.data.exclusions['key'].scopes[0].key #=> String, one of ["INSTANCE_ID", "RULES_PACKAGE_ARN"]
    #   resp.data.exclusions['key'].scopes[0].value #=> String
    #   resp.data.exclusions['key'].attributes #=> Array<Attribute>
    #   resp.data.exclusions['key'].attributes[0] #=> Types::Attribute
    #   resp.data.exclusions['key'].attributes[0].key #=> String
    #   resp.data.exclusions['key'].attributes[0].value #=> String
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_exclusions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExclusionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExclusionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExclusions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeExclusions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExclusions,
        stubs: @stubs,
        params_class: Params::DescribeExclusionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_exclusions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the findings that are specified by the ARNs of the findings.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFindingsInput}.
    #
    # @option params [Array<String>] :finding_arns
    #   <p>The ARN that specifies the finding that you want to describe.</p>
    #
    # @option params [String] :locale
    #   <p>The locale into which you want to translate a finding description, recommendation,
    #            and the short description that identifies the finding.</p>
    #
    # @return [Types::DescribeFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_findings(
    #     finding_arns: [
    #       'member'
    #     ], # required
    #     locale: 'EN_US' # accepts ["EN_US"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFindingsOutput
    #   resp.data.findings #=> Array<Finding>
    #   resp.data.findings[0] #=> Types::Finding
    #   resp.data.findings[0].arn #=> String
    #   resp.data.findings[0].schema_version #=> Integer
    #   resp.data.findings[0].service #=> String
    #   resp.data.findings[0].service_attributes #=> Types::InspectorServiceAttributes
    #   resp.data.findings[0].service_attributes.schema_version #=> Integer
    #   resp.data.findings[0].service_attributes.assessment_run_arn #=> String
    #   resp.data.findings[0].service_attributes.rules_package_arn #=> String
    #   resp.data.findings[0].asset_type #=> String, one of ["ec2-instance"]
    #   resp.data.findings[0].asset_attributes #=> Types::AssetAttributes
    #   resp.data.findings[0].asset_attributes.schema_version #=> Integer
    #   resp.data.findings[0].asset_attributes.agent_id #=> String
    #   resp.data.findings[0].asset_attributes.auto_scaling_group #=> String
    #   resp.data.findings[0].asset_attributes.ami_id #=> String
    #   resp.data.findings[0].asset_attributes.hostname #=> String
    #   resp.data.findings[0].asset_attributes.ipv4_addresses #=> Array<String>
    #   resp.data.findings[0].asset_attributes.ipv4_addresses[0] #=> String
    #   resp.data.findings[0].asset_attributes.tags #=> Array<Tag>
    #   resp.data.findings[0].asset_attributes.tags[0] #=> Types::Tag
    #   resp.data.findings[0].asset_attributes.tags[0].key #=> String
    #   resp.data.findings[0].asset_attributes.tags[0].value #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.findings[0].asset_attributes.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].network_interface_id #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].subnet_id #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].vpc_id #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_dns_name #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_ip_address #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_ip_addresses #=> Array<PrivateIp>
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_ip_addresses[0] #=> Types::PrivateIp
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].public_dns_name #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].public_ip #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].ipv6_addresses #=> Array<String>
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].ipv6_addresses[0] #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].security_groups #=> Array<SecurityGroup>
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].security_groups[0] #=> Types::SecurityGroup
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].security_groups[0].group_name #=> String
    #   resp.data.findings[0].asset_attributes.network_interfaces[0].security_groups[0].group_id #=> String
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].title #=> String
    #   resp.data.findings[0].description #=> String
    #   resp.data.findings[0].recommendation #=> String
    #   resp.data.findings[0].severity #=> String, one of ["Low", "Medium", "High", "Informational", "Undefined"]
    #   resp.data.findings[0].numeric_severity #=> Float
    #   resp.data.findings[0].confidence #=> Integer
    #   resp.data.findings[0].indicator_of_compromise #=> Boolean
    #   resp.data.findings[0].attributes #=> Array<Attribute>
    #   resp.data.findings[0].attributes[0] #=> Types::Attribute
    #   resp.data.findings[0].attributes[0].key #=> String
    #   resp.data.findings[0].attributes[0].value #=> String
    #   resp.data.findings[0].user_attributes #=> Array<Attribute>
    #   resp.data.findings[0].created_at #=> Time
    #   resp.data.findings[0].updated_at #=> Time
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFindings,
        stubs: @stubs,
        params_class: Params::DescribeFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the resource groups that are specified by the ARNs of the resource
    #          groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourceGroupsInput}.
    #
    # @option params [Array<String>] :resource_group_arns
    #   <p>The ARN that specifies the resource group that you want to describe.</p>
    #
    # @return [Types::DescribeResourceGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_groups(
    #     resource_group_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourceGroupsOutput
    #   resp.data.resource_groups #=> Array<ResourceGroup>
    #   resp.data.resource_groups[0] #=> Types::ResourceGroup
    #   resp.data.resource_groups[0].arn #=> String
    #   resp.data.resource_groups[0].tags #=> Array<ResourceGroupTag>
    #   resp.data.resource_groups[0].tags[0] #=> Types::ResourceGroupTag
    #   resp.data.resource_groups[0].tags[0].key #=> String
    #   resp.data.resource_groups[0].tags[0].value #=> String
    #   resp.data.resource_groups[0].created_at #=> Time
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_resource_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourceGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourceGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourceGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeResourceGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourceGroups,
        stubs: @stubs,
        params_class: Params::DescribeResourceGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the rules packages that are specified by the ARNs of the rules
    #          packages.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRulesPackagesInput}.
    #
    # @option params [Array<String>] :rules_package_arns
    #   <p>The ARN that specifies the rules package that you want to describe.</p>
    #
    # @option params [String] :locale
    #   <p>The locale that you want to translate a rules package description into.</p>
    #
    # @return [Types::DescribeRulesPackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rules_packages(
    #     rules_package_arns: [
    #       'member'
    #     ], # required
    #     locale: 'EN_US' # accepts ["EN_US"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRulesPackagesOutput
    #   resp.data.rules_packages #=> Array<RulesPackage>
    #   resp.data.rules_packages[0] #=> Types::RulesPackage
    #   resp.data.rules_packages[0].arn #=> String
    #   resp.data.rules_packages[0].name #=> String
    #   resp.data.rules_packages[0].version #=> String
    #   resp.data.rules_packages[0].provider #=> String
    #   resp.data.rules_packages[0].description #=> String
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def describe_rules_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRulesPackagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRulesPackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRulesPackages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidInputException]),
        data_parser: Parsers::DescribeRulesPackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRulesPackages,
        stubs: @stubs,
        params_class: Params::DescribeRulesPackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rules_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Produces an assessment report that includes detailed and comprehensive results of a
    #          specified assessment run. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssessmentReportInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run for which you want to generate a
    #            report.</p>
    #
    # @option params [String] :report_file_format
    #   <p>Specifies the file format (html or pdf) of the assessment report that you want to
    #            generate.</p>
    #
    # @option params [String] :report_type
    #   <p>Specifies the type of the assessment report that you want to generate. There are two
    #            types of assessment reports: a finding report and a full report. For more information, see
    #               <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
    #
    # @return [Types::GetAssessmentReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment_report(
    #     assessment_run_arn: 'assessmentRunArn', # required
    #     report_file_format: 'HTML', # required - accepts ["HTML", "PDF"]
    #     report_type: 'FINDING' # required - accepts ["FINDING", "FULL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssessmentReportOutput
    #   resp.data.status #=> String, one of ["WORK_IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.url #=> String
    #
    def get_assessment_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssessmentReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssessmentReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssessmentReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::AssessmentRunInProgressException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException, Errors::UnsupportedFeatureException]),
        data_parser: Parsers::GetAssessmentReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssessmentReport,
        stubs: @stubs,
        params_class: Params::GetAssessmentReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assessment_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by
    #          the preview token. You can obtain the preview token by running the CreateExclusionsPreview
    #          API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExclusionsPreviewInput}.
    #
    # @option params [String] :assessment_template_arn
    #   <p>The ARN that specifies the assessment template for which the exclusions preview was
    #            requested.</p>
    #
    # @option params [String] :preview_token
    #   <p>The unique identifier associated of the exclusions preview.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to
    #            the action fill nextToken in the request with the value of nextToken from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    #
    # @option params [String] :locale
    #   <p>The locale into which you want to translate the exclusion's title, description, and
    #            recommendation.</p>
    #
    # @return [Types::GetExclusionsPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_exclusions_preview(
    #     assessment_template_arn: 'assessmentTemplateArn', # required
    #     preview_token: 'previewToken', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     locale: 'EN_US' # accepts ["EN_US"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExclusionsPreviewOutput
    #   resp.data.preview_status #=> String, one of ["WORK_IN_PROGRESS", "COMPLETED"]
    #   resp.data.exclusion_previews #=> Array<ExclusionPreview>
    #   resp.data.exclusion_previews[0] #=> Types::ExclusionPreview
    #   resp.data.exclusion_previews[0].title #=> String
    #   resp.data.exclusion_previews[0].description #=> String
    #   resp.data.exclusion_previews[0].recommendation #=> String
    #   resp.data.exclusion_previews[0].scopes #=> Array<Scope>
    #   resp.data.exclusion_previews[0].scopes[0] #=> Types::Scope
    #   resp.data.exclusion_previews[0].scopes[0].key #=> String, one of ["INSTANCE_ID", "RULES_PACKAGE_ARN"]
    #   resp.data.exclusion_previews[0].scopes[0].value #=> String
    #   resp.data.exclusion_previews[0].attributes #=> Array<Attribute>
    #   resp.data.exclusion_previews[0].attributes[0] #=> Types::Attribute
    #   resp.data.exclusion_previews[0].attributes[0].key #=> String
    #   resp.data.exclusion_previews[0].attributes[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_exclusions_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExclusionsPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExclusionsPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExclusionsPreview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::GetExclusionsPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExclusionsPreview,
        stubs: @stubs,
        params_class: Params::GetExclusionsPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_exclusions_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information about the data that is collected for the specified assessment
    #          run.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTelemetryMetadataInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run that has the telemetry data that you want
    #            to obtain.</p>
    #
    # @return [Types::GetTelemetryMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_telemetry_metadata(
    #     assessment_run_arn: 'assessmentRunArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTelemetryMetadataOutput
    #   resp.data.telemetry_metadata #=> Array<TelemetryMetadata>
    #   resp.data.telemetry_metadata[0] #=> Types::TelemetryMetadata
    #   resp.data.telemetry_metadata[0].message_type #=> String
    #   resp.data.telemetry_metadata[0].count #=> Integer
    #   resp.data.telemetry_metadata[0].data_size #=> Integer
    #
    def get_telemetry_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTelemetryMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTelemetryMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTelemetryMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::GetTelemetryMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTelemetryMetadata,
        stubs: @stubs,
        params_class: Params::GetTelemetryMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_telemetry_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the agents of the assessment runs that are specified by the ARNs of the
    #          assessment runs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentRunAgentsInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN that specifies the assessment run whose agents you want to list.</p>
    #
    # @option params [AgentFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRunAgents</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListAssessmentRunAgentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_run_agents(
    #     assessment_run_arn: 'assessmentRunArn', # required
    #     filter: {
    #       agent_healths: [
    #         'HEALTHY' # accepts ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #       ], # required
    #       agent_health_codes: [
    #         'IDLE' # accepts ["IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"]
    #       ] # required
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentRunAgentsOutput
    #   resp.data.assessment_run_agents #=> Array<AssessmentRunAgent>
    #   resp.data.assessment_run_agents[0] #=> Types::AssessmentRunAgent
    #   resp.data.assessment_run_agents[0].agent_id #=> String
    #   resp.data.assessment_run_agents[0].assessment_run_arn #=> String
    #   resp.data.assessment_run_agents[0].agent_health #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.assessment_run_agents[0].agent_health_code #=> String, one of ["IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"]
    #   resp.data.assessment_run_agents[0].agent_health_details #=> String
    #   resp.data.assessment_run_agents[0].auto_scaling_group #=> String
    #   resp.data.assessment_run_agents[0].telemetry_metadata #=> Array<TelemetryMetadata>
    #   resp.data.assessment_run_agents[0].telemetry_metadata[0] #=> Types::TelemetryMetadata
    #   resp.data.assessment_run_agents[0].telemetry_metadata[0].message_type #=> String
    #   resp.data.assessment_run_agents[0].telemetry_metadata[0].count #=> Integer
    #   resp.data.assessment_run_agents[0].telemetry_metadata[0].data_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_assessment_run_agents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentRunAgentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentRunAgentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentRunAgents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::ListAssessmentRunAgents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentRunAgents,
        stubs: @stubs,
        params_class: Params::ListAssessmentRunAgentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_run_agents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the assessment runs that correspond to the assessment templates that are
    #          specified by the ARNs of the assessment templates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentRunsInput}.
    #
    # @option params [Array<String>] :assessment_template_arns
    #   <p>The ARNs that specify the assessment templates whose assessment runs you want to
    #            list.</p>
    #
    # @option params [AssessmentRunFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentRuns</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in
    #            the response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListAssessmentRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_runs(
    #     assessment_template_arns: [
    #       'member'
    #     ],
    #     filter: {
    #       name_pattern: 'namePattern',
    #       states: [
    #         'CREATED' # accepts ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"]
    #       ],
    #       duration_range: {
    #         min_seconds: 1,
    #         max_seconds: 1
    #       },
    #       rules_package_arns: [
    #         'member'
    #       ],
    #       start_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       },
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentRunsOutput
    #   resp.data.assessment_run_arns #=> Array<String>
    #   resp.data.assessment_run_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_assessment_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::ListAssessmentRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentRuns,
        stubs: @stubs,
        params_class: Params::ListAssessmentRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the ARNs of the assessment targets within this AWS account. For more
    #          information about assessment targets, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">Amazon Inspector Assessment
    #             Targets</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentTargetsInput}.
    #
    # @option params [AssessmentTargetFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTargets</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListAssessmentTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_targets(
    #     filter: {
    #       assessment_target_name_pattern: 'assessmentTargetNamePattern'
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentTargetsOutput
    #   resp.data.assessment_target_arns #=> Array<String>
    #   resp.data.assessment_target_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_assessment_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException]),
        data_parser: Parsers::ListAssessmentTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentTargets,
        stubs: @stubs,
        params_class: Params::ListAssessmentTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the assessment templates that correspond to the assessment targets that are
    #          specified by the ARNs of the assessment targets.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentTemplatesInput}.
    #
    # @option params [Array<String>] :assessment_target_arns
    #   <p>A list of ARNs that specifies the assessment targets whose assessment templates you
    #            want to list.</p>
    #
    # @option params [AssessmentTemplateFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListAssessmentTemplates</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListAssessmentTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_templates(
    #     assessment_target_arns: [
    #       'member'
    #     ],
    #     filter: {
    #       name_pattern: 'namePattern',
    #       duration_range: {
    #         min_seconds: 1,
    #         max_seconds: 1
    #       },
    #       rules_package_arns: [
    #         'member'
    #       ]
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentTemplatesOutput
    #   resp.data.assessment_template_arns #=> Array<String>
    #   resp.data.assessment_template_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_assessment_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::ListAssessmentTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentTemplates,
        stubs: @stubs,
        params_class: Params::ListAssessmentTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the event subscriptions for the assessment template that is specified by
    #          the ARN of the assessment template. For more information, see <a>SubscribeToEvent</a> and <a>UnsubscribeFromEvent</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventSubscriptionsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template for which you want to list the existing event
    #            subscriptions.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListEventSubscriptions</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListEventSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_subscriptions(
    #     resource_arn: 'resourceArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventSubscriptionsOutput
    #   resp.data.subscriptions #=> Array<Subscription>
    #   resp.data.subscriptions[0] #=> Types::Subscription
    #   resp.data.subscriptions[0].resource_arn #=> String
    #   resp.data.subscriptions[0].topic_arn #=> String
    #   resp.data.subscriptions[0].event_subscriptions #=> Array<EventSubscription>
    #   resp.data.subscriptions[0].event_subscriptions[0] #=> Types::EventSubscription
    #   resp.data.subscriptions[0].event_subscriptions[0].event #=> String, one of ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"]
    #   resp.data.subscriptions[0].event_subscriptions[0].subscribed_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_event_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventSubscriptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventSubscriptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::ListEventSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventSubscriptions,
        stubs: @stubs,
        params_class: Params::ListEventSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List exclusions that are generated by the assessment run.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExclusionsInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN of the assessment run that generated the exclusions that you want to
    #            list.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the ListExclusionsRequest action. Subsequent calls to the
    #            action fill nextToken in the request with the value of nextToken from the previous response
    #            to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 100. The maximum value is 500.</p>
    #
    # @return [Types::ListExclusionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exclusions(
    #     assessment_run_arn: 'assessmentRunArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExclusionsOutput
    #   resp.data.exclusion_arns #=> Array<String>
    #   resp.data.exclusion_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_exclusions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExclusionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExclusionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExclusions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::ListExclusions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExclusions,
        stubs: @stubs,
        params_class: Params::ListExclusionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_exclusions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists findings that are generated by the assessment runs that are specified by the
    #          ARNs of the assessment runs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsInput}.
    #
    # @option params [Array<String>] :assessment_run_arns
    #   <p>The ARNs of the assessment runs that generate the findings that you want to
    #            list.</p>
    #
    # @option params [FindingFilter] :filter
    #   <p>You can use this parameter to specify a subset of data to be included in the action's
    #            response.</p>
    #            <p>For a record to match a filter, all specified filter attributes must match. When
    #            multiple values are specified for a filter attribute, any of the values can
    #            match.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListFindings</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings(
    #     assessment_run_arns: [
    #       'member'
    #     ],
    #     filter: {
    #       agent_ids: [
    #         'member'
    #       ],
    #       auto_scaling_groups: [
    #         'member'
    #       ],
    #       rule_names: [
    #         'member'
    #       ],
    #       severities: [
    #         'Low' # accepts ["Low", "Medium", "High", "Informational", "Undefined"]
    #       ],
    #       rules_package_arns: [
    #         'member'
    #       ],
    #       attributes: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       creation_time_range: {
    #         begin_date: Time.now,
    #         end_date: Time.now
    #       }
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsOutput
    #   resp.data.finding_arns #=> Array<String>
    #   resp.data.finding_arns[0] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
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

    # <p>Lists all available Amazon Inspector rules packages.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesPackagesInput}.
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>ListRulesPackages</b>
    #            action. Subsequent calls to the action fill <b>nextToken</b> in
    #            the request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::ListRulesPackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules_packages(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesPackagesOutput
    #   resp.data.rules_package_arns #=> Array<String>
    #   resp.data.rules_package_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_rules_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesPackagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesPackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRulesPackages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException]),
        data_parser: Parsers::ListRulesPackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRulesPackages,
        stubs: @stubs,
        params_class: Params::ListRulesPackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rules_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with an assessment template.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN that specifies the assessment template whose tags you want to list.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
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

    # <p>Previews the agents installed on the EC2 instances that are part of the specified
    #          assessment target.</p>
    #
    # @param [Hash] params
    #   See {Types::PreviewAgentsInput}.
    #
    # @option params [String] :preview_agents_arn
    #   <p>The ARN of the assessment target whose agents you want to preview.</p>
    #
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter
    #            to null on your first call to the <b>PreviewAgents</b> action.
    #            Subsequent calls to the action fill <b>nextToken</b> in the
    #            request with the value of <b>NextToken</b> from the previous
    #            response to continue listing data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the
    #            response. The default value is 10. The maximum value is 500.</p>
    #
    # @return [Types::PreviewAgentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.preview_agents(
    #     preview_agents_arn: 'previewAgentsArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PreviewAgentsOutput
    #   resp.data.agent_previews #=> Array<AgentPreview>
    #   resp.data.agent_previews[0] #=> Types::AgentPreview
    #   resp.data.agent_previews[0].hostname #=> String
    #   resp.data.agent_previews[0].agent_id #=> String
    #   resp.data.agent_previews[0].auto_scaling_group #=> String
    #   resp.data.agent_previews[0].agent_health #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.agent_previews[0].agent_version #=> String
    #   resp.data.agent_previews[0].operating_system #=> String
    #   resp.data.agent_previews[0].kernel_version #=> String
    #   resp.data.agent_previews[0].ipv4_address #=> String
    #   resp.data.next_token #=> String
    #
    def preview_agents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PreviewAgentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PreviewAgentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PreviewAgents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidCrossAccountRoleException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException]),
        data_parser: Parsers::PreviewAgents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PreviewAgents,
        stubs: @stubs,
        params_class: Params::PreviewAgentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :preview_agents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers the IAM role that grants Amazon Inspector access to AWS Services needed to
    #          perform security assessments.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterCrossAccountAccessRoleInput}.
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to
    #            perform security assessments. </p>
    #
    # @return [Types::RegisterCrossAccountAccessRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_cross_account_access_role(
    #     role_arn: 'roleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterCrossAccountAccessRoleOutput
    #
    def register_cross_account_access_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterCrossAccountAccessRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterCrossAccountAccessRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCrossAccountAccessRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidCrossAccountRoleException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::RegisterCrossAccountAccessRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCrossAccountAccessRole,
        stubs: @stubs,
        params_class: Params::RegisterCrossAccountAccessRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_cross_account_access_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes entire attributes (key and value pairs) from the findings that are specified
    #          by the ARNs of the findings where an attribute with the specified key exists.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAttributesFromFindingsInput}.
    #
    # @option params [Array<String>] :finding_arns
    #   <p>The ARNs that specify the findings that you want to remove attributes from.</p>
    #
    # @option params [Array<String>] :attribute_keys
    #   <p>The array of attribute keys that you want to remove from specified
    #            findings.</p>
    #
    # @return [Types::RemoveAttributesFromFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_attributes_from_findings(
    #     finding_arns: [
    #       'member'
    #     ], # required
    #     attribute_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAttributesFromFindingsOutput
    #   resp.data.failed_items #=> Hash<String, FailedItemDetails>
    #   resp.data.failed_items['key'] #=> Types::FailedItemDetails
    #   resp.data.failed_items['key'].failure_code #=> String, one of ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.failed_items['key'].retryable #=> Boolean
    #
    def remove_attributes_from_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAttributesFromFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAttributesFromFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAttributesFromFindings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::RemoveAttributesFromFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAttributesFromFindings,
        stubs: @stubs,
        params_class: Params::RemoveAttributesFromFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_attributes_from_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets tags (key and value pairs) to the assessment template that is specified by the
    #          ARN of the assessment template.</p>
    #
    # @param [Hash] params
    #   See {Types::SetTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that you want to set tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs that you want to set to the assessment
    #            template.</p>
    #
    # @return [Types::SetTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTagsForResourceOutput
    #
    def set_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::SetTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTagsForResource,
        stubs: @stubs,
        params_class: Params::SetTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the assessment run specified by the ARN of the assessment template. For this
    #          API to function properly, you must not exceed the limit of running up to 500 concurrent
    #          agents per AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAssessmentRunInput}.
    #
    # @option params [String] :assessment_template_arn
    #   <p>The ARN of the assessment template of the assessment run that you want to
    #            start.</p>
    #
    # @option params [String] :assessment_run_name
    #   <p>You can specify the name for the assessment run. The name must be unique for the
    #            assessment template whose ARN is used to start the assessment run.</p>
    #
    # @return [Types::StartAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_assessment_run(
    #     assessment_template_arn: 'assessmentTemplateArn', # required
    #     assessment_run_name: 'assessmentRunName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAssessmentRunOutput
    #   resp.data.assessment_run_arn #=> String
    #
    def start_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidCrossAccountRoleException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::AgentsAlreadyRunningAssessmentException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::StartAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAssessmentRun,
        stubs: @stubs,
        params_class: Params::StartAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the assessment run that is specified by the ARN of the assessment
    #          run.</p>
    #
    # @param [Hash] params
    #   See {Types::StopAssessmentRunInput}.
    #
    # @option params [String] :assessment_run_arn
    #   <p>The ARN of the assessment run that you want to stop.</p>
    #
    # @option params [String] :stop_action
    #   <p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION.
    #            START_EVALUATION (the default value), stops the AWS agent from collecting data and begins
    #            the results evaluation and the findings generation process. SKIP_EVALUATION cancels the
    #            assessment run immediately, after which no findings are generated.</p>
    #
    # @return [Types::StopAssessmentRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_assessment_run(
    #     assessment_run_arn: 'assessmentRunArn', # required
    #     stop_action: 'START_EVALUATION' # accepts ["START_EVALUATION", "SKIP_EVALUATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopAssessmentRunOutput
    #
    def stop_assessment_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopAssessmentRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopAssessmentRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopAssessmentRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::StopAssessmentRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopAssessmentRun,
        stubs: @stubs,
        params_class: Params::StopAssessmentRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_assessment_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the process of sending Amazon Simple Notification Service (SNS) notifications
    #          about a specified event to a specified SNS topic.</p>
    #
    # @param [Hash] params
    #   See {Types::SubscribeToEventInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to receive SNS notifications.</p>
    #
    # @option params [String] :event
    #   <p>The event for which you want to receive SNS notifications.</p>
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
    #
    # @return [Types::SubscribeToEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe_to_event(
    #     resource_arn: 'resourceArn', # required
    #     event: 'ASSESSMENT_RUN_STARTED', # required - accepts ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"]
    #     topic_arn: 'topicArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubscribeToEventOutput
    #
    def subscribe_to_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubscribeToEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubscribeToEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubscribeToEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::SubscribeToEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubscribeToEvent,
        stubs: @stubs,
        params_class: Params::SubscribeToEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :subscribe_to_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the process of sending Amazon Simple Notification Service (SNS)
    #          notifications about a specified event to a specified SNS topic.</p>
    #
    # @param [Hash] params
    #   See {Types::UnsubscribeFromEventInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the assessment template that is used during the event for which you want
    #            to stop receiving SNS notifications.</p>
    #
    # @option params [String] :event
    #   <p>The event for which you want to stop receiving SNS notifications.</p>
    #
    # @option params [String] :topic_arn
    #   <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
    #
    # @return [Types::UnsubscribeFromEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe_from_event(
    #     resource_arn: 'resourceArn', # required
    #     event: 'ASSESSMENT_RUN_STARTED', # required - accepts ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"]
    #     topic_arn: 'topicArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnsubscribeFromEventOutput
    #
    def unsubscribe_from_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnsubscribeFromEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnsubscribeFromEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnsubscribeFromEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::UnsubscribeFromEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnsubscribeFromEvent,
        stubs: @stubs,
        params_class: Params::UnsubscribeFromEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unsubscribe_from_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the assessment target that is specified by the ARN of the assessment
    #          target.</p>
    #          <p>If resourceGroupArn is not specified, all EC2 instances in the current AWS account
    #          and region are included in the assessment target.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentTargetInput}.
    #
    # @option params [String] :assessment_target_arn
    #   <p>The ARN of the assessment target that you want to update.</p>
    #
    # @option params [String] :assessment_target_name
    #   <p>The name of the assessment target that you want to update.</p>
    #
    # @option params [String] :resource_group_arn
    #   <p>The ARN of the resource group that is used to specify the new resource group to
    #            associate with the assessment target.</p>
    #
    # @return [Types::UpdateAssessmentTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_target(
    #     assessment_target_arn: 'assessmentTargetArn', # required
    #     assessment_target_name: 'assessmentTargetName', # required
    #     resource_group_arn: 'resourceGroupArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentTargetOutput
    #
    def update_assessment_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::AccessDeniedException, Errors::InvalidInputException, Errors::NoSuchEntityException, Errors::ServiceTemporarilyUnavailableException]),
        data_parser: Parsers::UpdateAssessmentTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentTarget,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_target
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
