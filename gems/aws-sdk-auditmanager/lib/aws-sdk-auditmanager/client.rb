# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::AuditManager
  # An API client for BedrockAssessmentManagerLambda
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the Audit Manager API reference. This guide is for developers who
  #          need detailed information about the Audit Manager API operations, data types, and
  #          errors. </p>
  #          <p>Audit Manager is a service that provides automated evidence collection so that
  #          you can continually audit your Amazon Web Services usage. You can use it to assess the
  #          effectiveness of your controls, manage risk, and simplify compliance.</p>
  #          <p>Audit Manager provides prebuilt frameworks that structure and automate
  #          assessments for a given compliance standard. Frameworks include a prebuilt collection of
  #          controls with descriptions and testing procedures. These controls are grouped according to
  #          the requirements of the specified compliance standard or regulation. You can also customize
  #          frameworks and controls to support internal audits with specific requirements. </p>
  #          <p>Use the following links to get started with the Audit Manager API:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html">Actions</a>: An
  #                alphabetical list of all Audit Manager API operations.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html">Data types</a>: An alphabetical list of all Audit Manager data
  #                types.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html">Common
  #                   parameters</a>: Parameters that all Query operations can use.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html">Common errors</a>:
  #                Client and server errors that all operations can return.</p>
  #             </li>
  #          </ul>
  #          <p>If you're new to Audit Manager, we recommend that you review the <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html">
  #             Audit Manager User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::AuditManager::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Associates an evidence folder to an assessment report in a Audit Manager
    #          assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAssessmentReportEvidenceFolderInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    # @return [Types::AssociateAssessmentReportEvidenceFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_assessment_report_evidence_folder(
    #     assessment_id: 'assessmentId', # required
    #     evidence_folder_id: 'evidenceFolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateAssessmentReportEvidenceFolderOutput
    #
    def associate_assessment_report_evidence_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAssessmentReportEvidenceFolderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAssessmentReportEvidenceFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAssessmentReportEvidenceFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateAssessmentReportEvidenceFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAssessmentReportEvidenceFolder,
        stubs: @stubs,
        params_class: Params::AssociateAssessmentReportEvidenceFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_assessment_report_evidence_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Associates a list of evidence to an assessment report in an Audit Manager
    #          assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateAssessmentReportEvidenceInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    # @option params [Array<String>] :evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #
    # @return [Types::BatchAssociateAssessmentReportEvidenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_assessment_report_evidence(
    #     assessment_id: 'assessmentId', # required
    #     evidence_folder_id: 'evidenceFolderId', # required
    #     evidence_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateAssessmentReportEvidenceOutput
    #   resp.data.evidence_ids #=> Array<String>
    #   resp.data.evidence_ids[0] #=> String
    #   resp.data.errors #=> Array<AssessmentReportEvidenceError>
    #   resp.data.errors[0] #=> Types::AssessmentReportEvidenceError
    #   resp.data.errors[0].evidence_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_associate_assessment_report_evidence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateAssessmentReportEvidenceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateAssessmentReportEvidenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateAssessmentReportEvidence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchAssociateAssessmentReportEvidence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateAssessmentReportEvidence,
        stubs: @stubs,
        params_class: Params::BatchAssociateAssessmentReportEvidenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_assessment_report_evidence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a batch of delegations for an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateDelegationByAssessmentInput}.
    #
    # @option params [Array<CreateDelegationRequest>] :create_delegation_requests
    #   <p> The API request to batch create delegations in Audit Manager. </p>
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @return [Types::BatchCreateDelegationByAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_delegation_by_assessment(
    #     create_delegation_requests: [
    #       {
    #         comment: 'comment',
    #         control_set_id: 'controlSetId',
    #         role_arn: 'roleArn',
    #         role_type: 'PROCESS_OWNER' # accepts ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #       }
    #     ], # required
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateDelegationByAssessmentOutput
    #   resp.data.delegations #=> Array<Delegation>
    #   resp.data.delegations[0] #=> Types::Delegation
    #   resp.data.delegations[0].id #=> String
    #   resp.data.delegations[0].assessment_name #=> String
    #   resp.data.delegations[0].assessment_id #=> String
    #   resp.data.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.delegations[0].role_arn #=> String
    #   resp.data.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.delegations[0].creation_time #=> Time
    #   resp.data.delegations[0].last_updated #=> Time
    #   resp.data.delegations[0].control_set_id #=> String
    #   resp.data.delegations[0].comment #=> String
    #   resp.data.delegations[0].created_by #=> String
    #   resp.data.errors #=> Array<BatchCreateDelegationByAssessmentError>
    #   resp.data.errors[0] #=> Types::BatchCreateDelegationByAssessmentError
    #   resp.data.errors[0].create_delegation_request #=> Types::CreateDelegationRequest
    #   resp.data.errors[0].create_delegation_request.comment #=> String
    #   resp.data.errors[0].create_delegation_request.control_set_id #=> String
    #   resp.data.errors[0].create_delegation_request.role_arn #=> String
    #   resp.data.errors[0].create_delegation_request.role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_delegation_by_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateDelegationByAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateDelegationByAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateDelegationByAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchCreateDelegationByAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateDelegationByAssessment,
        stubs: @stubs,
        params_class: Params::BatchCreateDelegationByAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_delegation_by_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a batch of delegations for an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteDelegationByAssessmentInput}.
    #
    # @option params [Array<String>] :delegation_ids
    #   <p> The identifiers for the delegations. </p>
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @return [Types::BatchDeleteDelegationByAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_delegation_by_assessment(
    #     delegation_ids: [
    #       'member'
    #     ], # required
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteDelegationByAssessmentOutput
    #   resp.data.errors #=> Array<BatchDeleteDelegationByAssessmentError>
    #   resp.data.errors[0] #=> Types::BatchDeleteDelegationByAssessmentError
    #   resp.data.errors[0].delegation_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_delete_delegation_by_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteDelegationByAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteDelegationByAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteDelegationByAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchDeleteDelegationByAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteDelegationByAssessment,
        stubs: @stubs,
        params_class: Params::BatchDeleteDelegationByAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_delegation_by_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Disassociates a list of evidence from an assessment report in Audit Manager.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateAssessmentReportEvidenceInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The identifier for the folder that the evidence is stored in. </p>
    #
    # @option params [Array<String>] :evidence_ids
    #   <p> The list of evidence identifiers. </p>
    #
    # @return [Types::BatchDisassociateAssessmentReportEvidenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_assessment_report_evidence(
    #     assessment_id: 'assessmentId', # required
    #     evidence_folder_id: 'evidenceFolderId', # required
    #     evidence_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateAssessmentReportEvidenceOutput
    #   resp.data.evidence_ids #=> Array<String>
    #   resp.data.evidence_ids[0] #=> String
    #   resp.data.errors #=> Array<AssessmentReportEvidenceError>
    #   resp.data.errors[0] #=> Types::AssessmentReportEvidenceError
    #   resp.data.errors[0].evidence_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_disassociate_assessment_report_evidence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateAssessmentReportEvidenceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateAssessmentReportEvidenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateAssessmentReportEvidence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchDisassociateAssessmentReportEvidence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateAssessmentReportEvidence,
        stubs: @stubs,
        params_class: Params::BatchDisassociateAssessmentReportEvidenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_assessment_report_evidence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Uploads one or more pieces of evidence to a control in an Audit Manager
    #          assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchImportEvidenceToAssessmentControlInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    #
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    #
    # @option params [Array<ManualEvidence>] :manual_evidence
    #   <p> The list of manual evidence objects. </p>
    #
    # @return [Types::BatchImportEvidenceToAssessmentControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_import_evidence_to_assessment_control(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     control_id: 'controlId', # required
    #     manual_evidence: [
    #       {
    #         s3_resource_path: 's3ResourcePath'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchImportEvidenceToAssessmentControlOutput
    #   resp.data.errors #=> Array<BatchImportEvidenceToAssessmentControlError>
    #   resp.data.errors[0] #=> Types::BatchImportEvidenceToAssessmentControlError
    #   resp.data.errors[0].manual_evidence #=> Types::ManualEvidence
    #   resp.data.errors[0].manual_evidence.s3_resource_path #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_import_evidence_to_assessment_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchImportEvidenceToAssessmentControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchImportEvidenceToAssessmentControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchImportEvidenceToAssessmentControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::BatchImportEvidenceToAssessmentControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchImportEvidenceToAssessmentControl,
        stubs: @stubs,
        params_class: Params::BatchImportEvidenceToAssessmentControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_import_evidence_to_assessment_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssessmentInput}.
    #
    # @option params [String] :name
    #   <p> The name of the assessment to be created. </p>
    #
    # @option params [String] :description
    #   <p> The optional description of the assessment to be created. </p>
    #
    # @option params [AssessmentReportsDestination] :assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being created. </p>
    #
    # @option params [Scope] :scope
    #   <p> The wrapper that contains the Amazon Web Services accounts and services that are in
    #            scope for the assessment. </p>
    #
    # @option params [Array<Role>] :roles
    #   <p> The list of roles for the assessment. </p>
    #
    # @option params [String] :framework_id
    #   <p> The identifier for the framework that the assessment will be created from. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the assessment. </p>
    #
    # @return [Types::CreateAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment(
    #     name: 'name', # required
    #     description: 'description',
    #     assessment_reports_destination: {
    #       destination_type: 'S3', # accepts ["S3"]
    #       destination: 'destination'
    #     }, # required
    #     scope: {
    #       aws_accounts: [
    #         {
    #           id: 'id',
    #           email_address: 'emailAddress',
    #           name: 'name'
    #         }
    #       ],
    #       aws_services: [
    #         {
    #           service_name: 'serviceName'
    #         }
    #       ]
    #     }, # required
    #     roles: [
    #       {
    #         role_type: 'PROCESS_OWNER', # required - accepts ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #         role_arn: 'roleArn' # required
    #       }
    #     ], # required
    #     framework_id: 'frameworkId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssessmentOutput
    #   resp.data.assessment #=> Types::Assessment
    #   resp.data.assessment.arn #=> String
    #   resp.data.assessment.aws_account #=> Types::AWSAccount
    #   resp.data.assessment.aws_account.id #=> String
    #   resp.data.assessment.aws_account.email_address #=> String
    #   resp.data.assessment.aws_account.name #=> String
    #   resp.data.assessment.metadata #=> Types::AssessmentMetadata
    #   resp.data.assessment.metadata.name #=> String
    #   resp.data.assessment.metadata.id #=> String
    #   resp.data.assessment.metadata.description #=> String
    #   resp.data.assessment.metadata.compliance_type #=> String
    #   resp.data.assessment.metadata.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.assessment.metadata.assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.data.assessment.metadata.scope #=> Types::Scope
    #   resp.data.assessment.metadata.scope.aws_accounts #=> Array<AWSAccount>
    #   resp.data.assessment.metadata.scope.aws_services #=> Array<AWSService>
    #   resp.data.assessment.metadata.scope.aws_services[0] #=> Types::AWSService
    #   resp.data.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.data.assessment.metadata.roles #=> Array<Role>
    #   resp.data.assessment.metadata.roles[0] #=> Types::Role
    #   resp.data.assessment.metadata.roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.roles[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations #=> Array<Delegation>
    #   resp.data.assessment.metadata.delegations[0] #=> Types::Delegation
    #   resp.data.assessment.metadata.delegations[0].id #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.data.assessment.metadata.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.data.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.data.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.data.assessment.metadata.delegations[0].comment #=> String
    #   resp.data.assessment.metadata.delegations[0].created_by #=> String
    #   resp.data.assessment.metadata.creation_time #=> Time
    #   resp.data.assessment.metadata.last_updated #=> Time
    #   resp.data.assessment.framework #=> Types::AssessmentFramework
    #   resp.data.assessment.framework.id #=> String
    #   resp.data.assessment.framework.arn #=> String
    #   resp.data.assessment.framework.metadata #=> Types::FrameworkMetadata
    #   resp.data.assessment.framework.metadata.name #=> String
    #   resp.data.assessment.framework.metadata.description #=> String
    #   resp.data.assessment.framework.metadata.logo #=> String
    #   resp.data.assessment.framework.metadata.compliance_type #=> String
    #   resp.data.assessment.framework.control_sets #=> Array<AssessmentControlSet>
    #   resp.data.assessment.framework.control_sets[0] #=> Types::AssessmentControlSet
    #   resp.data.assessment.framework.control_sets[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].status #=> String, one of ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #   resp.data.assessment.framework.control_sets[0].roles #=> Array<Role>
    #   resp.data.assessment.framework.control_sets[0].controls #=> Array<AssessmentControl>
    #   resp.data.assessment.framework.control_sets[0].controls[0] #=> Types::AssessmentControl
    #   resp.data.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments #=> Array<ControlComment>
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0] #=> Types::ControlComment
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array<String>
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].delegations #=> Array<Delegation>
    #   resp.data.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.tags['key'] #=> String
    #
    def create_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssessment,
        stubs: @stubs,
        params_class: Params::CreateAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a custom framework in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssessmentFrameworkInput}.
    #
    # @option params [String] :name
    #   <p> The name of the new custom framework. </p>
    #
    # @option params [String] :description
    #   <p> An optional description for the new custom framework. </p>
    #
    # @option params [String] :compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    # @option params [Array<CreateAssessmentFrameworkControlSet>] :control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the framework. </p>
    #
    # @return [Types::CreateAssessmentFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_framework(
    #     name: 'name', # required
    #     description: 'description',
    #     compliance_type: 'complianceType',
    #     control_sets: [
    #       {
    #         name: 'name', # required
    #         controls: [
    #           {
    #             id: 'id' # required
    #           }
    #         ]
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssessmentFrameworkOutput
    #   resp.data.framework #=> Types::Framework
    #   resp.data.framework.arn #=> String
    #   resp.data.framework.id #=> String
    #   resp.data.framework.name #=> String
    #   resp.data.framework.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.compliance_type #=> String
    #   resp.data.framework.description #=> String
    #   resp.data.framework.logo #=> String
    #   resp.data.framework.control_sources #=> String
    #   resp.data.framework.control_sets #=> Array<ControlSet>
    #   resp.data.framework.control_sets[0] #=> Types::ControlSet
    #   resp.data.framework.control_sets[0].id #=> String
    #   resp.data.framework.control_sets[0].name #=> String
    #   resp.data.framework.control_sets[0].controls #=> Array<Control>
    #   resp.data.framework.control_sets[0].controls[0] #=> Types::Control
    #   resp.data.framework.control_sets[0].controls[0].arn #=> String
    #   resp.data.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.framework.control_sets[0].controls[0].type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].tags #=> Hash<String, String>
    #   resp.data.framework.control_sets[0].controls[0].tags['key'] #=> String
    #   resp.data.framework.created_at #=> Time
    #   resp.data.framework.last_updated_at #=> Time
    #   resp.data.framework.created_by #=> String
    #   resp.data.framework.last_updated_by #=> String
    #   resp.data.framework.tags #=> Hash<String, String>
    #
    def create_assessment_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssessmentFrameworkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssessmentFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssessmentFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateAssessmentFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssessmentFramework,
        stubs: @stubs,
        params_class: Params::CreateAssessmentFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assessment_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates an assessment report for the specified assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssessmentReportInput}.
    #
    # @option params [String] :name
    #   <p> The name of the new assessment report. </p>
    #
    # @option params [String] :description
    #   <p> The description of the assessment report. </p>
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @return [Types::CreateAssessmentReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assessment_report(
    #     name: 'name', # required
    #     description: 'description',
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssessmentReportOutput
    #   resp.data.assessment_report #=> Types::AssessmentReport
    #   resp.data.assessment_report.id #=> String
    #   resp.data.assessment_report.name #=> String
    #   resp.data.assessment_report.description #=> String
    #   resp.data.assessment_report.aws_account_id #=> String
    #   resp.data.assessment_report.assessment_id #=> String
    #   resp.data.assessment_report.assessment_name #=> String
    #   resp.data.assessment_report.author #=> String
    #   resp.data.assessment_report.status #=> String, one of ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #   resp.data.assessment_report.creation_time #=> Time
    #
    def create_assessment_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssessmentReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssessmentReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssessmentReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateAssessmentReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssessmentReport,
        stubs: @stubs,
        params_class: Params::CreateAssessmentReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assessment_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new custom control in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateControlInput}.
    #
    # @option params [String] :name
    #   <p> The name of the control. </p>
    #
    # @option params [String] :description
    #   <p> The description of the control. </p>
    #
    # @option params [String] :testing_information
    #   <p> The steps to follow to determine if the control is satisfied. </p>
    #
    # @option params [String] :action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #
    # @option params [String] :action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #
    # @option params [Array<CreateControlMappingSource>] :control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the control. </p>
    #
    # @return [Types::CreateControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_control(
    #     name: 'name', # required
    #     description: 'description',
    #     testing_information: 'testingInformation',
    #     action_plan_title: 'actionPlanTitle',
    #     action_plan_instructions: 'actionPlanInstructions',
    #     control_mapping_sources: [
    #       {
    #         source_name: 'sourceName',
    #         source_description: 'sourceDescription',
    #         source_set_up_option: 'System_Controls_Mapping', # accepts ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #         source_type: 'AWS_Cloudtrail', # accepts ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #         source_keyword: {
    #           keyword_input_type: 'SELECT_FROM_LIST', # accepts ["SELECT_FROM_LIST"]
    #           keyword_value: 'keywordValue'
    #         },
    #         source_frequency: 'DAILY', # accepts ["DAILY", "WEEKLY", "MONTHLY"]
    #         troubleshooting_text: 'troubleshootingText'
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateControlOutput
    #   resp.data.control #=> Types::Control
    #   resp.data.control.arn #=> String
    #   resp.data.control.id #=> String
    #   resp.data.control.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.control.name #=> String
    #   resp.data.control.description #=> String
    #   resp.data.control.testing_information #=> String
    #   resp.data.control.action_plan_title #=> String
    #   resp.data.control.action_plan_instructions #=> String
    #   resp.data.control.control_sources #=> String
    #   resp.data.control.control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.control.control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.control.control_mapping_sources[0].source_id #=> String
    #   resp.data.control.control_mapping_sources[0].source_name #=> String
    #   resp.data.control.control_mapping_sources[0].source_description #=> String
    #   resp.data.control.control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.control.control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.control.control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.control.control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.control.created_at #=> Time
    #   resp.data.control.last_updated_at #=> Time
    #   resp.data.control.created_by #=> String
    #   resp.data.control.last_updated_by #=> String
    #   resp.data.control.tags #=> Hash<String, String>
    #   resp.data.control.tags['key'] #=> String
    #
    def create_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateControl,
        stubs: @stubs,
        params_class: Params::CreateControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @return [Types::DeleteAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment(
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentOutput
    #
    def delete_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessment,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a custom framework in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentFrameworkInput}.
    #
    # @option params [String] :framework_id
    #   <p> The identifier for the custom framework. </p>
    #
    # @return [Types::DeleteAssessmentFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_framework(
    #     framework_id: 'frameworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentFrameworkOutput
    #
    def delete_assessment_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentFrameworkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAssessmentFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentFramework,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Deletes a share request for a custom framework in Audit Manager.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentFrameworkShareInput}.
    #
    # @option params [String] :request_id
    #   <p>The unique identifier for the share request to be deleted.</p>
    #
    # @option params [String] :request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #
    # @return [Types::DeleteAssessmentFrameworkShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_framework_share(
    #     request_id: 'requestId', # required
    #     request_type: 'SENT' # required - accepts ["SENT", "RECEIVED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentFrameworkShareOutput
    #
    def delete_assessment_framework_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentFrameworkShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentFrameworkShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentFrameworkShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAssessmentFrameworkShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentFrameworkShare,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentFrameworkShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_framework_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an assessment report in Audit Manager. </p>
    #          <p>When you run the <code>DeleteAssessmentReport</code> operation, Audit Manager attempts to delete the following data:</p>
    #          <ol>
    #             <li>
    #                <p>The specified assessment report that’s stored in your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>The associated metadata that’s stored in Audit Manager</p>
    #             </li>
    #          </ol>
    #          <p>If Audit Manager can’t access the assessment report in your S3 bucket, the report
    #          isn’t deleted. In this event, the <code>DeleteAssessmentReport</code> operation doesn’t
    #          fail. Instead, it proceeds to delete the associated metadata only. You must then delete the
    #          assessment report from the S3 bucket yourself. </p>
    #          <p>This scenario happens when Audit Manager receives a <code>403 (Forbidden)</code> or
    #             <code>404 (Not Found)</code> error from Amazon S3. To avoid this, make sure that
    #          your S3 bucket is available, and that you configured the correct permissions for Audit Manager to delete resources in your S3 bucket. For an example permissions policy that
    #          you can use, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination">Assessment report destination permissions</a> in the <i>Audit Manager User Guide</i>. For information about the issues that could cause a <code>403
    #             (Forbidden)</code> or <code>404 (Not Found</code>) error from Amazon S3, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of Error Codes</a> in the <i>Amazon Simple Storage Service API
    #             Reference</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssessmentReportInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #
    # @return [Types::DeleteAssessmentReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assessment_report(
    #     assessment_id: 'assessmentId', # required
    #     assessment_report_id: 'assessmentReportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssessmentReportOutput
    #
    def delete_assessment_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssessmentReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssessmentReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssessmentReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAssessmentReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssessmentReport,
        stubs: @stubs,
        params_class: Params::DeleteAssessmentReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assessment_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a custom control in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteControlInput}.
    #
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    #
    # @return [Types::DeleteControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_control(
    #     control_id: 'controlId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteControlOutput
    #
    def delete_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteControl,
        stubs: @stubs,
        params_class: Params::DeleteControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deregisters an account in Audit Manager. </p>
    #          <note>
    #             <p>When you deregister your account from Audit Manager, your data isn’t deleted. If you want
    #             to delete your resource data, you must perform that task separately before you
    #             deregister your account. Either, you can do this in the Audit Manager console. Or,
    #             you can use one of the delete API operations that are provided by Audit Manager. </p>
    #             <p>To delete your Audit Manager resource data, see the following instructions: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html">DeleteAssessment</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html">Deleting an
    #                      assessment</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html">DeleteAssessmentFramework</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html">Deleting a
    #                      custom framework</a> in the <i>Audit Manager User
    #                      Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html">DeleteAssessmentFrameworkShare</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html">Deleting a share request</a> in the <i>Audit Manager User
    #                      Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html">DeleteAssessmentReport</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps">Deleting an assessment report</a> in the <i>Audit Manager
    #                      User Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html">DeleteControl</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html">Deleting a custom
    #                      control</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #                </li>
    #             </ul>
    #             <p>At this time, Audit Manager doesn't provide an option to delete evidence. All
    #             available delete operations are listed above.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterAccountInput}.
    #
    # @return [Types::DeregisterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterAccountOutput
    #   resp.data.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    def deregister_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterAccount,
        stubs: @stubs,
        params_class: Params::DeregisterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified Amazon Web Services account as a delegated administrator for
    #             Audit Manager. </p>
    #          <important>
    #             <p>When you remove a delegated administrator from your Audit Manager settings, you
    #             continue to have access to the evidence that you previously collected under that
    #             account. This is also the case when you deregister a delegated administrator from
    #                Organizations. However, Audit Manager will stop collecting and attaching
    #             evidence to that delegated administrator account moving forward.</p>
    #          </important>
    #          <note>
    #             <p>When you deregister a delegated administrator account for Audit Manager, the data for that
    #             account isn’t deleted. If you want to delete resource data for a delegated administrator
    #             account, you must perform that task separately before you deregister the account.
    #             Either, you can do this in the Audit Manager console. Or, you can use one of the
    #             delete API operations that are provided by Audit Manager. </p>
    #             <p>To delete your Audit Manager resource data, see the following instructions: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html">DeleteAssessment</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html">Deleting an
    #                      assessment</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html">DeleteAssessmentFramework</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html">Deleting a
    #                      custom framework</a> in the <i>Audit Manager User
    #                      Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html">DeleteAssessmentFrameworkShare</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html">Deleting a share request</a> in the <i>Audit Manager User
    #                      Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html">DeleteAssessmentReport</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps">Deleting an assessment report</a> in the <i>Audit Manager
    #                      User Guide</i>)</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html">DeleteControl</a> (see also: <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html">Deleting a custom
    #                      control</a> in the <i>Audit Manager User
    #                   Guide</i>)</p>
    #                </li>
    #             </ul>
    #             <p>At this time, Audit Manager doesn't provide an option to delete evidence. All
    #             available delete operations are listed above.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p> The identifier for the administrator account. </p>
    #
    # @return [Types::DeregisterOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_organization_admin_account(
    #     admin_account_id: 'adminAccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterOrganizationAdminAccountOutput
    #
    def deregister_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterOrganizationAdminAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterOrganizationAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::DeregisterOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Disassociates an evidence folder from the specified assessment report in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAssessmentReportEvidenceFolderInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    # @return [Types::DisassociateAssessmentReportEvidenceFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_assessment_report_evidence_folder(
    #     assessment_id: 'assessmentId', # required
    #     evidence_folder_id: 'evidenceFolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAssessmentReportEvidenceFolderOutput
    #
    def disassociate_assessment_report_evidence_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAssessmentReportEvidenceFolderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAssessmentReportEvidenceFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAssessmentReportEvidenceFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateAssessmentReportEvidenceFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAssessmentReportEvidenceFolder,
        stubs: @stubs,
        params_class: Params::DisassociateAssessmentReportEvidenceFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_assessment_report_evidence_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the registration status of an account in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountStatusInput}.
    #
    # @return [Types::GetAccountStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_status()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountStatusOutput
    #   resp.data.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    def get_account_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException]),
        data_parser: Parsers::GetAccountStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountStatus,
        stubs: @stubs,
        params_class: Params::GetAccountStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an assessment from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    # @return [Types::GetAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment(
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssessmentOutput
    #   resp.data.assessment #=> Types::Assessment
    #   resp.data.assessment.arn #=> String
    #   resp.data.assessment.aws_account #=> Types::AWSAccount
    #   resp.data.assessment.aws_account.id #=> String
    #   resp.data.assessment.aws_account.email_address #=> String
    #   resp.data.assessment.aws_account.name #=> String
    #   resp.data.assessment.metadata #=> Types::AssessmentMetadata
    #   resp.data.assessment.metadata.name #=> String
    #   resp.data.assessment.metadata.id #=> String
    #   resp.data.assessment.metadata.description #=> String
    #   resp.data.assessment.metadata.compliance_type #=> String
    #   resp.data.assessment.metadata.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.assessment.metadata.assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.data.assessment.metadata.scope #=> Types::Scope
    #   resp.data.assessment.metadata.scope.aws_accounts #=> Array<AWSAccount>
    #   resp.data.assessment.metadata.scope.aws_services #=> Array<AWSService>
    #   resp.data.assessment.metadata.scope.aws_services[0] #=> Types::AWSService
    #   resp.data.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.data.assessment.metadata.roles #=> Array<Role>
    #   resp.data.assessment.metadata.roles[0] #=> Types::Role
    #   resp.data.assessment.metadata.roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.roles[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations #=> Array<Delegation>
    #   resp.data.assessment.metadata.delegations[0] #=> Types::Delegation
    #   resp.data.assessment.metadata.delegations[0].id #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.data.assessment.metadata.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.data.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.data.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.data.assessment.metadata.delegations[0].comment #=> String
    #   resp.data.assessment.metadata.delegations[0].created_by #=> String
    #   resp.data.assessment.metadata.creation_time #=> Time
    #   resp.data.assessment.metadata.last_updated #=> Time
    #   resp.data.assessment.framework #=> Types::AssessmentFramework
    #   resp.data.assessment.framework.id #=> String
    #   resp.data.assessment.framework.arn #=> String
    #   resp.data.assessment.framework.metadata #=> Types::FrameworkMetadata
    #   resp.data.assessment.framework.metadata.name #=> String
    #   resp.data.assessment.framework.metadata.description #=> String
    #   resp.data.assessment.framework.metadata.logo #=> String
    #   resp.data.assessment.framework.metadata.compliance_type #=> String
    #   resp.data.assessment.framework.control_sets #=> Array<AssessmentControlSet>
    #   resp.data.assessment.framework.control_sets[0] #=> Types::AssessmentControlSet
    #   resp.data.assessment.framework.control_sets[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].status #=> String, one of ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #   resp.data.assessment.framework.control_sets[0].roles #=> Array<Role>
    #   resp.data.assessment.framework.control_sets[0].controls #=> Array<AssessmentControl>
    #   resp.data.assessment.framework.control_sets[0].controls[0] #=> Types::AssessmentControl
    #   resp.data.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments #=> Array<ControlComment>
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0] #=> Types::ControlComment
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array<String>
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].delegations #=> Array<Delegation>
    #   resp.data.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.tags['key'] #=> String
    #   resp.data.user_role #=> Types::Role
    #
    def get_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssessment,
        stubs: @stubs,
        params_class: Params::GetAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a framework from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssessmentFrameworkInput}.
    #
    # @option params [String] :framework_id
    #   <p> The identifier for the framework. </p>
    #
    # @return [Types::GetAssessmentFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment_framework(
    #     framework_id: 'frameworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssessmentFrameworkOutput
    #   resp.data.framework #=> Types::Framework
    #   resp.data.framework.arn #=> String
    #   resp.data.framework.id #=> String
    #   resp.data.framework.name #=> String
    #   resp.data.framework.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.compliance_type #=> String
    #   resp.data.framework.description #=> String
    #   resp.data.framework.logo #=> String
    #   resp.data.framework.control_sources #=> String
    #   resp.data.framework.control_sets #=> Array<ControlSet>
    #   resp.data.framework.control_sets[0] #=> Types::ControlSet
    #   resp.data.framework.control_sets[0].id #=> String
    #   resp.data.framework.control_sets[0].name #=> String
    #   resp.data.framework.control_sets[0].controls #=> Array<Control>
    #   resp.data.framework.control_sets[0].controls[0] #=> Types::Control
    #   resp.data.framework.control_sets[0].controls[0].arn #=> String
    #   resp.data.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.framework.control_sets[0].controls[0].type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].tags #=> Hash<String, String>
    #   resp.data.framework.control_sets[0].controls[0].tags['key'] #=> String
    #   resp.data.framework.created_at #=> Time
    #   resp.data.framework.last_updated_at #=> Time
    #   resp.data.framework.created_by #=> String
    #   resp.data.framework.last_updated_by #=> String
    #   resp.data.framework.tags #=> Hash<String, String>
    #
    def get_assessment_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssessmentFrameworkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssessmentFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssessmentFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetAssessmentFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssessmentFramework,
        stubs: @stubs,
        params_class: Params::GetAssessmentFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assessment_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the URL of an assessment report in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssessmentReportUrlInput}.
    #
    # @option params [String] :assessment_report_id
    #   <p> The unique identifier for the assessment report. </p>
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @return [Types::GetAssessmentReportUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment_report_url(
    #     assessment_report_id: 'assessmentReportId', # required
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssessmentReportUrlOutput
    #   resp.data.pre_signed_url #=> Types::URL
    #   resp.data.pre_signed_url.hyperlink_name #=> String
    #   resp.data.pre_signed_url.link #=> String
    #
    def get_assessment_report_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssessmentReportUrlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssessmentReportUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssessmentReportUrl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetAssessmentReportUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssessmentReportUrl,
        stubs: @stubs,
        params_class: Params::GetAssessmentReportUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assessment_report_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of changelogs from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetChangeLogsInput}.
    #
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::GetChangeLogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change_logs(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId',
    #     control_id: 'controlId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChangeLogsOutput
    #   resp.data.change_logs #=> Array<ChangeLog>
    #   resp.data.change_logs[0] #=> Types::ChangeLog
    #   resp.data.change_logs[0].object_type #=> String, one of ["ASSESSMENT", "CONTROL_SET", "CONTROL", "DELEGATION", "ASSESSMENT_REPORT"]
    #   resp.data.change_logs[0].object_name #=> String
    #   resp.data.change_logs[0].action #=> String, one of ["CREATE", "UPDATE_METADATA", "ACTIVE", "INACTIVE", "DELETE", "UNDER_REVIEW", "REVIEWED", "IMPORT_EVIDENCE"]
    #   resp.data.change_logs[0].created_at #=> Time
    #   resp.data.change_logs[0].created_by #=> String
    #   resp.data.next_token #=> String
    #
    def get_change_logs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChangeLogsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChangeLogsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChangeLogs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetChangeLogs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChangeLogs,
        stubs: @stubs,
        params_class: Params::GetChangeLogsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_change_logs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a control from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetControlInput}.
    #
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    #
    # @return [Types::GetControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_control(
    #     control_id: 'controlId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetControlOutput
    #   resp.data.control #=> Types::Control
    #   resp.data.control.arn #=> String
    #   resp.data.control.id #=> String
    #   resp.data.control.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.control.name #=> String
    #   resp.data.control.description #=> String
    #   resp.data.control.testing_information #=> String
    #   resp.data.control.action_plan_title #=> String
    #   resp.data.control.action_plan_instructions #=> String
    #   resp.data.control.control_sources #=> String
    #   resp.data.control.control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.control.control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.control.control_mapping_sources[0].source_id #=> String
    #   resp.data.control.control_mapping_sources[0].source_name #=> String
    #   resp.data.control.control_mapping_sources[0].source_description #=> String
    #   resp.data.control.control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.control.control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.control.control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.control.control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.control.created_at #=> Time
    #   resp.data.control.last_updated_at #=> Time
    #   resp.data.control.created_by #=> String
    #   resp.data.control.last_updated_by #=> String
    #   resp.data.control.tags #=> Hash<String, String>
    #   resp.data.control.tags['key'] #=> String
    #
    def get_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetControl,
        stubs: @stubs,
        params_class: Params::GetControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of delegations from an audit owner to a delegate. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDelegationsInput}.
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::GetDelegationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delegations(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDelegationsOutput
    #   resp.data.delegations #=> Array<DelegationMetadata>
    #   resp.data.delegations[0] #=> Types::DelegationMetadata
    #   resp.data.delegations[0].id #=> String
    #   resp.data.delegations[0].assessment_name #=> String
    #   resp.data.delegations[0].assessment_id #=> String
    #   resp.data.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.delegations[0].role_arn #=> String
    #   resp.data.delegations[0].creation_time #=> Time
    #   resp.data.delegations[0].control_set_name #=> String
    #   resp.data.next_token #=> String
    #
    def get_delegations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDelegationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDelegationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDelegations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetDelegations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDelegations,
        stubs: @stubs,
        params_class: Params::GetDelegationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_delegations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns evidence from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEvidenceInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    # @option params [String] :evidence_id
    #   <p> The unique identifier for the evidence. </p>
    #
    # @return [Types::GetEvidenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     evidence_folder_id: 'evidenceFolderId', # required
    #     evidence_id: 'evidenceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvidenceOutput
    #   resp.data.evidence #=> Types::Evidence
    #   resp.data.evidence.data_source #=> String
    #   resp.data.evidence.evidence_aws_account_id #=> String
    #   resp.data.evidence.time #=> Time
    #   resp.data.evidence.event_source #=> String
    #   resp.data.evidence.event_name #=> String
    #   resp.data.evidence.evidence_by_type #=> String
    #   resp.data.evidence.resources_included #=> Array<Resource>
    #   resp.data.evidence.resources_included[0] #=> Types::Resource
    #   resp.data.evidence.resources_included[0].arn #=> String
    #   resp.data.evidence.resources_included[0].value #=> String
    #   resp.data.evidence.attributes #=> Hash<String, String>
    #   resp.data.evidence.attributes['key'] #=> String
    #   resp.data.evidence.iam_id #=> String
    #   resp.data.evidence.compliance_check #=> String
    #   resp.data.evidence.aws_organization #=> String
    #   resp.data.evidence.aws_account_id #=> String
    #   resp.data.evidence.evidence_folder_id #=> String
    #   resp.data.evidence.id #=> String
    #   resp.data.evidence.assessment_report_selection #=> String
    #
    def get_evidence(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvidenceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvidenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvidence
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetEvidence
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvidence,
        stubs: @stubs,
        params_class: Params::GetEvidenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evidence
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns all evidence from a specified evidence folder in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEvidenceByEvidenceFolderInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::GetEvidenceByEvidenceFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_by_evidence_folder(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     evidence_folder_id: 'evidenceFolderId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvidenceByEvidenceFolderOutput
    #   resp.data.evidence #=> Array<Evidence>
    #   resp.data.evidence[0] #=> Types::Evidence
    #   resp.data.evidence[0].data_source #=> String
    #   resp.data.evidence[0].evidence_aws_account_id #=> String
    #   resp.data.evidence[0].time #=> Time
    #   resp.data.evidence[0].event_source #=> String
    #   resp.data.evidence[0].event_name #=> String
    #   resp.data.evidence[0].evidence_by_type #=> String
    #   resp.data.evidence[0].resources_included #=> Array<Resource>
    #   resp.data.evidence[0].resources_included[0] #=> Types::Resource
    #   resp.data.evidence[0].resources_included[0].arn #=> String
    #   resp.data.evidence[0].resources_included[0].value #=> String
    #   resp.data.evidence[0].attributes #=> Hash<String, String>
    #   resp.data.evidence[0].attributes['key'] #=> String
    #   resp.data.evidence[0].iam_id #=> String
    #   resp.data.evidence[0].compliance_check #=> String
    #   resp.data.evidence[0].aws_organization #=> String
    #   resp.data.evidence[0].aws_account_id #=> String
    #   resp.data.evidence[0].evidence_folder_id #=> String
    #   resp.data.evidence[0].id #=> String
    #   resp.data.evidence[0].assessment_report_selection #=> String
    #   resp.data.next_token #=> String
    #
    def get_evidence_by_evidence_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvidenceByEvidenceFolderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvidenceByEvidenceFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvidenceByEvidenceFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetEvidenceByEvidenceFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvidenceByEvidenceFolder,
        stubs: @stubs,
        params_class: Params::GetEvidenceByEvidenceFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evidence_by_evidence_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns an evidence folder from the specified assessment in Audit Manager.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetEvidenceFolderInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    # @option params [String] :evidence_folder_id
    #   <p> The unique identifier for the folder that the evidence is stored in. </p>
    #
    # @return [Types::GetEvidenceFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folder(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     evidence_folder_id: 'evidenceFolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvidenceFolderOutput
    #   resp.data.evidence_folder #=> Types::AssessmentEvidenceFolder
    #   resp.data.evidence_folder.name #=> String
    #   resp.data.evidence_folder.date #=> Time
    #   resp.data.evidence_folder.assessment_id #=> String
    #   resp.data.evidence_folder.control_set_id #=> String
    #   resp.data.evidence_folder.control_id #=> String
    #   resp.data.evidence_folder.id #=> String
    #   resp.data.evidence_folder.data_source #=> String
    #   resp.data.evidence_folder.author #=> String
    #   resp.data.evidence_folder.total_evidence #=> Integer
    #   resp.data.evidence_folder.assessment_report_selection_count #=> Integer
    #   resp.data.evidence_folder.control_name #=> String
    #   resp.data.evidence_folder.evidence_resources_included_count #=> Integer
    #   resp.data.evidence_folder.evidence_by_type_configuration_data_count #=> Integer
    #   resp.data.evidence_folder.evidence_by_type_manual_count #=> Integer
    #   resp.data.evidence_folder.evidence_by_type_compliance_check_count #=> Integer
    #   resp.data.evidence_folder.evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.data.evidence_folder.evidence_by_type_user_activity_count #=> Integer
    #   resp.data.evidence_folder.evidence_aws_service_source_count #=> Integer
    #
    def get_evidence_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvidenceFolderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvidenceFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvidenceFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetEvidenceFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvidenceFolder,
        stubs: @stubs,
        params_class: Params::GetEvidenceFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evidence_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the evidence folders from a specified assessment in Audit Manager.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetEvidenceFoldersByAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::GetEvidenceFoldersByAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folders_by_assessment(
    #     assessment_id: 'assessmentId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvidenceFoldersByAssessmentOutput
    #   resp.data.evidence_folders #=> Array<AssessmentEvidenceFolder>
    #   resp.data.evidence_folders[0] #=> Types::AssessmentEvidenceFolder
    #   resp.data.evidence_folders[0].name #=> String
    #   resp.data.evidence_folders[0].date #=> Time
    #   resp.data.evidence_folders[0].assessment_id #=> String
    #   resp.data.evidence_folders[0].control_set_id #=> String
    #   resp.data.evidence_folders[0].control_id #=> String
    #   resp.data.evidence_folders[0].id #=> String
    #   resp.data.evidence_folders[0].data_source #=> String
    #   resp.data.evidence_folders[0].author #=> String
    #   resp.data.evidence_folders[0].total_evidence #=> Integer
    #   resp.data.evidence_folders[0].assessment_report_selection_count #=> Integer
    #   resp.data.evidence_folders[0].control_name #=> String
    #   resp.data.evidence_folders[0].evidence_resources_included_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_configuration_data_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_manual_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_compliance_check_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_user_activity_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_aws_service_source_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_evidence_folders_by_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvidenceFoldersByAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvidenceFoldersByAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvidenceFoldersByAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetEvidenceFoldersByAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvidenceFoldersByAssessment,
        stubs: @stubs,
        params_class: Params::GetEvidenceFoldersByAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evidence_folders_by_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of evidence folders that are associated with a specified control of an
    #          assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEvidenceFoldersByAssessmentControlInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The identifier for the control set. </p>
    #
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::GetEvidenceFoldersByAssessmentControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evidence_folders_by_assessment_control(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     control_id: 'controlId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEvidenceFoldersByAssessmentControlOutput
    #   resp.data.evidence_folders #=> Array<AssessmentEvidenceFolder>
    #   resp.data.evidence_folders[0] #=> Types::AssessmentEvidenceFolder
    #   resp.data.evidence_folders[0].name #=> String
    #   resp.data.evidence_folders[0].date #=> Time
    #   resp.data.evidence_folders[0].assessment_id #=> String
    #   resp.data.evidence_folders[0].control_set_id #=> String
    #   resp.data.evidence_folders[0].control_id #=> String
    #   resp.data.evidence_folders[0].id #=> String
    #   resp.data.evidence_folders[0].data_source #=> String
    #   resp.data.evidence_folders[0].author #=> String
    #   resp.data.evidence_folders[0].total_evidence #=> Integer
    #   resp.data.evidence_folders[0].assessment_report_selection_count #=> Integer
    #   resp.data.evidence_folders[0].control_name #=> String
    #   resp.data.evidence_folders[0].evidence_resources_included_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_configuration_data_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_manual_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_compliance_check_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_compliance_check_issues_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_by_type_user_activity_count #=> Integer
    #   resp.data.evidence_folders[0].evidence_aws_service_source_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_evidence_folders_by_assessment_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEvidenceFoldersByAssessmentControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEvidenceFoldersByAssessmentControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvidenceFoldersByAssessmentControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetEvidenceFoldersByAssessmentControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvidenceFoldersByAssessmentControl,
        stubs: @stubs,
        params_class: Params::GetEvidenceFoldersByAssessmentControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_evidence_folders_by_assessment_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the latest analytics data for all your current active assessments. </p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightsInput}.
    #
    # @return [Types::GetInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightsOutput
    #   resp.data.insights #=> Types::Insights
    #   resp.data.insights.active_assessments_count #=> Integer
    #   resp.data.insights.noncompliant_evidence_count #=> Integer
    #   resp.data.insights.compliant_evidence_count #=> Integer
    #   resp.data.insights.inconclusive_evidence_count #=> Integer
    #   resp.data.insights.assessment_controls_count_by_noncompliant_evidence #=> Integer
    #   resp.data.insights.total_assessment_controls_count #=> Integer
    #   resp.data.insights.last_updated #=> Time
    #
    def get_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsights
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::GetInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsights,
        stubs: @stubs,
        params_class: Params::GetInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the latest analytics data for a specific active assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightsByAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the assessment. </p>
    #
    # @return [Types::GetInsightsByAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights_by_assessment(
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightsByAssessmentOutput
    #   resp.data.insights #=> Types::InsightsByAssessment
    #   resp.data.insights.noncompliant_evidence_count #=> Integer
    #   resp.data.insights.compliant_evidence_count #=> Integer
    #   resp.data.insights.inconclusive_evidence_count #=> Integer
    #   resp.data.insights.assessment_controls_count_by_noncompliant_evidence #=> Integer
    #   resp.data.insights.total_assessment_controls_count #=> Integer
    #   resp.data.insights.last_updated #=> Time
    #
    def get_insights_by_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightsByAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightsByAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightsByAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetInsightsByAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightsByAssessment,
        stubs: @stubs,
        params_class: Params::GetInsightsByAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insights_by_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the name of the delegated Amazon Web Services administrator account for the
    #          organization. </p>
    #
    # @param [Hash] params
    #   See {Types::GetOrganizationAdminAccountInput}.
    #
    # @return [Types::GetOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_admin_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrganizationAdminAccountOutput
    #   resp.data.admin_account_id #=> String
    #   resp.data.organization_id #=> String
    #
    def get_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrganizationAdminAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrganizationAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::GetOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of the in-scope Amazon Web Services for the specified
    #          assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::GetServicesInScopeInput}.
    #
    # @return [Types::GetServicesInScopeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_services_in_scope()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServicesInScopeOutput
    #   resp.data.service_metadata #=> Array<ServiceMetadata>
    #   resp.data.service_metadata[0] #=> Types::ServiceMetadata
    #   resp.data.service_metadata[0].name #=> String
    #   resp.data.service_metadata[0].display_name #=> String
    #   resp.data.service_metadata[0].description #=> String
    #   resp.data.service_metadata[0].category #=> String
    #
    def get_services_in_scope(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServicesInScopeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServicesInScopeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServicesInScope
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetServicesInScope
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServicesInScope,
        stubs: @stubs,
        params_class: Params::GetServicesInScopeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_services_in_scope
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the settings for the specified Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::GetSettingsInput}.
    #
    # @option params [String] :attribute
    #   <p> The list of <code>SettingAttribute</code> enum values. </p>
    #
    # @return [Types::GetSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_settings(
    #     attribute: 'ALL' # required - accepts ["ALL", "IS_AWS_ORG_ENABLED", "SNS_TOPIC", "DEFAULT_ASSESSMENT_REPORTS_DESTINATION", "DEFAULT_PROCESS_OWNERS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSettingsOutput
    #   resp.data.settings #=> Types::Settings
    #   resp.data.settings.is_aws_org_enabled #=> Boolean
    #   resp.data.settings.sns_topic #=> String
    #   resp.data.settings.default_assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.settings.default_assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.settings.default_assessment_reports_destination.destination #=> String
    #   resp.data.settings.default_process_owners #=> Array<Role>
    #   resp.data.settings.default_process_owners[0] #=> Types::Role
    #   resp.data.settings.default_process_owners[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.settings.default_process_owners[0].role_arn #=> String
    #   resp.data.settings.kms_key #=> String
    #
    def get_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::GetSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSettings,
        stubs: @stubs,
        params_class: Params::GetSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the latest analytics data for controls within a specific control domain and a
    #          specific active assessment.</p>
    #          <note>
    #             <p>Control insights are listed only if the control belongs to the control domain and assessment
    #          that was specified. Moreover, the control must have collected evidence on the
    #          <code>lastUpdated</code> date of <code>controlInsightsByAssessment</code>. If neither
    #          of these conditions are met, no data is listed for that control. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentControlInsightsByControlDomainInput}.
    #
    # @option params [String] :control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListAssessmentControlInsightsByControlDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_control_insights_by_control_domain(
    #     control_domain_id: 'controlDomainId', # required
    #     assessment_id: 'assessmentId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentControlInsightsByControlDomainOutput
    #   resp.data.control_insights_by_assessment #=> Array<ControlInsightsMetadataByAssessmentItem>
    #   resp.data.control_insights_by_assessment[0] #=> Types::ControlInsightsMetadataByAssessmentItem
    #   resp.data.control_insights_by_assessment[0].name #=> String
    #   resp.data.control_insights_by_assessment[0].id #=> String
    #   resp.data.control_insights_by_assessment[0].evidence_insights #=> Types::EvidenceInsights
    #   resp.data.control_insights_by_assessment[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.data.control_insights_by_assessment[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.data.control_insights_by_assessment[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.data.control_insights_by_assessment[0].control_set_name #=> String
    #   resp.data.control_insights_by_assessment[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_assessment_control_insights_by_control_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentControlInsightsByControlDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentControlInsightsByControlDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentControlInsightsByControlDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAssessmentControlInsightsByControlDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentControlInsightsByControlDomain,
        stubs: @stubs,
        params_class: Params::ListAssessmentControlInsightsByControlDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_control_insights_by_control_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of sent or received share requests for custom frameworks in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentFrameworkShareRequestsInput}.
    #
    # @option params [String] :request_type
    #   <p> Specifies whether the share request is a sent request or a received request.</p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListAssessmentFrameworkShareRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_framework_share_requests(
    #     request_type: 'SENT', # required - accepts ["SENT", "RECEIVED"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentFrameworkShareRequestsOutput
    #   resp.data.assessment_framework_share_requests #=> Array<AssessmentFrameworkShareRequest>
    #   resp.data.assessment_framework_share_requests[0] #=> Types::AssessmentFrameworkShareRequest
    #   resp.data.assessment_framework_share_requests[0].id #=> String
    #   resp.data.assessment_framework_share_requests[0].framework_id #=> String
    #   resp.data.assessment_framework_share_requests[0].framework_name #=> String
    #   resp.data.assessment_framework_share_requests[0].framework_description #=> String
    #   resp.data.assessment_framework_share_requests[0].status #=> String, one of ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"]
    #   resp.data.assessment_framework_share_requests[0].source_account #=> String
    #   resp.data.assessment_framework_share_requests[0].destination_account #=> String
    #   resp.data.assessment_framework_share_requests[0].destination_region #=> String
    #   resp.data.assessment_framework_share_requests[0].expiration_time #=> Time
    #   resp.data.assessment_framework_share_requests[0].creation_time #=> Time
    #   resp.data.assessment_framework_share_requests[0].last_updated #=> Time
    #   resp.data.assessment_framework_share_requests[0].comment #=> String
    #   resp.data.assessment_framework_share_requests[0].standard_controls_count #=> Integer
    #   resp.data.assessment_framework_share_requests[0].custom_controls_count #=> Integer
    #   resp.data.assessment_framework_share_requests[0].compliance_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_assessment_framework_share_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentFrameworkShareRequestsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentFrameworkShareRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentFrameworkShareRequests
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAssessmentFrameworkShareRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentFrameworkShareRequests,
        stubs: @stubs,
        params_class: Params::ListAssessmentFrameworkShareRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_framework_share_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of the frameworks that are available in the Audit Manager
    #          framework library. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentFrameworksInput}.
    #
    # @option params [String] :framework_type
    #   <p> The type of framework, such as a standard framework or a custom framework. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListAssessmentFrameworksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_frameworks(
    #     framework_type: 'Standard', # required - accepts ["Standard", "Custom"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentFrameworksOutput
    #   resp.data.framework_metadata_list #=> Array<AssessmentFrameworkMetadata>
    #   resp.data.framework_metadata_list[0] #=> Types::AssessmentFrameworkMetadata
    #   resp.data.framework_metadata_list[0].arn #=> String
    #   resp.data.framework_metadata_list[0].id #=> String
    #   resp.data.framework_metadata_list[0].type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework_metadata_list[0].name #=> String
    #   resp.data.framework_metadata_list[0].description #=> String
    #   resp.data.framework_metadata_list[0].logo #=> String
    #   resp.data.framework_metadata_list[0].compliance_type #=> String
    #   resp.data.framework_metadata_list[0].controls_count #=> Integer
    #   resp.data.framework_metadata_list[0].control_sets_count #=> Integer
    #   resp.data.framework_metadata_list[0].created_at #=> Time
    #   resp.data.framework_metadata_list[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_assessment_frameworks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentFrameworksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentFrameworksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentFrameworks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAssessmentFrameworks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentFrameworks,
        stubs: @stubs,
        params_class: Params::ListAssessmentFrameworksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_frameworks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of assessment reports created in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentReportsInput}.
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListAssessmentReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessment_reports(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentReportsOutput
    #   resp.data.assessment_reports #=> Array<AssessmentReportMetadata>
    #   resp.data.assessment_reports[0] #=> Types::AssessmentReportMetadata
    #   resp.data.assessment_reports[0].id #=> String
    #   resp.data.assessment_reports[0].name #=> String
    #   resp.data.assessment_reports[0].description #=> String
    #   resp.data.assessment_reports[0].assessment_id #=> String
    #   resp.data.assessment_reports[0].assessment_name #=> String
    #   resp.data.assessment_reports[0].author #=> String
    #   resp.data.assessment_reports[0].status #=> String, one of ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #   resp.data.assessment_reports[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_assessment_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessmentReports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAssessmentReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessmentReports,
        stubs: @stubs,
        params_class: Params::ListAssessmentReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessment_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of current and past assessments from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssessmentsInput}.
    #
    # @option params [String] :status
    #   <p> The current status of the assessment.</p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListAssessmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assessments(
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssessmentsOutput
    #   resp.data.assessment_metadata #=> Array<AssessmentMetadataItem>
    #   resp.data.assessment_metadata[0] #=> Types::AssessmentMetadataItem
    #   resp.data.assessment_metadata[0].name #=> String
    #   resp.data.assessment_metadata[0].id #=> String
    #   resp.data.assessment_metadata[0].compliance_type #=> String
    #   resp.data.assessment_metadata[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.assessment_metadata[0].roles #=> Array<Role>
    #   resp.data.assessment_metadata[0].roles[0] #=> Types::Role
    #   resp.data.assessment_metadata[0].roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment_metadata[0].roles[0].role_arn #=> String
    #   resp.data.assessment_metadata[0].delegations #=> Array<Delegation>
    #   resp.data.assessment_metadata[0].delegations[0] #=> Types::Delegation
    #   resp.data.assessment_metadata[0].delegations[0].id #=> String
    #   resp.data.assessment_metadata[0].delegations[0].assessment_name #=> String
    #   resp.data.assessment_metadata[0].delegations[0].assessment_id #=> String
    #   resp.data.assessment_metadata[0].delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.assessment_metadata[0].delegations[0].role_arn #=> String
    #   resp.data.assessment_metadata[0].delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment_metadata[0].delegations[0].creation_time #=> Time
    #   resp.data.assessment_metadata[0].delegations[0].last_updated #=> Time
    #   resp.data.assessment_metadata[0].delegations[0].control_set_id #=> String
    #   resp.data.assessment_metadata[0].delegations[0].comment #=> String
    #   resp.data.assessment_metadata[0].delegations[0].created_by #=> String
    #   resp.data.assessment_metadata[0].creation_time #=> Time
    #   resp.data.assessment_metadata[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_assessments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssessmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssessmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssessments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAssessments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssessments,
        stubs: @stubs,
        params_class: Params::ListAssessmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assessments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the latest analytics data for control domains across all of your active
    #          assessments. </p>
    #          <note>
    #             <p>A control domain is listed only if at least one of the controls within that domain collected
    #          evidence on the <code>lastUpdated</code> date of <code>controlDomainInsights</code>. If
    #          this condition isn’t met, no data is listed for that control domain.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListControlDomainInsightsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListControlDomainInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_domain_insights(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListControlDomainInsightsOutput
    #   resp.data.control_domain_insights #=> Array<ControlDomainInsights>
    #   resp.data.control_domain_insights[0] #=> Types::ControlDomainInsights
    #   resp.data.control_domain_insights[0].name #=> String
    #   resp.data.control_domain_insights[0].id #=> String
    #   resp.data.control_domain_insights[0].controls_count_by_noncompliant_evidence #=> Integer
    #   resp.data.control_domain_insights[0].total_controls_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights #=> Types::EvidenceInsights
    #   resp.data.control_domain_insights[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_control_domain_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListControlDomainInsightsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListControlDomainInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListControlDomainInsights
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListControlDomainInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListControlDomainInsights,
        stubs: @stubs,
        params_class: Params::ListControlDomainInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_control_domain_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists analytics data for control domains within a specified active assessment.</p>
    #          <note>
    #             <p>A control domain is listed only if at least one of the controls within that domain collected
    #          evidence on the <code>lastUpdated</code> date of <code>controlDomainInsights</code>. If
    #          this condition isn’t met, no data is listed for that domain.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListControlDomainInsightsByAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p>The unique identifier for the active assessment. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListControlDomainInsightsByAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_domain_insights_by_assessment(
    #     assessment_id: 'assessmentId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListControlDomainInsightsByAssessmentOutput
    #   resp.data.control_domain_insights #=> Array<ControlDomainInsights>
    #   resp.data.control_domain_insights[0] #=> Types::ControlDomainInsights
    #   resp.data.control_domain_insights[0].name #=> String
    #   resp.data.control_domain_insights[0].id #=> String
    #   resp.data.control_domain_insights[0].controls_count_by_noncompliant_evidence #=> Integer
    #   resp.data.control_domain_insights[0].total_controls_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights #=> Types::EvidenceInsights
    #   resp.data.control_domain_insights[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.data.control_domain_insights[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_control_domain_insights_by_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListControlDomainInsightsByAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListControlDomainInsightsByAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListControlDomainInsightsByAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListControlDomainInsightsByAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListControlDomainInsightsByAssessment,
        stubs: @stubs,
        params_class: Params::ListControlDomainInsightsByAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_control_domain_insights_by_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the latest analytics data for controls within a specific control domain across all
    #          active assessments.</p>
    #          <note>
    #             <p>Control insights are listed only if the control belongs to the control domain that was
    #          specified and the control collected evidence on the <code>lastUpdated</code> date of
    #          <code>controlInsightsMetadata</code>. If neither of these conditions are met, no data
    #          is listed for that control. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListControlInsightsByControlDomainInput}.
    #
    # @option params [String] :control_domain_id
    #   <p>The unique identifier for the control domain. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListControlInsightsByControlDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_insights_by_control_domain(
    #     control_domain_id: 'controlDomainId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListControlInsightsByControlDomainOutput
    #   resp.data.control_insights_metadata #=> Array<ControlInsightsMetadataItem>
    #   resp.data.control_insights_metadata[0] #=> Types::ControlInsightsMetadataItem
    #   resp.data.control_insights_metadata[0].name #=> String
    #   resp.data.control_insights_metadata[0].id #=> String
    #   resp.data.control_insights_metadata[0].evidence_insights #=> Types::EvidenceInsights
    #   resp.data.control_insights_metadata[0].evidence_insights.noncompliant_evidence_count #=> Integer
    #   resp.data.control_insights_metadata[0].evidence_insights.compliant_evidence_count #=> Integer
    #   resp.data.control_insights_metadata[0].evidence_insights.inconclusive_evidence_count #=> Integer
    #   resp.data.control_insights_metadata[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_control_insights_by_control_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListControlInsightsByControlDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListControlInsightsByControlDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListControlInsightsByControlDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListControlInsightsByControlDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListControlInsightsByControlDomain,
        stubs: @stubs,
        params_class: Params::ListControlInsightsByControlDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_control_insights_by_control_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of controls from Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ListControlsInput}.
    #
    # @option params [String] :control_type
    #   <p> The type of control, such as a standard control or a custom control. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_controls(
    #     control_type: 'Standard', # required - accepts ["Standard", "Custom"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListControlsOutput
    #   resp.data.control_metadata_list #=> Array<ControlMetadata>
    #   resp.data.control_metadata_list[0] #=> Types::ControlMetadata
    #   resp.data.control_metadata_list[0].arn #=> String
    #   resp.data.control_metadata_list[0].id #=> String
    #   resp.data.control_metadata_list[0].name #=> String
    #   resp.data.control_metadata_list[0].control_sources #=> String
    #   resp.data.control_metadata_list[0].created_at #=> Time
    #   resp.data.control_metadata_list[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_controls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListControlsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListControlsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListControls
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListControls,
        stubs: @stubs,
        params_class: Params::ListControlsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_controls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of keywords that are pre-mapped to the specified control data source. </p>
    #
    # @param [Hash] params
    #   See {Types::ListKeywordsForDataSourceInput}.
    #
    # @option params [String] :source
    #   <p> The control mapping data source that the keywords apply to. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListKeywordsForDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keywords_for_data_source(
    #     source: 'AWS_Cloudtrail', # required - accepts ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListKeywordsForDataSourceOutput
    #   resp.data.keywords #=> Array<String>
    #   resp.data.keywords[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_keywords_for_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListKeywordsForDataSourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListKeywordsForDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListKeywordsForDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListKeywordsForDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListKeywordsForDataSource,
        stubs: @stubs,
        params_class: Params::ListKeywordsForDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_keywords_for_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of all Audit Manager notifications. </p>
    #
    # @param [Hash] params
    #   See {Types::ListNotificationsInput}.
    #
    # @option params [String] :next_token
    #   <p> The pagination token that's used to fetch the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Represents the maximum number of results on a page or for an API request call. </p>
    #
    # @return [Types::ListNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNotificationsOutput
    #   resp.data.notifications #=> Array<Notification>
    #   resp.data.notifications[0] #=> Types::Notification
    #   resp.data.notifications[0].id #=> String
    #   resp.data.notifications[0].assessment_id #=> String
    #   resp.data.notifications[0].assessment_name #=> String
    #   resp.data.notifications[0].control_set_id #=> String
    #   resp.data.notifications[0].control_set_name #=> String
    #   resp.data.notifications[0].description #=> String
    #   resp.data.notifications[0].event_time #=> Time
    #   resp.data.notifications[0].source #=> String
    #   resp.data.next_token #=> String
    #
    def list_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNotificationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNotifications,
        stubs: @stubs,
        params_class: Params::ListNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of tags for the specified resource in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p> Enables Audit Manager for the specified Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterAccountInput}.
    #
    # @option params [String] :kms_key
    #   <p> The KMS key details. </p>
    #
    # @option params [String] :delegated_admin_account
    #   <p> The delegated administrator account for Audit Manager. </p>
    #
    # @return [Types::RegisterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_account(
    #     kms_key: 'kmsKey',
    #     delegated_admin_account: 'delegatedAdminAccount'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterAccountOutput
    #   resp.data.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING_ACTIVATION"]
    #
    def register_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::RegisterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterAccount,
        stubs: @stubs,
        params_class: Params::RegisterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Enables an Amazon Web Services account within the organization as the delegated
    #          administrator for Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p> The identifier for the delegated administrator account. </p>
    #
    # @return [Types::RegisterOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_organization_admin_account(
    #     admin_account_id: 'adminAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterOrganizationAdminAccountOutput
    #   resp.data.admin_account_id #=> String
    #   resp.data.organization_id #=> String
    #
    def register_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterOrganizationAdminAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterOrganizationAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::RegisterOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::RegisterOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a share request for a custom framework in Audit Manager. </p>
    #          <p>The share request specifies a recipient and notifies them that a custom framework is available. Recipients have 120 days to accept or decline the request. If no action is taken, the share request expires.</p>
    #          <p>When you create a share request, Audit Manager stores a snapshot of your custom
    #          framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager also
    #          stores a backup of the same snapshot in the US West (Oregon) Amazon Web Services Region.</p>
    #          <p>Audit Manager deletes the snapshot and the backup snapshot when one of the following
    #          events occurs:</p>
    #          <ul>
    #             <li>
    #                <p>The sender revokes the share request.</p>
    #             </li>
    #             <li>
    #                <p>The recipient declines the share request.</p>
    #             </li>
    #             <li>
    #                <p>The recipient encounters an error and doesn't successfully accept the share
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>The share request expires before the recipient responds to the request.</p>
    #             </li>
    #          </ul>
    #          <p>When a sender <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend">resends a share request</a>, the snapshot is replaced with an updated version that
    #          corresponds with the latest version of the custom framework. </p>
    #          <p>When a recipient accepts a share request, the snapshot is replicated into their
    #             Amazon Web Services account under the Amazon Web Services Region that was specified in the share request. </p>
    #          <important>
    #             <p>When you invoke the <code>StartAssessmentFrameworkShare</code> API, you are about to
    #             share a custom framework with another Amazon Web Services account. You may not share a
    #             custom framework that is derived from a standard framework if the standard framework is
    #             designated as not eligible for sharing by Amazon Web Services, unless you have obtained
    #             permission to do so from the owner of the standard framework. To learn more about which
    #             standard frameworks are eligible for sharing, see <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility">Framework sharing eligibility</a> in the <i>Audit Manager User
    #                Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::StartAssessmentFrameworkShareInput}.
    #
    # @option params [String] :framework_id
    #   <p> The unique identifier for the custom framework to be shared. </p>
    #
    # @option params [String] :destination_account
    #   <p> The Amazon Web Services account of the recipient. </p>
    #
    # @option params [String] :destination_region
    #   <p> The Amazon Web Services Region of the recipient. </p>
    #
    # @option params [String] :comment
    #   <p> An optional comment from the sender about the share request. </p>
    #
    # @return [Types::StartAssessmentFrameworkShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_assessment_framework_share(
    #     framework_id: 'frameworkId', # required
    #     destination_account: 'destinationAccount', # required
    #     destination_region: 'destinationRegion', # required
    #     comment: 'comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAssessmentFrameworkShareOutput
    #   resp.data.assessment_framework_share_request #=> Types::AssessmentFrameworkShareRequest
    #   resp.data.assessment_framework_share_request.id #=> String
    #   resp.data.assessment_framework_share_request.framework_id #=> String
    #   resp.data.assessment_framework_share_request.framework_name #=> String
    #   resp.data.assessment_framework_share_request.framework_description #=> String
    #   resp.data.assessment_framework_share_request.status #=> String, one of ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"]
    #   resp.data.assessment_framework_share_request.source_account #=> String
    #   resp.data.assessment_framework_share_request.destination_account #=> String
    #   resp.data.assessment_framework_share_request.destination_region #=> String
    #   resp.data.assessment_framework_share_request.expiration_time #=> Time
    #   resp.data.assessment_framework_share_request.creation_time #=> Time
    #   resp.data.assessment_framework_share_request.last_updated #=> Time
    #   resp.data.assessment_framework_share_request.comment #=> String
    #   resp.data.assessment_framework_share_request.standard_controls_count #=> Integer
    #   resp.data.assessment_framework_share_request.custom_controls_count #=> Integer
    #   resp.data.assessment_framework_share_request.compliance_type #=> String
    #
    def start_assessment_framework_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAssessmentFrameworkShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAssessmentFrameworkShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAssessmentFrameworkShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartAssessmentFrameworkShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAssessmentFrameworkShare,
        stubs: @stubs,
        params_class: Params::StartAssessmentFrameworkShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_assessment_framework_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Tags the specified resource in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags that are associated with the resource. </p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p> Removes a tag from a resource in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified resource. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p> The name or key of the tag. </p>
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p> Edits an Audit Manager assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :assessment_name
    #   <p> The name of the assessment to be updated. </p>
    #
    # @option params [String] :assessment_description
    #   <p> The description of the assessment. </p>
    #
    # @option params [Scope] :scope
    #   <p> The scope of the assessment. </p>
    #
    # @option params [AssessmentReportsDestination] :assessment_reports_destination
    #   <p> The assessment report storage destination for the assessment that's being updated.
    #         </p>
    #
    # @option params [Array<Role>] :roles
    #   <p> The list of roles for the assessment. </p>
    #
    # @return [Types::UpdateAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment(
    #     assessment_id: 'assessmentId', # required
    #     assessment_name: 'assessmentName',
    #     assessment_description: 'assessmentDescription',
    #     scope: {
    #       aws_accounts: [
    #         {
    #           id: 'id',
    #           email_address: 'emailAddress',
    #           name: 'name'
    #         }
    #       ],
    #       aws_services: [
    #         {
    #           service_name: 'serviceName'
    #         }
    #       ]
    #     }, # required
    #     assessment_reports_destination: {
    #       destination_type: 'S3', # accepts ["S3"]
    #       destination: 'destination'
    #     },
    #     roles: [
    #       {
    #         role_type: 'PROCESS_OWNER', # required - accepts ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #         role_arn: 'roleArn' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentOutput
    #   resp.data.assessment #=> Types::Assessment
    #   resp.data.assessment.arn #=> String
    #   resp.data.assessment.aws_account #=> Types::AWSAccount
    #   resp.data.assessment.aws_account.id #=> String
    #   resp.data.assessment.aws_account.email_address #=> String
    #   resp.data.assessment.aws_account.name #=> String
    #   resp.data.assessment.metadata #=> Types::AssessmentMetadata
    #   resp.data.assessment.metadata.name #=> String
    #   resp.data.assessment.metadata.id #=> String
    #   resp.data.assessment.metadata.description #=> String
    #   resp.data.assessment.metadata.compliance_type #=> String
    #   resp.data.assessment.metadata.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.assessment.metadata.assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.data.assessment.metadata.scope #=> Types::Scope
    #   resp.data.assessment.metadata.scope.aws_accounts #=> Array<AWSAccount>
    #   resp.data.assessment.metadata.scope.aws_services #=> Array<AWSService>
    #   resp.data.assessment.metadata.scope.aws_services[0] #=> Types::AWSService
    #   resp.data.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.data.assessment.metadata.roles #=> Array<Role>
    #   resp.data.assessment.metadata.roles[0] #=> Types::Role
    #   resp.data.assessment.metadata.roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.roles[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations #=> Array<Delegation>
    #   resp.data.assessment.metadata.delegations[0] #=> Types::Delegation
    #   resp.data.assessment.metadata.delegations[0].id #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.data.assessment.metadata.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.data.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.data.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.data.assessment.metadata.delegations[0].comment #=> String
    #   resp.data.assessment.metadata.delegations[0].created_by #=> String
    #   resp.data.assessment.metadata.creation_time #=> Time
    #   resp.data.assessment.metadata.last_updated #=> Time
    #   resp.data.assessment.framework #=> Types::AssessmentFramework
    #   resp.data.assessment.framework.id #=> String
    #   resp.data.assessment.framework.arn #=> String
    #   resp.data.assessment.framework.metadata #=> Types::FrameworkMetadata
    #   resp.data.assessment.framework.metadata.name #=> String
    #   resp.data.assessment.framework.metadata.description #=> String
    #   resp.data.assessment.framework.metadata.logo #=> String
    #   resp.data.assessment.framework.metadata.compliance_type #=> String
    #   resp.data.assessment.framework.control_sets #=> Array<AssessmentControlSet>
    #   resp.data.assessment.framework.control_sets[0] #=> Types::AssessmentControlSet
    #   resp.data.assessment.framework.control_sets[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].status #=> String, one of ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #   resp.data.assessment.framework.control_sets[0].roles #=> Array<Role>
    #   resp.data.assessment.framework.control_sets[0].controls #=> Array<AssessmentControl>
    #   resp.data.assessment.framework.control_sets[0].controls[0] #=> Types::AssessmentControl
    #   resp.data.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments #=> Array<ControlComment>
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0] #=> Types::ControlComment
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array<String>
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].delegations #=> Array<Delegation>
    #   resp.data.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.tags['key'] #=> String
    #
    def update_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessment,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a control within an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentControlInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    # @option params [String] :control_id
    #   <p> The unique identifier for the control. </p>
    #
    # @option params [String] :control_status
    #   <p> The status of the control. </p>
    #
    # @option params [String] :comment_body
    #   <p> The comment body text for the control. </p>
    #
    # @return [Types::UpdateAssessmentControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_control(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     control_id: 'controlId', # required
    #     control_status: 'UNDER_REVIEW', # accepts ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #     comment_body: 'commentBody'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentControlOutput
    #   resp.data.control #=> Types::AssessmentControl
    #   resp.data.control.id #=> String
    #   resp.data.control.name #=> String
    #   resp.data.control.description #=> String
    #   resp.data.control.status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.control.response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.control.comments #=> Array<ControlComment>
    #   resp.data.control.comments[0] #=> Types::ControlComment
    #   resp.data.control.comments[0].author_name #=> String
    #   resp.data.control.comments[0].comment_body #=> String
    #   resp.data.control.comments[0].posted_date #=> Time
    #   resp.data.control.evidence_sources #=> Array<String>
    #   resp.data.control.evidence_sources[0] #=> String
    #   resp.data.control.evidence_count #=> Integer
    #   resp.data.control.assessment_report_evidence_count #=> Integer
    #
    def update_assessment_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessmentControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentControl,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the status of a control set in an Audit Manager assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentControlSetStatusInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :control_set_id
    #   <p> The unique identifier for the control set. </p>
    #
    # @option params [String] :status
    #   <p> The status of the control set that's being updated. </p>
    #
    # @option params [String] :comment
    #   <p> The comment that's related to the status update. </p>
    #
    # @return [Types::UpdateAssessmentControlSetStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_control_set_status(
    #     assessment_id: 'assessmentId', # required
    #     control_set_id: 'controlSetId', # required
    #     status: 'ACTIVE', # required - accepts ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #     comment: 'comment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentControlSetStatusOutput
    #   resp.data.control_set #=> Types::AssessmentControlSet
    #   resp.data.control_set.id #=> String
    #   resp.data.control_set.description #=> String
    #   resp.data.control_set.status #=> String, one of ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #   resp.data.control_set.roles #=> Array<Role>
    #   resp.data.control_set.roles[0] #=> Types::Role
    #   resp.data.control_set.roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.control_set.roles[0].role_arn #=> String
    #   resp.data.control_set.controls #=> Array<AssessmentControl>
    #   resp.data.control_set.controls[0] #=> Types::AssessmentControl
    #   resp.data.control_set.controls[0].id #=> String
    #   resp.data.control_set.controls[0].name #=> String
    #   resp.data.control_set.controls[0].description #=> String
    #   resp.data.control_set.controls[0].status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.control_set.controls[0].response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.control_set.controls[0].comments #=> Array<ControlComment>
    #   resp.data.control_set.controls[0].comments[0] #=> Types::ControlComment
    #   resp.data.control_set.controls[0].comments[0].author_name #=> String
    #   resp.data.control_set.controls[0].comments[0].comment_body #=> String
    #   resp.data.control_set.controls[0].comments[0].posted_date #=> Time
    #   resp.data.control_set.controls[0].evidence_sources #=> Array<String>
    #   resp.data.control_set.controls[0].evidence_sources[0] #=> String
    #   resp.data.control_set.controls[0].evidence_count #=> Integer
    #   resp.data.control_set.controls[0].assessment_report_evidence_count #=> Integer
    #   resp.data.control_set.delegations #=> Array<Delegation>
    #   resp.data.control_set.delegations[0] #=> Types::Delegation
    #   resp.data.control_set.delegations[0].id #=> String
    #   resp.data.control_set.delegations[0].assessment_name #=> String
    #   resp.data.control_set.delegations[0].assessment_id #=> String
    #   resp.data.control_set.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.control_set.delegations[0].role_arn #=> String
    #   resp.data.control_set.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.control_set.delegations[0].creation_time #=> Time
    #   resp.data.control_set.delegations[0].last_updated #=> Time
    #   resp.data.control_set.delegations[0].control_set_id #=> String
    #   resp.data.control_set.delegations[0].comment #=> String
    #   resp.data.control_set.delegations[0].created_by #=> String
    #   resp.data.control_set.system_evidence_count #=> Integer
    #   resp.data.control_set.manual_evidence_count #=> Integer
    #
    def update_assessment_control_set_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentControlSetStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentControlSetStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentControlSetStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessmentControlSetStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentControlSetStatus,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentControlSetStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_control_set_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a custom framework in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentFrameworkInput}.
    #
    # @option params [String] :framework_id
    #   <p> The unique identifier for the framework. </p>
    #
    # @option params [String] :name
    #   <p> The name of the framework to be updated. </p>
    #
    # @option params [String] :description
    #   <p> The description of the updated framework. </p>
    #
    # @option params [String] :compliance_type
    #   <p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
    #         </p>
    #
    # @option params [Array<UpdateAssessmentFrameworkControlSet>] :control_sets
    #   <p> The control sets that are associated with the framework. </p>
    #
    # @return [Types::UpdateAssessmentFrameworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_framework(
    #     framework_id: 'frameworkId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     compliance_type: 'complianceType',
    #     control_sets: [
    #       {
    #         id: 'id',
    #         name: 'name', # required
    #         controls: [
    #           {
    #             id: 'id' # required
    #           }
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentFrameworkOutput
    #   resp.data.framework #=> Types::Framework
    #   resp.data.framework.arn #=> String
    #   resp.data.framework.id #=> String
    #   resp.data.framework.name #=> String
    #   resp.data.framework.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.compliance_type #=> String
    #   resp.data.framework.description #=> String
    #   resp.data.framework.logo #=> String
    #   resp.data.framework.control_sources #=> String
    #   resp.data.framework.control_sets #=> Array<ControlSet>
    #   resp.data.framework.control_sets[0] #=> Types::ControlSet
    #   resp.data.framework.control_sets[0].id #=> String
    #   resp.data.framework.control_sets[0].name #=> String
    #   resp.data.framework.control_sets[0].controls #=> Array<Control>
    #   resp.data.framework.control_sets[0].controls[0] #=> Types::Control
    #   resp.data.framework.control_sets[0].controls[0].arn #=> String
    #   resp.data.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.framework.control_sets[0].controls[0].type #=> String, one of ["Standard", "Custom"]
    #   resp.data.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.framework.control_sets[0].controls[0].testing_information #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_title #=> String
    #   resp.data.framework.control_sets[0].controls[0].action_plan_instructions #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_sources #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_id #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_name #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_description #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.framework.control_sets[0].controls[0].control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.framework.control_sets[0].controls[0].created_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].last_updated_at #=> Time
    #   resp.data.framework.control_sets[0].controls[0].created_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].last_updated_by #=> String
    #   resp.data.framework.control_sets[0].controls[0].tags #=> Hash<String, String>
    #   resp.data.framework.control_sets[0].controls[0].tags['key'] #=> String
    #   resp.data.framework.created_at #=> Time
    #   resp.data.framework.last_updated_at #=> Time
    #   resp.data.framework.created_by #=> String
    #   resp.data.framework.last_updated_by #=> String
    #   resp.data.framework.tags #=> Hash<String, String>
    #
    def update_assessment_framework(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentFrameworkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentFrameworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentFramework
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessmentFramework
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentFramework,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentFrameworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_framework
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a share request for a custom framework in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentFrameworkShareInput}.
    #
    # @option params [String] :request_id
    #   <p> The unique identifier for the share request. </p>
    #
    # @option params [String] :request_type
    #   <p>Specifies whether the share request is a sent request or a received request.</p>
    #
    # @option params [String] :action
    #   <p>Specifies the update action for the share request.</p>
    #
    # @return [Types::UpdateAssessmentFrameworkShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_framework_share(
    #     request_id: 'requestId', # required
    #     request_type: 'SENT', # required - accepts ["SENT", "RECEIVED"]
    #     action: 'ACCEPT' # required - accepts ["ACCEPT", "DECLINE", "REVOKE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentFrameworkShareOutput
    #   resp.data.assessment_framework_share_request #=> Types::AssessmentFrameworkShareRequest
    #   resp.data.assessment_framework_share_request.id #=> String
    #   resp.data.assessment_framework_share_request.framework_id #=> String
    #   resp.data.assessment_framework_share_request.framework_name #=> String
    #   resp.data.assessment_framework_share_request.framework_description #=> String
    #   resp.data.assessment_framework_share_request.status #=> String, one of ["ACTIVE", "REPLICATING", "SHARED", "EXPIRING", "FAILED", "EXPIRED", "DECLINED", "REVOKED"]
    #   resp.data.assessment_framework_share_request.source_account #=> String
    #   resp.data.assessment_framework_share_request.destination_account #=> String
    #   resp.data.assessment_framework_share_request.destination_region #=> String
    #   resp.data.assessment_framework_share_request.expiration_time #=> Time
    #   resp.data.assessment_framework_share_request.creation_time #=> Time
    #   resp.data.assessment_framework_share_request.last_updated #=> Time
    #   resp.data.assessment_framework_share_request.comment #=> String
    #   resp.data.assessment_framework_share_request.standard_controls_count #=> Integer
    #   resp.data.assessment_framework_share_request.custom_controls_count #=> Integer
    #   resp.data.assessment_framework_share_request.compliance_type #=> String
    #
    def update_assessment_framework_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentFrameworkShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentFrameworkShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentFrameworkShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessmentFrameworkShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentFrameworkShare,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentFrameworkShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_framework_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the status of an assessment in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssessmentStatusInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The unique identifier for the assessment. </p>
    #
    # @option params [String] :status
    #   <p> The current status of the assessment. </p>
    #
    # @return [Types::UpdateAssessmentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assessment_status(
    #     assessment_id: 'assessmentId', # required
    #     status: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssessmentStatusOutput
    #   resp.data.assessment #=> Types::Assessment
    #   resp.data.assessment.arn #=> String
    #   resp.data.assessment.aws_account #=> Types::AWSAccount
    #   resp.data.assessment.aws_account.id #=> String
    #   resp.data.assessment.aws_account.email_address #=> String
    #   resp.data.assessment.aws_account.name #=> String
    #   resp.data.assessment.metadata #=> Types::AssessmentMetadata
    #   resp.data.assessment.metadata.name #=> String
    #   resp.data.assessment.metadata.id #=> String
    #   resp.data.assessment.metadata.description #=> String
    #   resp.data.assessment.metadata.compliance_type #=> String
    #   resp.data.assessment.metadata.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.assessment.metadata.assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.assessment.metadata.assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.assessment.metadata.assessment_reports_destination.destination #=> String
    #   resp.data.assessment.metadata.scope #=> Types::Scope
    #   resp.data.assessment.metadata.scope.aws_accounts #=> Array<AWSAccount>
    #   resp.data.assessment.metadata.scope.aws_services #=> Array<AWSService>
    #   resp.data.assessment.metadata.scope.aws_services[0] #=> Types::AWSService
    #   resp.data.assessment.metadata.scope.aws_services[0].service_name #=> String
    #   resp.data.assessment.metadata.roles #=> Array<Role>
    #   resp.data.assessment.metadata.roles[0] #=> Types::Role
    #   resp.data.assessment.metadata.roles[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.roles[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations #=> Array<Delegation>
    #   resp.data.assessment.metadata.delegations[0] #=> Types::Delegation
    #   resp.data.assessment.metadata.delegations[0].id #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_name #=> String
    #   resp.data.assessment.metadata.delegations[0].assessment_id #=> String
    #   resp.data.assessment.metadata.delegations[0].status #=> String, one of ["IN_PROGRESS", "UNDER_REVIEW", "COMPLETE"]
    #   resp.data.assessment.metadata.delegations[0].role_arn #=> String
    #   resp.data.assessment.metadata.delegations[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.assessment.metadata.delegations[0].creation_time #=> Time
    #   resp.data.assessment.metadata.delegations[0].last_updated #=> Time
    #   resp.data.assessment.metadata.delegations[0].control_set_id #=> String
    #   resp.data.assessment.metadata.delegations[0].comment #=> String
    #   resp.data.assessment.metadata.delegations[0].created_by #=> String
    #   resp.data.assessment.metadata.creation_time #=> Time
    #   resp.data.assessment.metadata.last_updated #=> Time
    #   resp.data.assessment.framework #=> Types::AssessmentFramework
    #   resp.data.assessment.framework.id #=> String
    #   resp.data.assessment.framework.arn #=> String
    #   resp.data.assessment.framework.metadata #=> Types::FrameworkMetadata
    #   resp.data.assessment.framework.metadata.name #=> String
    #   resp.data.assessment.framework.metadata.description #=> String
    #   resp.data.assessment.framework.metadata.logo #=> String
    #   resp.data.assessment.framework.metadata.compliance_type #=> String
    #   resp.data.assessment.framework.control_sets #=> Array<AssessmentControlSet>
    #   resp.data.assessment.framework.control_sets[0] #=> Types::AssessmentControlSet
    #   resp.data.assessment.framework.control_sets[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].status #=> String, one of ["ACTIVE", "UNDER_REVIEW", "REVIEWED"]
    #   resp.data.assessment.framework.control_sets[0].roles #=> Array<Role>
    #   resp.data.assessment.framework.control_sets[0].controls #=> Array<AssessmentControl>
    #   resp.data.assessment.framework.control_sets[0].controls[0] #=> Types::AssessmentControl
    #   resp.data.assessment.framework.control_sets[0].controls[0].id #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].description #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].status #=> String, one of ["UNDER_REVIEW", "REVIEWED", "INACTIVE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].response #=> String, one of ["MANUAL", "AUTOMATE", "DEFER", "IGNORE"]
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments #=> Array<ControlComment>
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0] #=> Types::ControlComment
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].author_name #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].comment_body #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].comments[0].posted_date #=> Time
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources #=> Array<String>
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_sources[0] #=> String
    #   resp.data.assessment.framework.control_sets[0].controls[0].evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].controls[0].assessment_report_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].delegations #=> Array<Delegation>
    #   resp.data.assessment.framework.control_sets[0].system_evidence_count #=> Integer
    #   resp.data.assessment.framework.control_sets[0].manual_evidence_count #=> Integer
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.tags['key'] #=> String
    #
    def update_assessment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssessmentStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssessmentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssessmentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAssessmentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssessmentStatus,
        stubs: @stubs,
        params_class: Params::UpdateAssessmentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assessment_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a custom control in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateControlInput}.
    #
    # @option params [String] :control_id
    #   <p> The identifier for the control. </p>
    #
    # @option params [String] :name
    #   <p> The name of the updated control. </p>
    #
    # @option params [String] :description
    #   <p> The optional description of the control. </p>
    #
    # @option params [String] :testing_information
    #   <p> The steps that you should follow to determine if the control is met. </p>
    #
    # @option params [String] :action_plan_title
    #   <p> The title of the action plan for remediating the control. </p>
    #
    # @option params [String] :action_plan_instructions
    #   <p> The recommended actions to carry out if the control isn't fulfilled. </p>
    #
    # @option params [Array<ControlMappingSource>] :control_mapping_sources
    #   <p> The data mapping sources for the control. </p>
    #
    # @return [Types::UpdateControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_control(
    #     control_id: 'controlId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     testing_information: 'testingInformation',
    #     action_plan_title: 'actionPlanTitle',
    #     action_plan_instructions: 'actionPlanInstructions',
    #     control_mapping_sources: [
    #       {
    #         source_id: 'sourceId',
    #         source_name: 'sourceName',
    #         source_description: 'sourceDescription',
    #         source_set_up_option: 'System_Controls_Mapping', # accepts ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #         source_type: 'AWS_Cloudtrail', # accepts ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #         source_keyword: {
    #           keyword_input_type: 'SELECT_FROM_LIST', # accepts ["SELECT_FROM_LIST"]
    #           keyword_value: 'keywordValue'
    #         },
    #         source_frequency: 'DAILY', # accepts ["DAILY", "WEEKLY", "MONTHLY"]
    #         troubleshooting_text: 'troubleshootingText'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateControlOutput
    #   resp.data.control #=> Types::Control
    #   resp.data.control.arn #=> String
    #   resp.data.control.id #=> String
    #   resp.data.control.type #=> String, one of ["Standard", "Custom"]
    #   resp.data.control.name #=> String
    #   resp.data.control.description #=> String
    #   resp.data.control.testing_information #=> String
    #   resp.data.control.action_plan_title #=> String
    #   resp.data.control.action_plan_instructions #=> String
    #   resp.data.control.control_sources #=> String
    #   resp.data.control.control_mapping_sources #=> Array<ControlMappingSource>
    #   resp.data.control.control_mapping_sources[0] #=> Types::ControlMappingSource
    #   resp.data.control.control_mapping_sources[0].source_id #=> String
    #   resp.data.control.control_mapping_sources[0].source_name #=> String
    #   resp.data.control.control_mapping_sources[0].source_description #=> String
    #   resp.data.control.control_mapping_sources[0].source_set_up_option #=> String, one of ["System_Controls_Mapping", "Procedural_Controls_Mapping"]
    #   resp.data.control.control_mapping_sources[0].source_type #=> String, one of ["AWS_Cloudtrail", "AWS_Config", "AWS_Security_Hub", "AWS_API_Call", "MANUAL"]
    #   resp.data.control.control_mapping_sources[0].source_keyword #=> Types::SourceKeyword
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_input_type #=> String, one of ["SELECT_FROM_LIST"]
    #   resp.data.control.control_mapping_sources[0].source_keyword.keyword_value #=> String
    #   resp.data.control.control_mapping_sources[0].source_frequency #=> String, one of ["DAILY", "WEEKLY", "MONTHLY"]
    #   resp.data.control.control_mapping_sources[0].troubleshooting_text #=> String
    #   resp.data.control.created_at #=> Time
    #   resp.data.control.last_updated_at #=> Time
    #   resp.data.control.created_by #=> String
    #   resp.data.control.last_updated_by #=> String
    #   resp.data.control.tags #=> Hash<String, String>
    #   resp.data.control.tags['key'] #=> String
    #
    def update_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateControlInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateControl,
        stubs: @stubs,
        params_class: Params::UpdateControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates Audit Manager settings for the current user account. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSettingsInput}.
    #
    # @option params [String] :sns_topic
    #   <p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends
    #            notifications to. </p>
    #
    # @option params [AssessmentReportsDestination] :default_assessment_reports_destination
    #   <p> The default storage destination for assessment reports. </p>
    #
    # @option params [Array<Role>] :default_process_owners
    #   <p> A list of the default audit owners. </p>
    #
    # @option params [String] :kms_key
    #   <p> The KMS key details. </p>
    #
    # @return [Types::UpdateSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_settings(
    #     sns_topic: 'snsTopic',
    #     default_assessment_reports_destination: {
    #       destination_type: 'S3', # accepts ["S3"]
    #       destination: 'destination'
    #     },
    #     default_process_owners: [
    #       {
    #         role_type: 'PROCESS_OWNER', # required - accepts ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #         role_arn: 'roleArn' # required
    #       }
    #     ],
    #     kms_key: 'kmsKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSettingsOutput
    #   resp.data.settings #=> Types::Settings
    #   resp.data.settings.is_aws_org_enabled #=> Boolean
    #   resp.data.settings.sns_topic #=> String
    #   resp.data.settings.default_assessment_reports_destination #=> Types::AssessmentReportsDestination
    #   resp.data.settings.default_assessment_reports_destination.destination_type #=> String, one of ["S3"]
    #   resp.data.settings.default_assessment_reports_destination.destination #=> String
    #   resp.data.settings.default_process_owners #=> Array<Role>
    #   resp.data.settings.default_process_owners[0] #=> Types::Role
    #   resp.data.settings.default_process_owners[0].role_type #=> String, one of ["PROCESS_OWNER", "RESOURCE_OWNER"]
    #   resp.data.settings.default_process_owners[0].role_arn #=> String
    #   resp.data.settings.kms_key #=> String
    #
    def update_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSettings,
        stubs: @stubs,
        params_class: Params::UpdateSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Validates the integrity of an assessment report in Audit Manager. </p>
    #
    # @param [Hash] params
    #   See {Types::ValidateAssessmentReportIntegrityInput}.
    #
    # @option params [String] :s3_relative_path
    #   <p> The relative path of the Amazon S3 bucket that the assessment report is stored
    #            in. </p>
    #
    # @return [Types::ValidateAssessmentReportIntegrityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_assessment_report_integrity(
    #     s3_relative_path: 's3RelativePath' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateAssessmentReportIntegrityOutput
    #   resp.data.signature_valid #=> Boolean
    #   resp.data.signature_algorithm #=> String
    #   resp.data.signature_date_time #=> String
    #   resp.data.signature_key_id #=> String
    #   resp.data.validation_errors #=> Array<String>
    #   resp.data.validation_errors[0] #=> String
    #
    def validate_assessment_report_integrity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateAssessmentReportIntegrityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateAssessmentReportIntegrityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateAssessmentReportIntegrity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ValidateAssessmentReportIntegrity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateAssessmentReportIntegrity,
        stubs: @stubs,
        params_class: Params::ValidateAssessmentReportIntegrityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_assessment_report_integrity
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
