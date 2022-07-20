# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ServiceQuotas
  # An API client for ServiceQuotasV20190624
  # See {#initialize} for a full list of supported configuration options
  # <p>With Service Quotas, you can view and manage your quotas easily as your AWS workloads
  #       grow. Quotas, also referred to as limits, are the maximum number of resources that you can
  #       create in your AWS account. For more information, see the <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/">Service Quotas User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::ServiceQuotas::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates your quota request template with your organization. When a new account is
    #       created in your organization, the quota increase requests in the template are automatically
    #       applied to the account. You can add a quota increase request for any adjustable quota to your
    #       template.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateServiceQuotaTemplateInput}.
    #
    # @return [Types::AssociateServiceQuotaTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_quota_template()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateServiceQuotaTemplateOutput
    #
    def associate_service_quota_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateServiceQuotaTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateServiceQuotaTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateServiceQuotaTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::OrganizationNotInAllFeaturesModeException, Errors::AWSServiceAccessNotEnabledException]),
        data_parser: Parsers::AssociateServiceQuotaTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateServiceQuotaTemplate,
        stubs: @stubs,
        params_class: Params::AssociateServiceQuotaTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_service_quota_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the quota increase request for the specified quota from your quota request
    #       template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceQuotaIncreaseRequestFromTemplateInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @option params [String] :aws_region
    #   <p>The AWS Region.</p>
    #
    # @return [Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_quota_increase_request_from_template(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode', # required
    #     aws_region: 'AwsRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceQuotaIncreaseRequestFromTemplateOutput
    #
    def delete_service_quota_increase_request_from_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceQuotaIncreaseRequestFromTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceQuotaIncreaseRequestFromTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceQuotaIncreaseRequestFromTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException, Errors::NoSuchResourceException]),
        data_parser: Parsers::DeleteServiceQuotaIncreaseRequestFromTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceQuotaIncreaseRequestFromTemplate,
        stubs: @stubs,
        params_class: Params::DeleteServiceQuotaIncreaseRequestFromTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_quota_increase_request_from_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables your quota request template. After a template is disabled, the quota increase
    #       requests in the template are not applied to new accounts in your organization. Disabling a
    #       quota request template does not apply its quota increase requests.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateServiceQuotaTemplateInput}.
    #
    # @return [Types::DisassociateServiceQuotaTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_service_quota_template()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateServiceQuotaTemplateOutput
    #
    def disassociate_service_quota_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateServiceQuotaTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateServiceQuotaTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateServiceQuotaTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException, Errors::ServiceQuotaTemplateNotInUseException]),
        data_parser: Parsers::DisassociateServiceQuotaTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateServiceQuotaTemplate,
        stubs: @stubs,
        params_class: Params::DisassociateServiceQuotaTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_service_quota_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the default value for the specified quota. The default value does not reflect
    #       any quota increases.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAWSDefaultServiceQuotaInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @return [Types::GetAWSDefaultServiceQuotaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aws_default_service_quota(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAWSDefaultServiceQuotaOutput
    #   resp.data.quota #=> Types::ServiceQuota
    #   resp.data.quota.service_code #=> String
    #   resp.data.quota.service_name #=> String
    #   resp.data.quota.quota_arn #=> String
    #   resp.data.quota.quota_code #=> String
    #   resp.data.quota.quota_name #=> String
    #   resp.data.quota.value #=> Float
    #   resp.data.quota.unit #=> String
    #   resp.data.quota.adjustable #=> Boolean
    #   resp.data.quota.global_quota #=> Boolean
    #   resp.data.quota.usage_metric #=> Types::MetricInfo
    #   resp.data.quota.usage_metric.metric_namespace #=> String
    #   resp.data.quota.usage_metric.metric_name #=> String
    #   resp.data.quota.usage_metric.metric_dimensions #=> Hash<String, String>
    #   resp.data.quota.usage_metric.metric_dimensions['key'] #=> String
    #   resp.data.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.data.quota.period #=> Types::QuotaPeriod
    #   resp.data.quota.period.period_value #=> Integer
    #   resp.data.quota.period.period_unit #=> String, one of ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #   resp.data.quota.error_reason #=> Types::ErrorReason
    #   resp.data.quota.error_reason.error_code #=> String, one of ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"]
    #   resp.data.quota.error_reason.error_message #=> String
    #
    def get_aws_default_service_quota(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAWSDefaultServiceQuotaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAWSDefaultServiceQuotaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAWSDefaultServiceQuota
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::NoSuchResourceException]),
        data_parser: Parsers::GetAWSDefaultServiceQuota
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAWSDefaultServiceQuota,
        stubs: @stubs,
        params_class: Params::GetAWSDefaultServiceQuotaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aws_default_service_quota
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the status of the association for the quota request template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAssociationForServiceQuotaTemplateInput}.
    #
    # @return [Types::GetAssociationForServiceQuotaTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_association_for_service_quota_template()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssociationForServiceQuotaTemplateOutput
    #   resp.data.service_quota_template_association_status #=> String, one of ["ASSOCIATED", "DISASSOCIATED"]
    #
    def get_association_for_service_quota_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssociationForServiceQuotaTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssociationForServiceQuotaTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssociationForServiceQuotaTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException, Errors::ServiceQuotaTemplateNotInUseException]),
        data_parser: Parsers::GetAssociationForServiceQuotaTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssociationForServiceQuotaTemplate,
        stubs: @stubs,
        params_class: Params::GetAssociationForServiceQuotaTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_association_for_service_quota_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified quota increase request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRequestedServiceQuotaChangeInput}.
    #
    # @option params [String] :request_id
    #   <p>The ID of the quota increase request.</p>
    #
    # @return [Types::GetRequestedServiceQuotaChangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_requested_service_quota_change(
    #     request_id: 'RequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRequestedServiceQuotaChangeOutput
    #   resp.data.requested_quota #=> Types::RequestedServiceQuotaChange
    #   resp.data.requested_quota.id #=> String
    #   resp.data.requested_quota.case_id #=> String
    #   resp.data.requested_quota.service_code #=> String
    #   resp.data.requested_quota.service_name #=> String
    #   resp.data.requested_quota.quota_code #=> String
    #   resp.data.requested_quota.quota_name #=> String
    #   resp.data.requested_quota.desired_value #=> Float
    #   resp.data.requested_quota.status #=> String, one of ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #   resp.data.requested_quota.created #=> Time
    #   resp.data.requested_quota.last_updated #=> Time
    #   resp.data.requested_quota.requester #=> String
    #   resp.data.requested_quota.quota_arn #=> String
    #   resp.data.requested_quota.global_quota #=> Boolean
    #   resp.data.requested_quota.unit #=> String
    #
    def get_requested_service_quota_change(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRequestedServiceQuotaChangeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRequestedServiceQuotaChangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRequestedServiceQuotaChange
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::NoSuchResourceException]),
        data_parser: Parsers::GetRequestedServiceQuotaChange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRequestedServiceQuotaChange,
        stubs: @stubs,
        params_class: Params::GetRequestedServiceQuotaChangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_requested_service_quota_change
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the applied quota value for the specified quota. For some quotas, only the
    #       default values are available. If the applied quota value is not available for a quota, the
    #       quota is not retrieved.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceQuotaInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @return [Types::GetServiceQuotaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceQuotaOutput
    #   resp.data.quota #=> Types::ServiceQuota
    #   resp.data.quota.service_code #=> String
    #   resp.data.quota.service_name #=> String
    #   resp.data.quota.quota_arn #=> String
    #   resp.data.quota.quota_code #=> String
    #   resp.data.quota.quota_name #=> String
    #   resp.data.quota.value #=> Float
    #   resp.data.quota.unit #=> String
    #   resp.data.quota.adjustable #=> Boolean
    #   resp.data.quota.global_quota #=> Boolean
    #   resp.data.quota.usage_metric #=> Types::MetricInfo
    #   resp.data.quota.usage_metric.metric_namespace #=> String
    #   resp.data.quota.usage_metric.metric_name #=> String
    #   resp.data.quota.usage_metric.metric_dimensions #=> Hash<String, String>
    #   resp.data.quota.usage_metric.metric_dimensions['key'] #=> String
    #   resp.data.quota.usage_metric.metric_statistic_recommendation #=> String
    #   resp.data.quota.period #=> Types::QuotaPeriod
    #   resp.data.quota.period.period_value #=> Integer
    #   resp.data.quota.period.period_unit #=> String, one of ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #   resp.data.quota.error_reason #=> Types::ErrorReason
    #   resp.data.quota.error_reason.error_code #=> String, one of ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"]
    #   resp.data.quota.error_reason.error_message #=> String
    #
    def get_service_quota(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceQuotaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceQuotaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceQuota
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::NoSuchResourceException]),
        data_parser: Parsers::GetServiceQuota
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceQuota,
        stubs: @stubs,
        params_class: Params::GetServiceQuotaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_quota
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified quota increase request in your quota request
    #       template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceQuotaIncreaseRequestFromTemplateInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @option params [String] :aws_region
    #   <p>The AWS Region.</p>
    #
    # @return [Types::GetServiceQuotaIncreaseRequestFromTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_quota_increase_request_from_template(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode', # required
    #     aws_region: 'AwsRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceQuotaIncreaseRequestFromTemplateOutput
    #   resp.data.service_quota_increase_request_in_template #=> Types::ServiceQuotaIncreaseRequestInTemplate
    #   resp.data.service_quota_increase_request_in_template.service_code #=> String
    #   resp.data.service_quota_increase_request_in_template.service_name #=> String
    #   resp.data.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.data.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.data.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.data.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.data.service_quota_increase_request_in_template.unit #=> String
    #   resp.data.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    def get_service_quota_increase_request_from_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceQuotaIncreaseRequestFromTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceQuotaIncreaseRequestFromTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceQuotaIncreaseRequestFromTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException, Errors::NoSuchResourceException]),
        data_parser: Parsers::GetServiceQuotaIncreaseRequestFromTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceQuotaIncreaseRequestFromTemplate,
        stubs: @stubs,
        params_class: Params::GetServiceQuotaIncreaseRequestFromTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_quota_increase_request_from_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the default values for the quotas for the specified AWS service. A default value
    #       does not reflect any quota increases.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAWSDefaultServiceQuotasInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListAWSDefaultServiceQuotasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aws_default_service_quotas(
    #     service_code: 'ServiceCode', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAWSDefaultServiceQuotasOutput
    #   resp.data.next_token #=> String
    #   resp.data.quotas #=> Array<ServiceQuota>
    #   resp.data.quotas[0] #=> Types::ServiceQuota
    #   resp.data.quotas[0].service_code #=> String
    #   resp.data.quotas[0].service_name #=> String
    #   resp.data.quotas[0].quota_arn #=> String
    #   resp.data.quotas[0].quota_code #=> String
    #   resp.data.quotas[0].quota_name #=> String
    #   resp.data.quotas[0].value #=> Float
    #   resp.data.quotas[0].unit #=> String
    #   resp.data.quotas[0].adjustable #=> Boolean
    #   resp.data.quotas[0].global_quota #=> Boolean
    #   resp.data.quotas[0].usage_metric #=> Types::MetricInfo
    #   resp.data.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.data.quotas[0].usage_metric.metric_name #=> String
    #   resp.data.quotas[0].usage_metric.metric_dimensions #=> Hash<String, String>
    #   resp.data.quotas[0].usage_metric.metric_dimensions['key'] #=> String
    #   resp.data.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.data.quotas[0].period #=> Types::QuotaPeriod
    #   resp.data.quotas[0].period.period_value #=> Integer
    #   resp.data.quotas[0].period.period_unit #=> String, one of ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #   resp.data.quotas[0].error_reason #=> Types::ErrorReason
    #   resp.data.quotas[0].error_reason.error_code #=> String, one of ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"]
    #   resp.data.quotas[0].error_reason.error_message #=> String
    #
    def list_aws_default_service_quotas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAWSDefaultServiceQuotasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAWSDefaultServiceQuotasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAWSDefaultServiceQuotas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidPaginationTokenException, Errors::NoSuchResourceException]),
        data_parser: Parsers::ListAWSDefaultServiceQuotas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAWSDefaultServiceQuotas,
        stubs: @stubs,
        params_class: Params::ListAWSDefaultServiceQuotasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aws_default_service_quotas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the quota increase requests for the specified service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRequestedServiceQuotaChangeHistoryInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :status
    #   <p>The status of the quota increase request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history(
    #     service_code: 'ServiceCode',
    #     status: 'PENDING', # accepts ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRequestedServiceQuotaChangeHistoryOutput
    #   resp.data.next_token #=> String
    #   resp.data.requested_quotas #=> Array<RequestedServiceQuotaChange>
    #   resp.data.requested_quotas[0] #=> Types::RequestedServiceQuotaChange
    #   resp.data.requested_quotas[0].id #=> String
    #   resp.data.requested_quotas[0].case_id #=> String
    #   resp.data.requested_quotas[0].service_code #=> String
    #   resp.data.requested_quotas[0].service_name #=> String
    #   resp.data.requested_quotas[0].quota_code #=> String
    #   resp.data.requested_quotas[0].quota_name #=> String
    #   resp.data.requested_quotas[0].desired_value #=> Float
    #   resp.data.requested_quotas[0].status #=> String, one of ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #   resp.data.requested_quotas[0].created #=> Time
    #   resp.data.requested_quotas[0].last_updated #=> Time
    #   resp.data.requested_quotas[0].requester #=> String
    #   resp.data.requested_quotas[0].quota_arn #=> String
    #   resp.data.requested_quotas[0].global_quota #=> Boolean
    #   resp.data.requested_quotas[0].unit #=> String
    #
    def list_requested_service_quota_change_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRequestedServiceQuotaChangeHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRequestedServiceQuotaChangeHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRequestedServiceQuotaChangeHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidPaginationTokenException, Errors::NoSuchResourceException]),
        data_parser: Parsers::ListRequestedServiceQuotaChangeHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRequestedServiceQuotaChangeHistory,
        stubs: @stubs,
        params_class: Params::ListRequestedServiceQuotaChangeHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_requested_service_quota_change_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the quota increase requests for the specified quota.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRequestedServiceQuotaChangeHistoryByQuotaInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @option params [String] :status
    #   <p>The status value of the quota increase request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_requested_service_quota_change_history_by_quota(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode', # required
    #     status: 'PENDING', # accepts ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRequestedServiceQuotaChangeHistoryByQuotaOutput
    #   resp.data.next_token #=> String
    #   resp.data.requested_quotas #=> Array<RequestedServiceQuotaChange>
    #   resp.data.requested_quotas[0] #=> Types::RequestedServiceQuotaChange
    #   resp.data.requested_quotas[0].id #=> String
    #   resp.data.requested_quotas[0].case_id #=> String
    #   resp.data.requested_quotas[0].service_code #=> String
    #   resp.data.requested_quotas[0].service_name #=> String
    #   resp.data.requested_quotas[0].quota_code #=> String
    #   resp.data.requested_quotas[0].quota_name #=> String
    #   resp.data.requested_quotas[0].desired_value #=> Float
    #   resp.data.requested_quotas[0].status #=> String, one of ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #   resp.data.requested_quotas[0].created #=> Time
    #   resp.data.requested_quotas[0].last_updated #=> Time
    #   resp.data.requested_quotas[0].requester #=> String
    #   resp.data.requested_quotas[0].quota_arn #=> String
    #   resp.data.requested_quotas[0].global_quota #=> Boolean
    #   resp.data.requested_quotas[0].unit #=> String
    #
    def list_requested_service_quota_change_history_by_quota(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRequestedServiceQuotaChangeHistoryByQuotaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRequestedServiceQuotaChangeHistoryByQuotaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRequestedServiceQuotaChangeHistoryByQuota
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidPaginationTokenException, Errors::NoSuchResourceException]),
        data_parser: Parsers::ListRequestedServiceQuotaChangeHistoryByQuota
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRequestedServiceQuotaChangeHistoryByQuota,
        stubs: @stubs,
        params_class: Params::ListRequestedServiceQuotaChangeHistoryByQuotaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_requested_service_quota_change_history_by_quota
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the quota increase requests in the specified quota request template.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceQuotaIncreaseRequestsInTemplateInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :aws_region
    #   <p>The AWS Region.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListServiceQuotaIncreaseRequestsInTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quota_increase_requests_in_template(
    #     service_code: 'ServiceCode',
    #     aws_region: 'AwsRegion',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceQuotaIncreaseRequestsInTemplateOutput
    #   resp.data.service_quota_increase_request_in_template_list #=> Array<ServiceQuotaIncreaseRequestInTemplate>
    #   resp.data.service_quota_increase_request_in_template_list[0] #=> Types::ServiceQuotaIncreaseRequestInTemplate
    #   resp.data.service_quota_increase_request_in_template_list[0].service_code #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].service_name #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].quota_code #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].quota_name #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].desired_value #=> Float
    #   resp.data.service_quota_increase_request_in_template_list[0].aws_region #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].unit #=> String
    #   resp.data.service_quota_increase_request_in_template_list[0].global_quota #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_service_quota_increase_requests_in_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceQuotaIncreaseRequestsInTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceQuotaIncreaseRequestsInTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceQuotaIncreaseRequestsInTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException]),
        data_parser: Parsers::ListServiceQuotaIncreaseRequestsInTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceQuotaIncreaseRequestsInTemplate,
        stubs: @stubs,
        params_class: Params::ListServiceQuotaIncreaseRequestsInTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_quota_increase_requests_in_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the applied quota values for the specified AWS service. For some quotas, only the
    #       default values are available. If the applied quota value is not available for a quota, the
    #       quota is not retrieved.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceQuotasInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListServiceQuotasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_quotas(
    #     service_code: 'ServiceCode', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceQuotasOutput
    #   resp.data.next_token #=> String
    #   resp.data.quotas #=> Array<ServiceQuota>
    #   resp.data.quotas[0] #=> Types::ServiceQuota
    #   resp.data.quotas[0].service_code #=> String
    #   resp.data.quotas[0].service_name #=> String
    #   resp.data.quotas[0].quota_arn #=> String
    #   resp.data.quotas[0].quota_code #=> String
    #   resp.data.quotas[0].quota_name #=> String
    #   resp.data.quotas[0].value #=> Float
    #   resp.data.quotas[0].unit #=> String
    #   resp.data.quotas[0].adjustable #=> Boolean
    #   resp.data.quotas[0].global_quota #=> Boolean
    #   resp.data.quotas[0].usage_metric #=> Types::MetricInfo
    #   resp.data.quotas[0].usage_metric.metric_namespace #=> String
    #   resp.data.quotas[0].usage_metric.metric_name #=> String
    #   resp.data.quotas[0].usage_metric.metric_dimensions #=> Hash<String, String>
    #   resp.data.quotas[0].usage_metric.metric_dimensions['key'] #=> String
    #   resp.data.quotas[0].usage_metric.metric_statistic_recommendation #=> String
    #   resp.data.quotas[0].period #=> Types::QuotaPeriod
    #   resp.data.quotas[0].period.period_value #=> Integer
    #   resp.data.quotas[0].period.period_unit #=> String, one of ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #   resp.data.quotas[0].error_reason #=> Types::ErrorReason
    #   resp.data.quotas[0].error_reason.error_code #=> String, one of ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"]
    #   resp.data.quotas[0].error_reason.error_message #=> String
    #
    def list_service_quotas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceQuotasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceQuotasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceQuotas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidPaginationTokenException, Errors::NoSuchResourceException]),
        data_parser: Parsers::ListServiceQuotas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceQuotas,
        stubs: @stubs,
        params_class: Params::ListServiceQuotasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_quotas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the names and codes for the services integrated with Service Quotas.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.next_token #=> String
    #   resp.data.services #=> Array<ServiceInfo>
    #   resp.data.services[0] #=> Types::ServiceInfo
    #   resp.data.services[0].service_code #=> String
    #   resp.data.services[0].service_name #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidPaginationTokenException]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags assigned to the specified applied quota.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags. You
    #         can get this information by using the Service Quotas console, or by listing the quotas using the
    #           <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::NoSuchResourceException]),
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

    # <p>Adds a quota increase request to your quota request template.</p>
    #
    # @param [Hash] params
    #   See {Types::PutServiceQuotaIncreaseRequestIntoTemplateInput}.
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :aws_region
    #   <p>The AWS Region.</p>
    #
    # @option params [Float] :desired_value
    #   <p>The new, increased value for the quota.</p>
    #
    # @return [Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_service_quota_increase_request_into_template(
    #     quota_code: 'QuotaCode', # required
    #     service_code: 'ServiceCode', # required
    #     aws_region: 'AwsRegion', # required
    #     desired_value: 1.0 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutServiceQuotaIncreaseRequestIntoTemplateOutput
    #   resp.data.service_quota_increase_request_in_template #=> Types::ServiceQuotaIncreaseRequestInTemplate
    #   resp.data.service_quota_increase_request_in_template.service_code #=> String
    #   resp.data.service_quota_increase_request_in_template.service_name #=> String
    #   resp.data.service_quota_increase_request_in_template.quota_code #=> String
    #   resp.data.service_quota_increase_request_in_template.quota_name #=> String
    #   resp.data.service_quota_increase_request_in_template.desired_value #=> Float
    #   resp.data.service_quota_increase_request_in_template.aws_region #=> String
    #   resp.data.service_quota_increase_request_in_template.unit #=> String
    #   resp.data.service_quota_increase_request_in_template.global_quota #=> Boolean
    #
    def put_service_quota_increase_request_into_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutServiceQuotaIncreaseRequestIntoTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutServiceQuotaIncreaseRequestIntoTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutServiceQuotaIncreaseRequestIntoTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::TemplatesNotAvailableInRegionException, Errors::NoAvailableOrganizationException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::QuotaExceededException, Errors::DependencyAccessDeniedException, Errors::AWSServiceAccessNotEnabledException, Errors::NoSuchResourceException]),
        data_parser: Parsers::PutServiceQuotaIncreaseRequestIntoTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutServiceQuotaIncreaseRequestIntoTemplate,
        stubs: @stubs,
        params_class: Params::PutServiceQuotaIncreaseRequestIntoTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_service_quota_increase_request_into_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits a quota increase request for the specified quota.</p>
    #
    # @param [Hash] params
    #   See {Types::RequestServiceQuotaIncreaseInput}.
    #
    # @option params [String] :service_code
    #   <p>The service identifier.</p>
    #
    # @option params [String] :quota_code
    #   <p>The quota identifier.</p>
    #
    # @option params [Float] :desired_value
    #   <p>The new, increased value for the quota.</p>
    #
    # @return [Types::RequestServiceQuotaIncreaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_service_quota_increase(
    #     service_code: 'ServiceCode', # required
    #     quota_code: 'QuotaCode', # required
    #     desired_value: 1.0 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestServiceQuotaIncreaseOutput
    #   resp.data.requested_quota #=> Types::RequestedServiceQuotaChange
    #   resp.data.requested_quota.id #=> String
    #   resp.data.requested_quota.case_id #=> String
    #   resp.data.requested_quota.service_code #=> String
    #   resp.data.requested_quota.service_name #=> String
    #   resp.data.requested_quota.quota_code #=> String
    #   resp.data.requested_quota.quota_name #=> String
    #   resp.data.requested_quota.desired_value #=> Float
    #   resp.data.requested_quota.status #=> String, one of ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #   resp.data.requested_quota.created #=> Time
    #   resp.data.requested_quota.last_updated #=> Time
    #   resp.data.requested_quota.requester #=> String
    #   resp.data.requested_quota.quota_arn #=> String
    #   resp.data.requested_quota.global_quota #=> Boolean
    #   resp.data.requested_quota.unit #=> String
    #
    def request_service_quota_increase(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestServiceQuotaIncreaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestServiceQuotaIncreaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestServiceQuotaIncrease
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceAlreadyExistsException, Errors::InvalidResourceStateException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::QuotaExceededException, Errors::DependencyAccessDeniedException, Errors::NoSuchResourceException]),
        data_parser: Parsers::RequestServiceQuotaIncrease
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestServiceQuotaIncrease,
        stubs: @stubs,
        params_class: Params::RequestServiceQuotaIncreaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_service_quota_increase
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to the specified applied quota. You can include one or more tags to add to the
    #       quota.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by
    #         using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags that you want to add to the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::TooManyTagsException, Errors::TagPolicyViolationException, Errors::NoSuchResourceException]),
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

    # <p>Removes tags from the specified applied quota. You can specify one or more tags to
    #       remove.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can get
    #         this information by using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IllegalArgumentException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::NoSuchResourceException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
