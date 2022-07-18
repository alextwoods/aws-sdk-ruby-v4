# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ServiceCatalog
  # An API client for AWS242ServiceCatalogService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Service Catalog</fullname>
  #          <p>
  #             <a href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a> enables
  #          organizations to create and manage catalogs of IT services that are approved for AWS. To
  #          get the most out of this documentation, you should be familiar with the terminology
  #          discussed in <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html">AWS Service Catalog
  #          Concepts</a>.</p>
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
    def initialize(config = AWS::SDK::ServiceCatalog::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts an offer to share the specified portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptPortfolioShareInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Accept imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #
    # @return [Types::AcceptPortfolioShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_portfolio_share(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     portfolio_share_type: 'IMPORTED' # accepts ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptPortfolioShareOutput
    #
    def accept_portfolio_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptPortfolioShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptPortfolioShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptPortfolioShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AcceptPortfolioShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptPortfolioShare,
        stubs: @stubs,
        params_class: Params::AcceptPortfolioShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_portfolio_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified budget with the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateBudgetWithResourceInput}.
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget you want to associate.</p>
    #
    # @option params [String] :resource_id
    #   <p> The resource identifier. Either a portfolio-id or a product-id.</p>
    #
    # @return [Types::AssociateBudgetWithResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_budget_with_resource(
    #     budget_name: 'BudgetName', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateBudgetWithResourceOutput
    #
    def associate_budget_with_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateBudgetWithResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateBudgetWithResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateBudgetWithResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociateBudgetWithResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateBudgetWithResource,
        stubs: @stubs,
        params_class: Params::AssociateBudgetWithResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_budget_with_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified principal ARN with the specified portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePrincipalWithPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal (IAM user, role, or group).</p>
    #
    # @option params [String] :principal_type
    #   <p>The principal type. The supported value is <code>IAM</code>.</p>
    #
    # @return [Types::AssociatePrincipalWithPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_principal_with_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     principal_arn: 'PrincipalARN', # required
    #     principal_type: 'IAM' # required - accepts ["IAM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePrincipalWithPortfolioOutput
    #
    def associate_principal_with_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePrincipalWithPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePrincipalWithPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePrincipalWithPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociatePrincipalWithPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePrincipalWithPortfolio,
        stubs: @stubs,
        params_class: Params::AssociatePrincipalWithPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_principal_with_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified product with the specified portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateProductWithPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :source_portfolio_id
    #   <p>The identifier of the source portfolio.</p>
    #
    # @return [Types::AssociateProductWithPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_product_with_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     portfolio_id: 'PortfolioId', # required
    #     source_portfolio_id: 'SourcePortfolioId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateProductWithPortfolioOutput
    #
    def associate_product_with_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateProductWithPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateProductWithPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateProductWithPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociateProductWithPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateProductWithPortfolio,
        stubs: @stubs,
        params_class: Params::AssociateProductWithPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_product_with_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a self-service action with a provisioning artifact.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateServiceActionWithProvisioningArtifactInput}.
    #
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AssociateServiceActionWithProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_action_with_provisioning_artifact(
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     service_action_id: 'ServiceActionId', # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateServiceActionWithProvisioningArtifactOutput
    #
    def associate_service_action_with_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateServiceActionWithProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateServiceActionWithProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateServiceActionWithProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociateServiceActionWithProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateServiceActionWithProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::AssociateServiceActionWithProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_service_action_with_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate the specified TagOption with the specified portfolio or product.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTagOptionWithResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    #
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    # @return [Types::AssociateTagOptionWithResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tag_option_with_resource(
    #     resource_id: 'ResourceId', # required
    #     tag_option_id: 'TagOptionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTagOptionWithResourceOutput
    #
    def associate_tag_option_with_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTagOptionWithResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTagOptionWithResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTagOptionWithResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::InvalidStateException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::AssociateTagOptionWithResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTagOptionWithResource,
        stubs: @stubs,
        params_class: Params::AssociateTagOptionWithResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_tag_option_with_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates multiple self-service actions with provisioning artifacts.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateServiceActionWithProvisioningArtifactInput}.
    #
    # @option params [Array<ServiceActionAssociation>] :service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchAssociateServiceActionWithProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_service_action_with_provisioning_artifact(
    #     service_action_associations: [
    #       {
    #         service_action_id: 'ServiceActionId', # required
    #         product_id: 'ProductId', # required
    #         provisioning_artifact_id: 'ProvisioningArtifactId' # required
    #       }
    #     ], # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateServiceActionWithProvisioningArtifactOutput
    #   resp.data.failed_service_action_associations #=> Array<FailedServiceActionAssociation>
    #   resp.data.failed_service_action_associations[0] #=> Types::FailedServiceActionAssociation
    #   resp.data.failed_service_action_associations[0].service_action_id #=> String
    #   resp.data.failed_service_action_associations[0].product_id #=> String
    #   resp.data.failed_service_action_associations[0].provisioning_artifact_id #=> String
    #   resp.data.failed_service_action_associations[0].error_code #=> String, one of ["DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING"]
    #   resp.data.failed_service_action_associations[0].error_message #=> String
    #
    def batch_associate_service_action_with_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateServiceActionWithProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateServiceActionWithProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateServiceActionWithProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::BatchAssociateServiceActionWithProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateServiceActionWithProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::BatchAssociateServiceActionWithProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_service_action_with_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a batch of self-service actions from the specified provisioning artifact.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateServiceActionFromProvisioningArtifactInput}.
    #
    # @option params [Array<ServiceActionAssociation>] :service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_service_action_from_provisioning_artifact(
    #     service_action_associations: [
    #       {
    #         service_action_id: 'ServiceActionId', # required
    #         product_id: 'ProductId', # required
    #         provisioning_artifact_id: 'ProvisioningArtifactId' # required
    #       }
    #     ], # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput
    #   resp.data.failed_service_action_associations #=> Array<FailedServiceActionAssociation>
    #   resp.data.failed_service_action_associations[0] #=> Types::FailedServiceActionAssociation
    #   resp.data.failed_service_action_associations[0].service_action_id #=> String
    #   resp.data.failed_service_action_associations[0].product_id #=> String
    #   resp.data.failed_service_action_associations[0].provisioning_artifact_id #=> String
    #   resp.data.failed_service_action_associations[0].error_code #=> String, one of ["DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING"]
    #   resp.data.failed_service_action_associations[0].error_message #=> String
    #
    def batch_disassociate_service_action_from_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateServiceActionFromProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateServiceActionFromProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateServiceActionFromProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::BatchDisassociateServiceActionFromProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateServiceActionFromProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::BatchDisassociateServiceActionFromProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_service_action_from_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the specified source product to the specified target product or a new product.</p>
    #          <p>You can copy a product to the same account or another account.
    #          You can copy a product to the same region or another region.</p>
    #          <p>This operation is performed asynchronously. To track the progress of the
    #          operation, use <a>DescribeCopyProductStatus</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :source_product_arn
    #   <p>The Amazon Resource Name (ARN) of the source product.</p>
    #
    # @option params [String] :target_product_id
    #   <p>The identifier of the target product. By default, a new product is created.</p>
    #
    # @option params [String] :target_product_name
    #   <p>A name for the target product. The default is the name of the source product.</p>
    #
    # @option params [Array<Hash<String, String>>] :source_provisioning_artifact_identifiers
    #   <p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy.
    #            By default, all provisioning artifacts are copied.</p>
    #
    # @option params [Array<String>] :copy_options
    #   <p>The copy options. If the value is <code>CopyTags</code>, the tags from the source
    #            product are copied to the target product.</p>
    #
    # @option params [String] :idempotency_token
    #   <p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request. </p>
    #
    # @return [Types::CopyProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_product(
    #     accept_language: 'AcceptLanguage',
    #     source_product_arn: 'SourceProductArn', # required
    #     target_product_id: 'TargetProductId',
    #     target_product_name: 'TargetProductName',
    #     source_provisioning_artifact_identifiers: [
    #       {
    #         'key' => 'value'
    #       }
    #     ],
    #     copy_options: [
    #       'CopyTags' # accepts ["CopyTags"]
    #     ],
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyProductOutput
    #   resp.data.copy_product_token #=> String
    #
    def copy_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CopyProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyProduct,
        stubs: @stubs,
        params_class: Params::CopyProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a constraint.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConstraintInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be
    #                  account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STACKSET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>The description of the constraint.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::CreateConstraintOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_constraint(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     product_id: 'ProductId', # required
    #     parameters: 'Parameters', # required
    #     type: 'Type', # required
    #     description: 'Description',
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConstraintOutput
    #   resp.data.constraint_detail #=> Types::ConstraintDetail
    #   resp.data.constraint_detail.constraint_id #=> String
    #   resp.data.constraint_detail.type #=> String
    #   resp.data.constraint_detail.description #=> String
    #   resp.data.constraint_detail.owner #=> String
    #   resp.data.constraint_detail.product_id #=> String
    #   resp.data.constraint_detail.portfolio_id #=> String
    #   resp.data.constraint_parameters #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def create_constraint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConstraintInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConstraintInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConstraint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateConstraint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConstraint,
        stubs: @stubs,
        params_class: Params::CreateConstraintOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_constraint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :display_name
    #   <p>The name to use for display purposes.</p>
    #
    # @option params [String] :description
    #   <p>The description of the portfolio.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the portfolio provider.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::CreatePortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     display_name: 'DisplayName', # required
    #     description: 'Description',
    #     provider_name: 'ProviderName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePortfolioOutput
    #   resp.data.portfolio_detail #=> Types::PortfolioDetail
    #   resp.data.portfolio_detail.id #=> String
    #   resp.data.portfolio_detail.arn #=> String
    #   resp.data.portfolio_detail.display_name #=> String
    #   resp.data.portfolio_detail.description #=> String
    #   resp.data.portfolio_detail.created_time #=> Time
    #   resp.data.portfolio_detail.provider_name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::CreatePortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePortfolio,
        stubs: @stubs,
        params_class: Params::CreatePortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shares the specified portfolio with the specified account or organization node.
    #          Shares to an organization node can only be created by the management account of an
    #          organization or by a delegated administrator. You can share portfolios to an organization,
    #          an organizational unit, or a specific account.</p>
    #          <p>Note that if a delegated admin is de-registered, they can no longer create portfolio shares.</p>
    #         <p>
    #             <code>AWSOrganizationsAccess</code> must be enabled in order to create a portfolio share to an organization node.</p>
    #          <p>You can't share a shared resource, including portfolios that contain a shared product.</p>
    #          <p>If the portfolio share with the specified account or organization node already exists, this action will have no effect and will not return an error. To update an existing share, you must use the <code> UpdatePortfolioShare</code> API instead.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePortfolioShareInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :account_id
    #   <p>The AWS account ID. For example, <code>123456789012</code>.</p>
    #
    # @option params [OrganizationNode] :organization_node
    #   <p>The organization node to whom you are going to share. If <code>OrganizationNode</code>
    #            is passed in, <code>PortfolioShare</code> will be created for the node an
    #            ListOrganizationPortfolioAccessd its children (when applies), and a
    #               <code>PortfolioShareToken</code> will be returned in the output in order for the
    #            administrator to monitor the status of the <code>PortfolioShare</code> creation
    #            process.</p>
    #
    # @option params [Boolean] :share_tag_options
    #   <p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not provided, TagOptions sharing is disabled.</p>
    #
    # @return [Types::CreatePortfolioShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio_share(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     account_id: 'AccountId',
    #     organization_node: {
    #       type: 'ORGANIZATION', # accepts ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #       value: 'Value'
    #     },
    #     share_tag_options: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePortfolioShareOutput
    #   resp.data.portfolio_share_token #=> String
    #
    def create_portfolio_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePortfolioShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePortfolioShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePortfolioShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::LimitExceededException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreatePortfolioShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePortfolioShare,
        stubs: @stubs,
        params_class: Params::CreatePortfolioShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_portfolio_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a product.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    #          <p>The user or role that performs this operation must have the
    #             <code>cloudformation:GetTemplate</code> IAM policy permission. This policy permission is
    #          required when using the <code>ImportFromPhysicalId</code> template source in the
    #          information data section.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>The name of the product.</p>
    #
    # @option params [String] :owner
    #   <p>The owner of the product.</p>
    #
    # @option params [String] :description
    #   <p>The description of the product.</p>
    #
    # @option params [String] :distributor
    #   <p>The distributor of the product.</p>
    #
    # @option params [String] :support_description
    #   <p>The support information about the product.</p>
    #
    # @option params [String] :support_email
    #   <p>The contact email for product support.</p>
    #
    # @option params [String] :support_url
    #   <p>The contact URL for product support.</p>
    #            <p>
    #               <code>^https?:\/\// </code>/ is the pattern used to validate SupportUrl.</p>
    #
    # @option params [String] :product_type
    #   <p>The type of product.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #
    # @option params [ProvisioningArtifactProperties] :provisioning_artifact_parameters
    #   <p>The configuration of the provisioning artifact. </p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::CreateProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product(
    #     accept_language: 'AcceptLanguage',
    #     name: 'Name', # required
    #     owner: 'Owner', # required
    #     description: 'Description',
    #     distributor: 'Distributor',
    #     support_description: 'SupportDescription',
    #     support_email: 'SupportEmail',
    #     support_url: 'SupportUrl',
    #     product_type: 'CLOUD_FORMATION_TEMPLATE', # required - accepts ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     provisioning_artifact_parameters: {
    #       name: 'Name',
    #       description: 'Description',
    #       info: {
    #         'key' => 'value'
    #       }, # required
    #       type: 'CLOUD_FORMATION_TEMPLATE', # accepts ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #       disable_template_validation: false
    #     }, # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProductOutput
    #   resp.data.product_view_detail #=> Types::ProductViewDetail
    #   resp.data.product_view_detail.product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_detail.product_view_summary.id #=> String
    #   resp.data.product_view_detail.product_view_summary.product_id #=> String
    #   resp.data.product_view_detail.product_view_summary.name #=> String
    #   resp.data.product_view_detail.product_view_summary.owner #=> String
    #   resp.data.product_view_detail.product_view_summary.short_description #=> String
    #   resp.data.product_view_detail.product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_detail.product_view_summary.distributor #=> String
    #   resp.data.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_detail.product_view_summary.support_email #=> String
    #   resp.data.product_view_detail.product_view_summary.support_description #=> String
    #   resp.data.product_view_detail.product_view_summary.support_url #=> String
    #   resp.data.product_view_detail.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #   resp.data.product_view_detail.product_arn #=> String
    #   resp.data.product_view_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_detail #=> Types::ProvisioningArtifactDetail
    #   resp.data.provisioning_artifact_detail.id #=> String
    #   resp.data.provisioning_artifact_detail.name #=> String
    #   resp.data.provisioning_artifact_detail.description #=> String
    #   resp.data.provisioning_artifact_detail.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #   resp.data.provisioning_artifact_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_detail.active #=> Boolean
    #   resp.data.provisioning_artifact_detail.guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::CreateProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProduct,
        stubs: @stubs,
        params_class: Params::CreateProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a plan. A plan includes the list of resources to be
    #          created (when provisioning a new product) or modified (when updating a provisioned product)
    #          when the plan is executed.</p>
    #          <p>You can create one plan per provisioned product. To create a plan for an existing
    #          provisioned product, the product status must be AVAILBLE or TAINTED.</p>
    #          <p>To view the resource changes in the change set, use <a>DescribeProvisionedProductPlan</a>.
    #          To create or modify the provisioned product, use <a>ExecuteProvisionedProductPlan</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProvisionedProductPlanInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :plan_name
    #   <p>The name of the plan.</p>
    #
    # @option params [String] :plan_type
    #   <p>The plan type.</p>
    #
    # @option params [Array<String>] :notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the AWS account and cannot be updated after the product is provisioned.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @option params [Array<UpdateProvisioningParameter>] :provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #            <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #
    # @return [Types::CreateProvisionedProductPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioned_product_plan(
    #     accept_language: 'AcceptLanguage',
    #     plan_name: 'PlanName', # required
    #     plan_type: 'CLOUDFORMATION', # required - accepts ["CLOUDFORMATION"]
    #     notification_arns: [
    #       'member'
    #     ],
    #     path_id: 'PathId',
    #     product_id: 'ProductId', # required
    #     provisioned_product_name: 'ProvisionedProductName', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     provisioning_parameters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         use_previous_value: false
    #       }
    #     ],
    #     idempotency_token: 'IdempotencyToken', # required
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
    #   resp.data #=> Types::CreateProvisionedProductPlanOutput
    #   resp.data.plan_name #=> String
    #   resp.data.plan_id #=> String
    #   resp.data.provision_product_id #=> String
    #   resp.data.provisioned_product_name #=> String
    #   resp.data.provisioning_artifact_id #=> String
    #
    def create_provisioned_product_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProvisionedProductPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProvisionedProductPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProvisionedProductPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateProvisionedProductPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProvisionedProductPlan,
        stubs: @stubs,
        params_class: Params::CreateProvisionedProductPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_provisioned_product_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot create a provisioning artifact for a product that was shared with you.</p>
    #
    #          <p>The user or role that performs this operation must have the <code>cloudformation:GetTemplate</code>
    #          IAM policy permission. This policy permission is required when using the
    #          <code>ImportFromPhysicalId</code> template source in the information data section.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProvisioningArtifactInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [ProvisioningArtifactProperties] :parameters
    #   <p>The configuration for the provisioning artifact.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::CreateProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_artifact(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     parameters: {
    #       name: 'Name',
    #       description: 'Description',
    #       info: {
    #         'key' => 'value'
    #       }, # required
    #       type: 'CLOUD_FORMATION_TEMPLATE', # accepts ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #       disable_template_validation: false
    #     }, # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProvisioningArtifactOutput
    #   resp.data.provisioning_artifact_detail #=> Types::ProvisioningArtifactDetail
    #   resp.data.provisioning_artifact_detail.id #=> String
    #   resp.data.provisioning_artifact_detail.name #=> String
    #   resp.data.provisioning_artifact_detail.description #=> String
    #   resp.data.provisioning_artifact_detail.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #   resp.data.provisioning_artifact_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_detail.active #=> Boolean
    #   resp.data.provisioning_artifact_detail.guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.info #=> Hash<String, String>
    #   resp.data.info['key'] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def create_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::CreateProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a self-service action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceActionInput}.
    #
    # @option params [String] :name
    #   <p>The self-service action name.</p>
    #
    # @option params [String] :definition_type
    #   <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    #
    # @option params [Hash<String, String>] :definition
    #   <p>The self-service action definition. Can be one of the following:</p>
    #            <dl>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The name of the AWS Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
    #                  <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
    #               </dd>
    #               <dt>Version</dt>
    #               <dd>
    #                  <p>The AWS Systems Manager automation document version. For example, <code>"Version": "1"</code>
    #                  </p>
    #               </dd>
    #               <dt>AssumeRole</dt>
    #               <dd>
    #                  <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
    #                  <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
    #               </dd>
    #               <dt>Parameters</dt>
    #               <dd>
    #                  <p>The list of parameters in JSON format.</p>
    #                  <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code> or <code>[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]</code>.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :description
    #   <p>The self-service action description.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::CreateServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_action(
    #     name: 'Name', # required
    #     definition_type: 'SSM_AUTOMATION', # required - accepts ["SSM_AUTOMATION"]
    #     definition: {
    #       'key' => 'value'
    #     }, # required
    #     description: 'Description',
    #     accept_language: 'AcceptLanguage',
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceActionOutput
    #   resp.data.service_action_detail #=> Types::ServiceActionDetail
    #   resp.data.service_action_detail.service_action_summary #=> Types::ServiceActionSummary
    #   resp.data.service_action_detail.service_action_summary.id #=> String
    #   resp.data.service_action_detail.service_action_summary.name #=> String
    #   resp.data.service_action_detail.service_action_summary.description #=> String
    #   resp.data.service_action_detail.service_action_summary.definition_type #=> String, one of ["SSM_AUTOMATION"]
    #   resp.data.service_action_detail.definition #=> Hash<String, String>
    #   resp.data.service_action_detail.definition['key'] #=> String
    #
    def create_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceAction,
        stubs: @stubs,
        params_class: Params::CreateServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a TagOption.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTagOptionInput}.
    #
    # @option params [String] :key
    #   <p>The TagOption key.</p>
    #
    # @option params [String] :value
    #   <p>The TagOption value.</p>
    #
    # @return [Types::CreateTagOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tag_option(
    #     key: 'Key', # required
    #     value: 'Value' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTagOptionOutput
    #   resp.data.tag_option_detail #=> Types::TagOptionDetail
    #   resp.data.tag_option_detail.key #=> String
    #   resp.data.tag_option_detail.value #=> String
    #   resp.data.tag_option_detail.active #=> Boolean
    #   resp.data.tag_option_detail.id #=> String
    #   resp.data.tag_option_detail.owner #=> String
    #
    def create_tag_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTagOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTagOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTagOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::LimitExceededException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::CreateTagOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTagOption,
        stubs: @stubs,
        params_class: Params::CreateTagOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tag_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified constraint.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConstraintInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    #
    # @return [Types::DeleteConstraintOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_constraint(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConstraintOutput
    #
    def delete_constraint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConstraintInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConstraintInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConstraint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteConstraint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConstraint,
        stubs: @stubs,
        params_class: Params::DeleteConstraintOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_constraint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified portfolio.</p>
    #          <p>You cannot delete a portfolio if it was shared with you or if it has associated
    #          products, users, constraints, or shared accounts.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    #
    # @return [Types::DeletePortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePortfolioOutput
    #
    def delete_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::DeletePortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePortfolio,
        stubs: @stubs,
        params_class: Params::DeletePortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops sharing the specified portfolio with the specified account or organization
    #          node. Shares to an organization node can only be deleted by the management account of an
    #          organization or by a delegated administrator.</p>
    #          <p>Note that if a delegated admin is de-registered, portfolio shares created from that account are removed.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePortfolioShareInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :account_id
    #   <p>The AWS account ID.</p>
    #
    # @option params [OrganizationNode] :organization_node
    #   <p>The organization node to whom you are going to stop sharing.</p>
    #
    # @return [Types::DeletePortfolioShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio_share(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     account_id: 'AccountId',
    #     organization_node: {
    #       type: 'ORGANIZATION', # accepts ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #       value: 'Value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePortfolioShareOutput
    #   resp.data.portfolio_share_token #=> String
    #
    def delete_portfolio_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePortfolioShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePortfolioShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePortfolioShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePortfolioShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePortfolioShare,
        stubs: @stubs,
        params_class: Params::DeletePortfolioShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_portfolio_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified product.</p>
    #          <p>You cannot delete a product if it was shared with you or is associated with a portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The product identifier.</p>
    #
    # @return [Types::DeleteProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProductOutput
    #
    def delete_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::DeleteProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProduct,
        stubs: @stubs,
        params_class: Params::DeleteProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProvisionedProductPlanInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    #
    # @option params [Boolean] :ignore_errors
    #   <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #
    # @return [Types::DeleteProvisionedProductPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_product_plan(
    #     accept_language: 'AcceptLanguage',
    #     plan_id: 'PlanId', # required
    #     ignore_errors: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProvisionedProductPlanOutput
    #
    def delete_provisioned_product_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisionedProductPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisionedProductPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisionedProductPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteProvisionedProductPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProvisionedProductPlan,
        stubs: @stubs,
        params_class: Params::DeleteProvisionedProductPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_provisioned_product_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot delete a provisioning artifact associated with a product that was shared with you.
    #          You cannot delete the last provisioning artifact for a product, because a product must have at
    #          least one provisioning artifact.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProvisioningArtifactInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @return [Types::DeleteProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_artifact(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProvisioningArtifactOutput
    #
    def delete_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::DeleteProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a self-service action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceActionInput}.
    #
    # @option params [String] :id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_action(
    #     id: 'Id', # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceActionOutput
    #
    def delete_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceAction,
        stubs: @stubs,
        params_class: Params::DeleteServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified TagOption.</p>
    #          <p>You cannot delete a TagOption if it is associated with a product or portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagOptionInput}.
    #
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    #
    # @return [Types::DeleteTagOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tag_option(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagOptionOutput
    #
    def delete_tag_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTagOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::DeleteTagOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTagOption,
        stubs: @stubs,
        params_class: Params::DeleteTagOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tag_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified constraint.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConstraintInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    #
    # @return [Types::DescribeConstraintOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_constraint(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConstraintOutput
    #   resp.data.constraint_detail #=> Types::ConstraintDetail
    #   resp.data.constraint_detail.constraint_id #=> String
    #   resp.data.constraint_detail.type #=> String
    #   resp.data.constraint_detail.description #=> String
    #   resp.data.constraint_detail.owner #=> String
    #   resp.data.constraint_detail.product_id #=> String
    #   resp.data.constraint_detail.portfolio_id #=> String
    #   resp.data.constraint_parameters #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def describe_constraint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConstraintInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConstraintInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConstraint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeConstraint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConstraint,
        stubs: @stubs,
        params_class: Params::DescribeConstraintOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_constraint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of the specified copy product operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCopyProductStatusInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :copy_product_token
    #   <p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>
    #
    # @return [Types::DescribeCopyProductStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_copy_product_status(
    #     accept_language: 'AcceptLanguage',
    #     copy_product_token: 'CopyProductToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCopyProductStatusOutput
    #   resp.data.copy_product_status #=> String, one of ["SUCCEEDED", "IN_PROGRESS", "FAILED"]
    #   resp.data.target_product_id #=> String
    #   resp.data.status_detail #=> String
    #
    def describe_copy_product_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCopyProductStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCopyProductStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCopyProductStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeCopyProductStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCopyProductStatus,
        stubs: @stubs,
        params_class: Params::DescribeCopyProductStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_copy_product_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    #
    # @return [Types::DescribePortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePortfolioOutput
    #   resp.data.portfolio_detail #=> Types::PortfolioDetail
    #   resp.data.portfolio_detail.id #=> String
    #   resp.data.portfolio_detail.arn #=> String
    #   resp.data.portfolio_detail.display_name #=> String
    #   resp.data.portfolio_detail.description #=> String
    #   resp.data.portfolio_detail.created_time #=> Time
    #   resp.data.portfolio_detail.provider_name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.tag_options #=> Array<TagOptionDetail>
    #   resp.data.tag_options[0] #=> Types::TagOptionDetail
    #   resp.data.tag_options[0].key #=> String
    #   resp.data.tag_options[0].value #=> String
    #   resp.data.tag_options[0].active #=> Boolean
    #   resp.data.tag_options[0].id #=> String
    #   resp.data.tag_options[0].owner #=> String
    #   resp.data.budgets #=> Array<BudgetDetail>
    #   resp.data.budgets[0] #=> Types::BudgetDetail
    #   resp.data.budgets[0].budget_name #=> String
    #
    def describe_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePortfolio,
        stubs: @stubs,
        params_class: Params::DescribePortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of the specified portfolio share operation. This API can only be called
    #          by the management account in the organization or by a delegated admin.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePortfolioShareStatusInput}.
    #
    # @option params [String] :portfolio_share_token
    #   <p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>
    #
    # @return [Types::DescribePortfolioShareStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio_share_status(
    #     portfolio_share_token: 'PortfolioShareToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePortfolioShareStatusOutput
    #   resp.data.portfolio_share_token #=> String
    #   resp.data.portfolio_id #=> String
    #   resp.data.organization_node_value #=> String
    #   resp.data.status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"]
    #   resp.data.share_details #=> Types::ShareDetails
    #   resp.data.share_details.successful_shares #=> Array<String>
    #   resp.data.share_details.successful_shares[0] #=> String
    #   resp.data.share_details.share_errors #=> Array<ShareError>
    #   resp.data.share_details.share_errors[0] #=> Types::ShareError
    #   resp.data.share_details.share_errors[0].accounts #=> Array<String>
    #   resp.data.share_details.share_errors[0].accounts[0] #=> String
    #   resp.data.share_details.share_errors[0].message #=> String
    #   resp.data.share_details.share_errors[0].error #=> String
    #
    def describe_portfolio_share_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePortfolioShareStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePortfolioShareStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePortfolioShareStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePortfolioShareStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePortfolioShareStatus,
        stubs: @stubs,
        params_class: Params::DescribePortfolioShareStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_portfolio_share_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a summary of each of the portfolio shares that were created for the specified portfolio.</p>
    #          <p>You can use this API to determine which accounts or organizational nodes this
    #          portfolio have been shared, whether the recipient entity has imported the share, and
    #          whether TagOptions are included with the share.</p>
    #          <p>The <code>PortfolioId</code> and <code>Type</code> parameters are both required.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePortfolioSharesInput}.
    #
    # @option params [String] :portfolio_id
    #   <p>The unique identifier of the portfolio for which shares will be retrieved.</p>
    #
    # @option params [String] :type
    #   <p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>
    #            <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>
    #            <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>
    #            <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>
    #            <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::DescribePortfolioSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio_shares(
    #     portfolio_id: 'PortfolioId', # required
    #     type: 'ACCOUNT', # required - accepts ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"]
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePortfolioSharesOutput
    #   resp.data.next_page_token #=> String
    #   resp.data.portfolio_share_details #=> Array<PortfolioShareDetail>
    #   resp.data.portfolio_share_details[0] #=> Types::PortfolioShareDetail
    #   resp.data.portfolio_share_details[0].principal_id #=> String
    #   resp.data.portfolio_share_details[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"]
    #   resp.data.portfolio_share_details[0].accepted #=> Boolean
    #   resp.data.portfolio_share_details[0].share_tag_options #=> Boolean
    #
    def describe_portfolio_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePortfolioSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePortfolioSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePortfolioShares
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePortfolioShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePortfolioShares,
        stubs: @stubs,
        params_class: Params::DescribePortfolioSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_portfolio_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified product.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :name
    #   <p>The product name.</p>
    #
    # @return [Types::DescribeProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProductOutput
    #   resp.data.product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_summary.id #=> String
    #   resp.data.product_view_summary.product_id #=> String
    #   resp.data.product_view_summary.name #=> String
    #   resp.data.product_view_summary.owner #=> String
    #   resp.data.product_view_summary.short_description #=> String
    #   resp.data.product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_summary.distributor #=> String
    #   resp.data.product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_summary.support_email #=> String
    #   resp.data.product_view_summary.support_description #=> String
    #   resp.data.product_view_summary.support_url #=> String
    #   resp.data.provisioning_artifacts #=> Array<ProvisioningArtifact>
    #   resp.data.provisioning_artifacts[0] #=> Types::ProvisioningArtifact
    #   resp.data.provisioning_artifacts[0].id #=> String
    #   resp.data.provisioning_artifacts[0].name #=> String
    #   resp.data.provisioning_artifacts[0].description #=> String
    #   resp.data.provisioning_artifacts[0].created_time #=> Time
    #   resp.data.provisioning_artifacts[0].guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.budgets #=> Array<BudgetDetail>
    #   resp.data.budgets[0] #=> Types::BudgetDetail
    #   resp.data.budgets[0].budget_name #=> String
    #   resp.data.launch_paths #=> Array<LaunchPath>
    #   resp.data.launch_paths[0] #=> Types::LaunchPath
    #   resp.data.launch_paths[0].id #=> String
    #   resp.data.launch_paths[0].name #=> String
    #
    def describe_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProduct,
        stubs: @stubs,
        params_class: Params::DescribeProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified product. This operation is run with administrator access.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProductAsAdminInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :name
    #   <p>The product name.</p>
    #
    # @option params [String] :source_portfolio_id
    #   <p>The unique identifier of the shared portfolio that the specified product is associated
    #            with.</p>
    #            <p>You can provide this parameter to retrieve the shared TagOptions associated with the
    #            product. If this parameter is provided and if TagOptions sharing is enabled in the
    #            portfolio share, the API returns both local and shared TagOptions associated with the
    #            product. Otherwise only local TagOptions will be returned. </p>
    #
    # @return [Types::DescribeProductAsAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_as_admin(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id',
    #     name: 'Name',
    #     source_portfolio_id: 'SourcePortfolioId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProductAsAdminOutput
    #   resp.data.product_view_detail #=> Types::ProductViewDetail
    #   resp.data.product_view_detail.product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_detail.product_view_summary.id #=> String
    #   resp.data.product_view_detail.product_view_summary.product_id #=> String
    #   resp.data.product_view_detail.product_view_summary.name #=> String
    #   resp.data.product_view_detail.product_view_summary.owner #=> String
    #   resp.data.product_view_detail.product_view_summary.short_description #=> String
    #   resp.data.product_view_detail.product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_detail.product_view_summary.distributor #=> String
    #   resp.data.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_detail.product_view_summary.support_email #=> String
    #   resp.data.product_view_detail.product_view_summary.support_description #=> String
    #   resp.data.product_view_detail.product_view_summary.support_url #=> String
    #   resp.data.product_view_detail.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #   resp.data.product_view_detail.product_arn #=> String
    #   resp.data.product_view_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_summaries #=> Array<ProvisioningArtifactSummary>
    #   resp.data.provisioning_artifact_summaries[0] #=> Types::ProvisioningArtifactSummary
    #   resp.data.provisioning_artifact_summaries[0].id #=> String
    #   resp.data.provisioning_artifact_summaries[0].name #=> String
    #   resp.data.provisioning_artifact_summaries[0].description #=> String
    #   resp.data.provisioning_artifact_summaries[0].created_time #=> Time
    #   resp.data.provisioning_artifact_summaries[0].provisioning_artifact_metadata #=> Hash<String, String>
    #   resp.data.provisioning_artifact_summaries[0].provisioning_artifact_metadata['key'] #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.tag_options #=> Array<TagOptionDetail>
    #   resp.data.tag_options[0] #=> Types::TagOptionDetail
    #   resp.data.tag_options[0].key #=> String
    #   resp.data.tag_options[0].value #=> String
    #   resp.data.tag_options[0].active #=> Boolean
    #   resp.data.tag_options[0].id #=> String
    #   resp.data.tag_options[0].owner #=> String
    #   resp.data.budgets #=> Array<BudgetDetail>
    #   resp.data.budgets[0] #=> Types::BudgetDetail
    #   resp.data.budgets[0].budget_name #=> String
    #
    def describe_product_as_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProductAsAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProductAsAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProductAsAdmin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProductAsAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProductAsAdmin,
        stubs: @stubs,
        params_class: Params::DescribeProductAsAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_product_as_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified product.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProductViewInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The product view identifier.</p>
    #
    # @return [Types::DescribeProductViewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_view(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProductViewOutput
    #   resp.data.product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_summary.id #=> String
    #   resp.data.product_view_summary.product_id #=> String
    #   resp.data.product_view_summary.name #=> String
    #   resp.data.product_view_summary.owner #=> String
    #   resp.data.product_view_summary.short_description #=> String
    #   resp.data.product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_summary.distributor #=> String
    #   resp.data.product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_summary.support_email #=> String
    #   resp.data.product_view_summary.support_description #=> String
    #   resp.data.product_view_summary.support_url #=> String
    #   resp.data.provisioning_artifacts #=> Array<ProvisioningArtifact>
    #   resp.data.provisioning_artifacts[0] #=> Types::ProvisioningArtifact
    #   resp.data.provisioning_artifacts[0].id #=> String
    #   resp.data.provisioning_artifacts[0].name #=> String
    #   resp.data.provisioning_artifacts[0].description #=> String
    #   resp.data.provisioning_artifacts[0].created_time #=> Time
    #   resp.data.provisioning_artifacts[0].guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #
    def describe_product_view(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProductViewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProductViewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProductView
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProductView
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProductView,
        stubs: @stubs,
        params_class: Params::DescribeProductViewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_product_view
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified provisioned product.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisionedProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The provisioned product identifier. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #
    # @option params [String] :name
    #   <p>The name of the provisioned product. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #
    # @return [Types::DescribeProvisionedProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisionedProductOutput
    #   resp.data.provisioned_product_detail #=> Types::ProvisionedProductDetail
    #   resp.data.provisioned_product_detail.name #=> String
    #   resp.data.provisioned_product_detail.arn #=> String
    #   resp.data.provisioned_product_detail.type #=> String
    #   resp.data.provisioned_product_detail.id #=> String
    #   resp.data.provisioned_product_detail.status #=> String, one of ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"]
    #   resp.data.provisioned_product_detail.status_message #=> String
    #   resp.data.provisioned_product_detail.created_time #=> Time
    #   resp.data.provisioned_product_detail.idempotency_token #=> String
    #   resp.data.provisioned_product_detail.last_record_id #=> String
    #   resp.data.provisioned_product_detail.last_provisioning_record_id #=> String
    #   resp.data.provisioned_product_detail.last_successful_provisioning_record_id #=> String
    #   resp.data.provisioned_product_detail.product_id #=> String
    #   resp.data.provisioned_product_detail.provisioning_artifact_id #=> String
    #   resp.data.provisioned_product_detail.launch_role_arn #=> String
    #   resp.data.cloud_watch_dashboards #=> Array<CloudWatchDashboard>
    #   resp.data.cloud_watch_dashboards[0] #=> Types::CloudWatchDashboard
    #   resp.data.cloud_watch_dashboards[0].name #=> String
    #
    def describe_provisioned_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisionedProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisionedProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisionedProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProvisionedProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisionedProduct,
        stubs: @stubs,
        params_class: Params::DescribeProvisionedProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioned_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the resource changes for the specified plan.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisionedProductPlanInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::DescribeProvisionedProductPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product_plan(
    #     accept_language: 'AcceptLanguage',
    #     plan_id: 'PlanId', # required
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisionedProductPlanOutput
    #   resp.data.provisioned_product_plan_details #=> Types::ProvisionedProductPlanDetails
    #   resp.data.provisioned_product_plan_details.created_time #=> Time
    #   resp.data.provisioned_product_plan_details.path_id #=> String
    #   resp.data.provisioned_product_plan_details.product_id #=> String
    #   resp.data.provisioned_product_plan_details.plan_name #=> String
    #   resp.data.provisioned_product_plan_details.plan_id #=> String
    #   resp.data.provisioned_product_plan_details.provision_product_id #=> String
    #   resp.data.provisioned_product_plan_details.provision_product_name #=> String
    #   resp.data.provisioned_product_plan_details.plan_type #=> String, one of ["CLOUDFORMATION"]
    #   resp.data.provisioned_product_plan_details.provisioning_artifact_id #=> String
    #   resp.data.provisioned_product_plan_details.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_SUCCESS", "CREATE_FAILED", "EXECUTE_IN_PROGRESS", "EXECUTE_SUCCESS", "EXECUTE_FAILED"]
    #   resp.data.provisioned_product_plan_details.updated_time #=> Time
    #   resp.data.provisioned_product_plan_details.notification_arns #=> Array<String>
    #   resp.data.provisioned_product_plan_details.notification_arns[0] #=> String
    #   resp.data.provisioned_product_plan_details.provisioning_parameters #=> Array<UpdateProvisioningParameter>
    #   resp.data.provisioned_product_plan_details.provisioning_parameters[0] #=> Types::UpdateProvisioningParameter
    #   resp.data.provisioned_product_plan_details.provisioning_parameters[0].key #=> String
    #   resp.data.provisioned_product_plan_details.provisioning_parameters[0].value #=> String
    #   resp.data.provisioned_product_plan_details.provisioning_parameters[0].use_previous_value #=> Boolean
    #   resp.data.provisioned_product_plan_details.tags #=> Array<Tag>
    #   resp.data.provisioned_product_plan_details.tags[0] #=> Types::Tag
    #   resp.data.provisioned_product_plan_details.tags[0].key #=> String
    #   resp.data.provisioned_product_plan_details.tags[0].value #=> String
    #   resp.data.provisioned_product_plan_details.status_message #=> String
    #   resp.data.resource_changes #=> Array<ResourceChange>
    #   resp.data.resource_changes[0] #=> Types::ResourceChange
    #   resp.data.resource_changes[0].action #=> String, one of ["ADD", "MODIFY", "REMOVE"]
    #   resp.data.resource_changes[0].logical_resource_id #=> String
    #   resp.data.resource_changes[0].physical_resource_id #=> String
    #   resp.data.resource_changes[0].resource_type #=> String
    #   resp.data.resource_changes[0].replacement #=> String, one of ["TRUE", "FALSE", "CONDITIONAL"]
    #   resp.data.resource_changes[0].scope #=> Array<String>
    #   resp.data.resource_changes[0].scope[0] #=> String, one of ["PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"]
    #   resp.data.resource_changes[0].details #=> Array<ResourceChangeDetail>
    #   resp.data.resource_changes[0].details[0] #=> Types::ResourceChangeDetail
    #   resp.data.resource_changes[0].details[0].target #=> Types::ResourceTargetDefinition
    #   resp.data.resource_changes[0].details[0].target.attribute #=> String, one of ["PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"]
    #   resp.data.resource_changes[0].details[0].target.name #=> String
    #   resp.data.resource_changes[0].details[0].target.requires_recreation #=> String, one of ["NEVER", "CONDITIONALLY", "ALWAYS"]
    #   resp.data.resource_changes[0].details[0].evaluation #=> String, one of ["STATIC", "DYNAMIC"]
    #   resp.data.resource_changes[0].details[0].causing_entity #=> String
    #   resp.data.next_page_token #=> String
    #
    def describe_provisioned_product_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisionedProductPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisionedProductPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisionedProductPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProvisionedProductPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisionedProductPlan,
        stubs: @stubs,
        params_class: Params::DescribeProvisionedProductPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioned_product_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified provisioning artifact (also known as a version) for the specified product.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisioningArtifactInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :provisioning_artifact_name
    #   <p>The provisioning artifact name.</p>
    #
    # @option params [String] :product_name
    #   <p>The product name.</p>
    #
    # @option params [Boolean] :verbose
    #   <p>Indicates whether a verbose level of detail is enabled.</p>
    #
    # @return [Types::DescribeProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_artifact(
    #     accept_language: 'AcceptLanguage',
    #     provisioning_artifact_id: 'ProvisioningArtifactId',
    #     product_id: 'ProductId',
    #     provisioning_artifact_name: 'ProvisioningArtifactName',
    #     product_name: 'ProductName',
    #     verbose: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisioningArtifactOutput
    #   resp.data.provisioning_artifact_detail #=> Types::ProvisioningArtifactDetail
    #   resp.data.provisioning_artifact_detail.id #=> String
    #   resp.data.provisioning_artifact_detail.name #=> String
    #   resp.data.provisioning_artifact_detail.description #=> String
    #   resp.data.provisioning_artifact_detail.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #   resp.data.provisioning_artifact_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_detail.active #=> Boolean
    #   resp.data.provisioning_artifact_detail.guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.info #=> Hash<String, String>
    #   resp.data.info['key'] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def describe_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::DescribeProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the configuration required to provision the specified product using
    #          the specified provisioning artifact.</p>
    #          <p>If the output contains a TagOption key with an empty list of values, there is a
    #          TagOption conflict for that key. The end user cannot take action to fix the conflict, and
    #          launch is not blocked. In subsequent calls to <a>ProvisionProduct</a>,
    #          do not include conflicted TagOption keys as tags, or this causes the error
    #          "Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>".
    #          Tag the provisioned product with the value <code>sc-tagoption-conflict-portfolioId-productId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProvisioningParametersInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier. You must provide the product name or ID, but not both.</p>
    #
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    # @return [Types::DescribeProvisioningParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_parameters(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId',
    #     product_name: 'ProductName',
    #     provisioning_artifact_id: 'ProvisioningArtifactId',
    #     provisioning_artifact_name: 'ProvisioningArtifactName',
    #     path_id: 'PathId',
    #     path_name: 'PathName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProvisioningParametersOutput
    #   resp.data.provisioning_artifact_parameters #=> Array<ProvisioningArtifactParameter>
    #   resp.data.provisioning_artifact_parameters[0] #=> Types::ProvisioningArtifactParameter
    #   resp.data.provisioning_artifact_parameters[0].parameter_key #=> String
    #   resp.data.provisioning_artifact_parameters[0].default_value #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_type #=> String
    #   resp.data.provisioning_artifact_parameters[0].is_no_echo #=> Boolean
    #   resp.data.provisioning_artifact_parameters[0].description #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints #=> Types::ParameterConstraints
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.allowed_values #=> Array<String>
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.allowed_pattern #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.constraint_description #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.max_length #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.min_length #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.max_value #=> String
    #   resp.data.provisioning_artifact_parameters[0].parameter_constraints.min_value #=> String
    #   resp.data.constraint_summaries #=> Array<ConstraintSummary>
    #   resp.data.constraint_summaries[0] #=> Types::ConstraintSummary
    #   resp.data.constraint_summaries[0].type #=> String
    #   resp.data.constraint_summaries[0].description #=> String
    #   resp.data.usage_instructions #=> Array<UsageInstruction>
    #   resp.data.usage_instructions[0] #=> Types::UsageInstruction
    #   resp.data.usage_instructions[0].type #=> String
    #   resp.data.usage_instructions[0].value #=> String
    #   resp.data.tag_options #=> Array<TagOptionSummary>
    #   resp.data.tag_options[0] #=> Types::TagOptionSummary
    #   resp.data.tag_options[0].key #=> String
    #   resp.data.tag_options[0].values #=> Array<String>
    #   resp.data.tag_options[0].values[0] #=> String
    #   resp.data.provisioning_artifact_preferences #=> Types::ProvisioningArtifactPreferences
    #   resp.data.provisioning_artifact_preferences.stack_set_accounts #=> Array<String>
    #   resp.data.provisioning_artifact_preferences.stack_set_accounts[0] #=> String
    #   resp.data.provisioning_artifact_preferences.stack_set_regions #=> Array<String>
    #   resp.data.provisioning_artifact_preferences.stack_set_regions[0] #=> String
    #   resp.data.provisioning_artifact_outputs #=> Array<ProvisioningArtifactOutput>
    #   resp.data.provisioning_artifact_outputs[0] #=> Types::ProvisioningArtifactOutput
    #   resp.data.provisioning_artifact_outputs[0].key #=> String
    #   resp.data.provisioning_artifact_outputs[0].description #=> String
    #   resp.data.provisioning_artifact_output_keys #=> Array<ProvisioningArtifactOutput>
    #
    def describe_provisioning_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProvisioningParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProvisioningParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProvisioningParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeProvisioningParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProvisioningParameters,
        stubs: @stubs,
        params_class: Params::DescribeProvisioningParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_provisioning_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified request operation.</p>
    #          <p>Use this operation after calling a request operation (for example, <a>ProvisionProduct</a>,
    #          <a>TerminateProvisionedProduct</a>, or <a>UpdateProvisionedProduct</a>).
    #       </p>
    #          <note>
    #             <p>If a provisioned product was transferred to a new owner using <a>UpdateProvisionedProductProperties</a>, the new owner
    #       will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to
    #       use <a>ListRecordHistory</a> to see the product's history from when he was the owner.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecordInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The record identifier of the provisioned product. This identifier is returned by the
    #            request operation.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::DescribeRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_record(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id', # required
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecordOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #   resp.data.record_outputs #=> Array<RecordOutput>
    #   resp.data.record_outputs[0] #=> Types::RecordOutput
    #   resp.data.record_outputs[0].output_key #=> String
    #   resp.data.record_outputs[0].output_value #=> String
    #   resp.data.record_outputs[0].description #=> String
    #   resp.data.next_page_token #=> String
    #
    def describe_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecord,
        stubs: @stubs,
        params_class: Params::DescribeRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a self-service action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceActionInput}.
    #
    # @option params [String] :id
    #   <p>The self-service action identifier.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DescribeServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_action(
    #     id: 'Id', # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceActionOutput
    #   resp.data.service_action_detail #=> Types::ServiceActionDetail
    #   resp.data.service_action_detail.service_action_summary #=> Types::ServiceActionSummary
    #   resp.data.service_action_detail.service_action_summary.id #=> String
    #   resp.data.service_action_detail.service_action_summary.name #=> String
    #   resp.data.service_action_detail.service_action_summary.description #=> String
    #   resp.data.service_action_detail.service_action_summary.definition_type #=> String, one of ["SSM_AUTOMATION"]
    #   resp.data.service_action_detail.definition #=> Hash<String, String>
    #   resp.data.service_action_detail.definition['key'] #=> String
    #
    def describe_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceAction,
        stubs: @stubs,
        params_class: Params::DescribeServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceActionExecutionParametersInput}.
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DescribeServiceActionExecutionParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_action_execution_parameters(
    #     provisioned_product_id: 'ProvisionedProductId', # required
    #     service_action_id: 'ServiceActionId', # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceActionExecutionParametersOutput
    #   resp.data.service_action_parameters #=> Array<ExecutionParameter>
    #   resp.data.service_action_parameters[0] #=> Types::ExecutionParameter
    #   resp.data.service_action_parameters[0].name #=> String
    #   resp.data.service_action_parameters[0].type #=> String
    #   resp.data.service_action_parameters[0].default_values #=> Array<String>
    #   resp.data.service_action_parameters[0].default_values[0] #=> String
    #
    def describe_service_action_execution_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceActionExecutionParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceActionExecutionParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceActionExecutionParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeServiceActionExecutionParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceActionExecutionParameters,
        stubs: @stubs,
        params_class: Params::DescribeServiceActionExecutionParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_action_execution_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified TagOption.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagOptionInput}.
    #
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    #
    # @return [Types::DescribeTagOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tag_option(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagOptionOutput
    #   resp.data.tag_option_detail #=> Types::TagOptionDetail
    #   resp.data.tag_option_detail.key #=> String
    #   resp.data.tag_option_detail.value #=> String
    #   resp.data.tag_option_detail.active #=> Boolean
    #   resp.data.tag_option_detail.id #=> String
    #   resp.data.tag_option_detail.owner #=> String
    #
    def describe_tag_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTagOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::DescribeTagOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTagOption,
        stubs: @stubs,
        params_class: Params::DescribeTagOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tag_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disable portfolio sharing through AWS Organizations feature. This feature will not
    #          delete your current shares but it will prevent you from creating new shares throughout your
    #          organization. Current shares will not be in sync with your organization structure if it
    #          changes after calling this API. This API can only be called by the management  account in
    #          the organization.</p>
    #          <p>This API can't be invoked if there are active delegated administrators in the organization.</p>
    #          <p>Note that a delegated administrator is not authorized to invoke <code>DisableAWSOrganizationsAccess</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableAWSOrganizationsAccessInput}.
    #
    # @return [Types::DisableAWSOrganizationsAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_aws_organizations_access()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableAWSOrganizationsAccessOutput
    #
    def disable_aws_organizations_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableAWSOrganizationsAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableAWSOrganizationsAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableAWSOrganizationsAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisableAWSOrganizationsAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableAWSOrganizationsAccess,
        stubs: @stubs,
        params_class: Params::DisableAWSOrganizationsAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_aws_organizations_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified budget from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateBudgetFromResourceInput}.
    #
    # @option params [String] :budget_name
    #   <p>The name of the budget you want to disassociate.</p>
    #
    # @option params [String] :resource_id
    #   <p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>
    #
    # @return [Types::DisassociateBudgetFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_budget_from_resource(
    #     budget_name: 'BudgetName', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateBudgetFromResourceOutput
    #
    def disassociate_budget_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateBudgetFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateBudgetFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateBudgetFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateBudgetFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateBudgetFromResource,
        stubs: @stubs,
        params_class: Params::DisassociateBudgetFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_budget_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a previously associated principal ARN from a specified
    #          portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePrincipalFromPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal (IAM user, role, or group).</p>
    #
    # @return [Types::DisassociatePrincipalFromPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_principal_from_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     principal_arn: 'PrincipalARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePrincipalFromPortfolioOutput
    #
    def disassociate_principal_from_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePrincipalFromPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePrincipalFromPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePrincipalFromPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociatePrincipalFromPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePrincipalFromPortfolio,
        stubs: @stubs,
        params_class: Params::DisassociatePrincipalFromPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_principal_from_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified product from the specified portfolio. </p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateProductFromPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @return [Types::DisassociateProductFromPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_product_from_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     portfolio_id: 'PortfolioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateProductFromPortfolioOutput
    #
    def disassociate_product_from_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateProductFromPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateProductFromPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateProductFromPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateProductFromPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateProductFromPortfolio,
        stubs: @stubs,
        params_class: Params::DisassociateProductFromPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_product_from_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified self-service action association from the specified provisioning artifact.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateServiceActionFromProvisioningArtifactInput}.
    #
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DisassociateServiceActionFromProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_service_action_from_provisioning_artifact(
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     service_action_id: 'ServiceActionId', # required
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateServiceActionFromProvisioningArtifactOutput
    #
    def disassociate_service_action_from_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateServiceActionFromProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateServiceActionFromProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateServiceActionFromProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateServiceActionFromProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateServiceActionFromProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::DisassociateServiceActionFromProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_service_action_from_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified TagOption from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTagOptionFromResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    #
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    # @return [Types::DisassociateTagOptionFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tag_option_from_resource(
    #     resource_id: 'ResourceId', # required
    #     tag_option_id: 'TagOptionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTagOptionFromResourceOutput
    #
    def disassociate_tag_option_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTagOptionFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTagOptionFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTagOptionFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::DisassociateTagOptionFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTagOptionFromResource,
        stubs: @stubs,
        params_class: Params::DisassociateTagOptionFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_tag_option_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enable portfolio sharing feature through AWS Organizations. This API will allow Service
    #          Catalog to receive updates on your organization in order to sync your shares with the
    #          current structure. This API can only be called by the management  account in the
    #          organization.</p>
    #          <p>By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.</p>
    #          <p>Note that a delegated administrator is not authorized to invoke <code>EnableAWSOrganizationsAccess</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableAWSOrganizationsAccessInput}.
    #
    # @return [Types::EnableAWSOrganizationsAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_aws_organizations_access()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableAWSOrganizationsAccessOutput
    #
    def enable_aws_organizations_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableAWSOrganizationsAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableAWSOrganizationsAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableAWSOrganizationsAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::EnableAWSOrganizationsAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableAWSOrganizationsAccess,
        stubs: @stubs,
        params_class: Params::EnableAWSOrganizationsAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_aws_organizations_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions or modifies a product based on the resource changes for the specified plan.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteProvisionedProductPlanInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::ExecuteProvisionedProductPlanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_provisioned_product_plan(
    #     accept_language: 'AcceptLanguage',
    #     plan_id: 'PlanId', # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteProvisionedProductPlanOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def execute_provisioned_product_plan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteProvisionedProductPlanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteProvisionedProductPlanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteProvisionedProductPlan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ExecuteProvisionedProductPlan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteProvisionedProductPlan,
        stubs: @stubs,
        params_class: Params::ExecuteProvisionedProductPlanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_provisioned_product_plan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Executes a self-service action against a provisioned product.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteProvisionedProductServiceActionInput}.
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    # @option params [String] :execute_token
    #   <p>An idempotency token that uniquely identifies the execute request.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will
    #               override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for
    #               any special parameters such as <code>TARGET</code>.</p>
    #
    # @return [Types::ExecuteProvisionedProductServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_provisioned_product_service_action(
    #     provisioned_product_id: 'ProvisionedProductId', # required
    #     service_action_id: 'ServiceActionId', # required
    #     execute_token: 'ExecuteToken', # required
    #     accept_language: 'AcceptLanguage',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteProvisionedProductServiceActionOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def execute_provisioned_product_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteProvisionedProductServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteProvisionedProductServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteProvisionedProductServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ExecuteProvisionedProductServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteProvisionedProductServiceAction,
        stubs: @stubs,
        params_class: Params::ExecuteProvisionedProductServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_provisioned_product_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the Access Status for AWS Organization portfolio share feature. This API can only be
    #          called by the management account in the organization or by a delegated admin.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAWSOrganizationsAccessStatusInput}.
    #
    # @return [Types::GetAWSOrganizationsAccessStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aws_organizations_access_status()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAWSOrganizationsAccessStatusOutput
    #   resp.data.access_status #=> String, one of ["ENABLED", "UNDER_CHANGE", "DISABLED"]
    #
    def get_aws_organizations_access_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAWSOrganizationsAccessStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAWSOrganizationsAccessStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAWSOrganizationsAccessStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAWSOrganizationsAccessStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAWSOrganizationsAccessStatus,
        stubs: @stubs,
        params_class: Params::GetAWSOrganizationsAccessStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_aws_organizations_access_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API takes either a <code>ProvisonedProductId</code> or a <code>ProvisionedProductName</code>, along with a list of one or more output keys, and responds with the key/value pairs of those outputs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProvisionedProductOutputsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product that you want the outputs from.</p>
    #
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product that you want the outputs from.</p>
    #
    # @option params [Array<String>] :output_keys
    #   <p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::GetProvisionedProductOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_product_outputs(
    #     accept_language: 'AcceptLanguage',
    #     provisioned_product_id: 'ProvisionedProductId',
    #     provisioned_product_name: 'ProvisionedProductName',
    #     output_keys: [
    #       'member'
    #     ],
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProvisionedProductOutputsOutput
    #   resp.data.outputs #=> Array<RecordOutput>
    #   resp.data.outputs[0] #=> Types::RecordOutput
    #   resp.data.outputs[0].output_key #=> String
    #   resp.data.outputs[0].output_value #=> String
    #   resp.data.outputs[0].description #=> String
    #   resp.data.next_page_token #=> String
    #
    def get_provisioned_product_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProvisionedProductOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProvisionedProductOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProvisionedProductOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetProvisionedProductOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProvisionedProductOutputs,
        stubs: @stubs,
        params_class: Params::GetProvisionedProductOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_provisioned_product_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests the import of a resource as a Service Catalog provisioned product that is
    #          associated to a Service Catalog product and provisioning artifact. Once imported, all
    #          supported Service Catalog governance actions are supported on the provisioned
    #          product.</p>
    #          <p>Resource import only supports CloudFormation stack ARNs. CloudFormation StackSets and
    #          non-root nested stacks are not supported.</p>
    #          <p>The CloudFormation stack must have one of the following statuses to be imported:
    #          <code>CREATE_COMPLETE</code>, <code>UPDATE_COMPLETE</code>, <code>UPDATE_ROLLBACK_COMPLETE</code>, <code>IMPORT_COMPLETE</code>,
    #          <code>IMPORT_ROLLBACK_COMPLETE</code>.</p>
    #          <p>Import of the resource requires that the CloudFormation stack template matches the
    #          associated Service Catalog product provisioning artifact. </p>
    #
    #          <p>The user or role that performs this operation must have the <code>cloudformation:GetTemplate</code>
    #          and <code>cloudformation:DescribeStacks</code> IAM policy permissions. </p>
    #
    # @param [Hash] params
    #   See {Types::ImportAsProvisionedProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @option params [String] :provisioned_product_name
    #   <p>The user-friendly name of the provisioned product. The value must be unique for the AWS
    #            account. The name cannot be updated after the product is provisioned. </p>
    #
    # @option params [String] :physical_id
    #   <p>The unique identifier of the resource to be imported. It only currently supports
    #            CloudFormation stack IDs.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    # @return [Types::ImportAsProvisionedProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_as_provisioned_product(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     provisioned_product_name: 'ProvisionedProductName', # required
    #     physical_id: 'PhysicalId', # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportAsProvisionedProductOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def import_as_provisioned_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportAsProvisionedProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportAsProvisionedProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportAsProvisionedProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::InvalidStateException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ImportAsProvisionedProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportAsProvisionedProduct,
        stubs: @stubs,
        params_class: Params::ImportAsProvisionedProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_as_provisioned_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all imported portfolios for which account-to-account shares were accepted by
    #          this account. By specifying the <code>PortfolioShareType</code>, you can list portfolios for which
    #          organizational shares were accepted by this account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAcceptedPortfolioSharesInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to list. The default is to list imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - List portfolios accepted and shared via organizational sharing by the management account or delegated administrator of your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Deprecated type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - List imported portfolios that have been accepted and
    #                  shared through account-to-account sharing.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListAcceptedPortfolioSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accepted_portfolio_shares(
    #     accept_language: 'AcceptLanguage',
    #     page_token: 'PageToken',
    #     page_size: 1,
    #     portfolio_share_type: 'IMPORTED' # accepts ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAcceptedPortfolioSharesOutput
    #   resp.data.portfolio_details #=> Array<PortfolioDetail>
    #   resp.data.portfolio_details[0] #=> Types::PortfolioDetail
    #   resp.data.portfolio_details[0].id #=> String
    #   resp.data.portfolio_details[0].arn #=> String
    #   resp.data.portfolio_details[0].display_name #=> String
    #   resp.data.portfolio_details[0].description #=> String
    #   resp.data.portfolio_details[0].created_time #=> Time
    #   resp.data.portfolio_details[0].provider_name #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_accepted_portfolio_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAcceptedPortfolioSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAcceptedPortfolioSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAcceptedPortfolioShares
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::OperationNotSupportedException]),
        data_parser: Parsers::ListAcceptedPortfolioShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAcceptedPortfolioShares,
        stubs: @stubs,
        params_class: Params::ListAcceptedPortfolioSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accepted_portfolio_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the budgets associated to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBudgetsForResourceInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListBudgetsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_budgets_for_resource(
    #     accept_language: 'AcceptLanguage',
    #     resource_id: 'ResourceId', # required
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBudgetsForResourceOutput
    #   resp.data.budgets #=> Array<BudgetDetail>
    #   resp.data.budgets[0] #=> Types::BudgetDetail
    #   resp.data.budgets[0].budget_name #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_budgets_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBudgetsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBudgetsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBudgetsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListBudgetsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBudgetsForResource,
        stubs: @stubs,
        params_class: Params::ListBudgetsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_budgets_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the constraints for the specified portfolio and product.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConstraintsForPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListConstraintsForPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_constraints_for_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     product_id: 'ProductId',
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConstraintsForPortfolioOutput
    #   resp.data.constraint_details #=> Array<ConstraintDetail>
    #   resp.data.constraint_details[0] #=> Types::ConstraintDetail
    #   resp.data.constraint_details[0].constraint_id #=> String
    #   resp.data.constraint_details[0].type #=> String
    #   resp.data.constraint_details[0].description #=> String
    #   resp.data.constraint_details[0].owner #=> String
    #   resp.data.constraint_details[0].product_id #=> String
    #   resp.data.constraint_details[0].portfolio_id #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_constraints_for_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConstraintsForPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConstraintsForPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConstraintsForPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListConstraintsForPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConstraintsForPortfolio,
        stubs: @stubs,
        params_class: Params::ListConstraintsForPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_constraints_for_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the paths to the specified product. A path is how the user
    #          has access to a specified product, and is necessary when provisioning a product. A path
    #          also determines the constraints put on the product.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLaunchPathsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListLaunchPathsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_paths(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLaunchPathsOutput
    #   resp.data.launch_path_summaries #=> Array<LaunchPathSummary>
    #   resp.data.launch_path_summaries[0] #=> Types::LaunchPathSummary
    #   resp.data.launch_path_summaries[0].id #=> String
    #   resp.data.launch_path_summaries[0].constraint_summaries #=> Array<ConstraintSummary>
    #   resp.data.launch_path_summaries[0].constraint_summaries[0] #=> Types::ConstraintSummary
    #   resp.data.launch_path_summaries[0].constraint_summaries[0].type #=> String
    #   resp.data.launch_path_summaries[0].constraint_summaries[0].description #=> String
    #   resp.data.launch_path_summaries[0].tags #=> Array<Tag>
    #   resp.data.launch_path_summaries[0].tags[0] #=> Types::Tag
    #   resp.data.launch_path_summaries[0].tags[0].key #=> String
    #   resp.data.launch_path_summaries[0].tags[0].value #=> String
    #   resp.data.launch_path_summaries[0].name #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_launch_paths(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLaunchPathsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLaunchPathsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLaunchPaths
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListLaunchPaths
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLaunchPaths,
        stubs: @stubs,
        params_class: Params::ListLaunchPathsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_launch_paths
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the organization nodes that have access to the specified portfolio. This API can
    #          only be called by the management account in the organization or by a delegated
    #          admin.</p>
    #          <p>If a delegated admin is de-registered, they can no longer perform this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationPortfolioAccessInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>
    #
    # @option params [String] :organization_node_type
    #   <p>The organization node type that will be returned in the output.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::ListOrganizationPortfolioAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_portfolio_access(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     organization_node_type: 'ORGANIZATION', # required - accepts ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationPortfolioAccessOutput
    #   resp.data.organization_nodes #=> Array<OrganizationNode>
    #   resp.data.organization_nodes[0] #=> Types::OrganizationNode
    #   resp.data.organization_nodes[0].type #=> String, one of ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #   resp.data.organization_nodes[0].value #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_organization_portfolio_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationPortfolioAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationPortfolioAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationPortfolioAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListOrganizationPortfolioAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationPortfolioAccess,
        stubs: @stubs,
        params_class: Params::ListOrganizationPortfolioAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_portfolio_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the account IDs that have access to the specified portfolio.</p>
    #          <p>A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPortfolioAccessInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :organization_parent_id
    #   <p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::ListPortfolioAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolio_access(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     organization_parent_id: 'OrganizationParentId',
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPortfolioAccessOutput
    #   resp.data.account_ids #=> Array<String>
    #   resp.data.account_ids[0] #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_portfolio_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPortfolioAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPortfolioAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPortfolioAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPortfolioAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPortfolioAccess,
        stubs: @stubs,
        params_class: Params::ListPortfolioAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_portfolio_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all portfolios in the catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPortfoliosInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::ListPortfoliosOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios(
    #     accept_language: 'AcceptLanguage',
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPortfoliosOutput
    #   resp.data.portfolio_details #=> Array<PortfolioDetail>
    #   resp.data.portfolio_details[0] #=> Types::PortfolioDetail
    #   resp.data.portfolio_details[0].id #=> String
    #   resp.data.portfolio_details[0].arn #=> String
    #   resp.data.portfolio_details[0].display_name #=> String
    #   resp.data.portfolio_details[0].description #=> String
    #   resp.data.portfolio_details[0].created_time #=> Time
    #   resp.data.portfolio_details[0].provider_name #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_portfolios(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPortfoliosInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPortfoliosInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPortfolios
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::ListPortfolios
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPortfolios,
        stubs: @stubs,
        params_class: Params::ListPortfoliosOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_portfolios
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all portfolios that the specified product is associated with.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPortfoliosForProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::ListPortfoliosForProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios_for_product(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPortfoliosForProductOutput
    #   resp.data.portfolio_details #=> Array<PortfolioDetail>
    #   resp.data.portfolio_details[0] #=> Types::PortfolioDetail
    #   resp.data.portfolio_details[0].id #=> String
    #   resp.data.portfolio_details[0].arn #=> String
    #   resp.data.portfolio_details[0].display_name #=> String
    #   resp.data.portfolio_details[0].description #=> String
    #   resp.data.portfolio_details[0].created_time #=> Time
    #   resp.data.portfolio_details[0].provider_name #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_portfolios_for_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPortfoliosForProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPortfoliosForProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPortfoliosForProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPortfoliosForProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPortfoliosForProduct,
        stubs: @stubs,
        params_class: Params::ListPortfoliosForProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_portfolios_for_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all principal ARNs associated with the specified portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPrincipalsForPortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListPrincipalsForPortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals_for_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPrincipalsForPortfolioOutput
    #   resp.data.principals #=> Array<Principal>
    #   resp.data.principals[0] #=> Types::Principal
    #   resp.data.principals[0].principal_arn #=> String
    #   resp.data.principals[0].principal_type #=> String, one of ["IAM"]
    #   resp.data.next_page_token #=> String
    #
    def list_principals_for_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPrincipalsForPortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPrincipalsForPortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrincipalsForPortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPrincipalsForPortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrincipalsForPortfolio,
        stubs: @stubs,
        params_class: Params::ListPrincipalsForPortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_principals_for_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the plans for the specified provisioned product or all plans to which the user has access.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisionedProductPlansInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provision_product_id
    #   <p>The product identifier.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    # @return [Types::ListProvisionedProductPlansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_product_plans(
    #     accept_language: 'AcceptLanguage',
    #     provision_product_id: 'ProvisionProductId',
    #     page_size: 1,
    #     page_token: 'PageToken',
    #     access_level_filter: {
    #       key: 'Account', # accepts ["Account", "Role", "User"]
    #       value: 'Value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisionedProductPlansOutput
    #   resp.data.provisioned_product_plans #=> Array<ProvisionedProductPlanSummary>
    #   resp.data.provisioned_product_plans[0] #=> Types::ProvisionedProductPlanSummary
    #   resp.data.provisioned_product_plans[0].plan_name #=> String
    #   resp.data.provisioned_product_plans[0].plan_id #=> String
    #   resp.data.provisioned_product_plans[0].provision_product_id #=> String
    #   resp.data.provisioned_product_plans[0].provision_product_name #=> String
    #   resp.data.provisioned_product_plans[0].plan_type #=> String, one of ["CLOUDFORMATION"]
    #   resp.data.provisioned_product_plans[0].provisioning_artifact_id #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_provisioned_product_plans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisionedProductPlansInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisionedProductPlansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisionedProductPlans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListProvisionedProductPlans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisionedProductPlans,
        stubs: @stubs,
        params_class: Params::ListProvisionedProductPlansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioned_product_plans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all provisioning artifacts (also known as versions) for the specified product.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisioningArtifactsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @return [Types::ListProvisioningArtifactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_artifacts(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisioningArtifactsOutput
    #   resp.data.provisioning_artifact_details #=> Array<ProvisioningArtifactDetail>
    #   resp.data.provisioning_artifact_details[0] #=> Types::ProvisioningArtifactDetail
    #   resp.data.provisioning_artifact_details[0].id #=> String
    #   resp.data.provisioning_artifact_details[0].name #=> String
    #   resp.data.provisioning_artifact_details[0].description #=> String
    #   resp.data.provisioning_artifact_details[0].type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #   resp.data.provisioning_artifact_details[0].created_time #=> Time
    #   resp.data.provisioning_artifact_details[0].active #=> Boolean
    #   resp.data.provisioning_artifact_details[0].guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.next_page_token #=> String
    #
    def list_provisioning_artifacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisioningArtifactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisioningArtifactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisioningArtifacts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListProvisioningArtifacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisioningArtifacts,
        stubs: @stubs,
        params_class: Params::ListProvisioningArtifactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioning_artifacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all provisioning artifacts (also known as versions) for the specified self-service action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisioningArtifactsForServiceActionInput}.
    #
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListProvisioningArtifactsForServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_artifacts_for_service_action(
    #     service_action_id: 'ServiceActionId', # required
    #     page_size: 1,
    #     page_token: 'PageToken',
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProvisioningArtifactsForServiceActionOutput
    #   resp.data.provisioning_artifact_views #=> Array<ProvisioningArtifactView>
    #   resp.data.provisioning_artifact_views[0] #=> Types::ProvisioningArtifactView
    #   resp.data.provisioning_artifact_views[0].product_view_summary #=> Types::ProductViewSummary
    #   resp.data.provisioning_artifact_views[0].product_view_summary.id #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.product_id #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.name #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.owner #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.short_description #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.provisioning_artifact_views[0].product_view_summary.distributor #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.has_default_path #=> Boolean
    #   resp.data.provisioning_artifact_views[0].product_view_summary.support_email #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.support_description #=> String
    #   resp.data.provisioning_artifact_views[0].product_view_summary.support_url #=> String
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact #=> Types::ProvisioningArtifact
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact.id #=> String
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact.name #=> String
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact.description #=> String
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact.created_time #=> Time
    #   resp.data.provisioning_artifact_views[0].provisioning_artifact.guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.next_page_token #=> String
    #
    def list_provisioning_artifacts_for_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisioningArtifactsForServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisioningArtifactsForServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisioningArtifactsForServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListProvisioningArtifactsForServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisioningArtifactsForServiceAction,
        stubs: @stubs,
        params_class: Params::ListProvisioningArtifactsForServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioning_artifacts_for_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified requests or all performed requests.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecordHistoryInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    # @option params [ListRecordHistorySearchFilter] :search_filter
    #   <p>The search filter to scope the results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListRecordHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_record_history(
    #     accept_language: 'AcceptLanguage',
    #     access_level_filter: {
    #       key: 'Account', # accepts ["Account", "Role", "User"]
    #       value: 'Value'
    #     },
    #     search_filter: {
    #       key: 'Key',
    #       value: 'Value'
    #     },
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecordHistoryOutput
    #   resp.data.record_details #=> Array<RecordDetail>
    #   resp.data.record_details[0] #=> Types::RecordDetail
    #   resp.data.record_details[0].record_id #=> String
    #   resp.data.record_details[0].provisioned_product_name #=> String
    #   resp.data.record_details[0].status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_details[0].created_time #=> Time
    #   resp.data.record_details[0].updated_time #=> Time
    #   resp.data.record_details[0].provisioned_product_type #=> String
    #   resp.data.record_details[0].record_type #=> String
    #   resp.data.record_details[0].provisioned_product_id #=> String
    #   resp.data.record_details[0].product_id #=> String
    #   resp.data.record_details[0].provisioning_artifact_id #=> String
    #   resp.data.record_details[0].path_id #=> String
    #   resp.data.record_details[0].record_errors #=> Array<RecordError>
    #   resp.data.record_details[0].record_errors[0] #=> Types::RecordError
    #   resp.data.record_details[0].record_errors[0].code #=> String
    #   resp.data.record_details[0].record_errors[0].description #=> String
    #   resp.data.record_details[0].record_tags #=> Array<RecordTag>
    #   resp.data.record_details[0].record_tags[0] #=> Types::RecordTag
    #   resp.data.record_details[0].record_tags[0].key #=> String
    #   resp.data.record_details[0].record_tags[0].value #=> String
    #   resp.data.record_details[0].launch_role_arn #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_record_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecordHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecordHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecordHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::ListRecordHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecordHistory,
        stubs: @stubs,
        params_class: Params::ListRecordHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_record_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resources associated with the specified TagOption.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesForTagOptionInput}.
    #
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Portfolio</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Product</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListResourcesForTagOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_tag_option(
    #     tag_option_id: 'TagOptionId', # required
    #     resource_type: 'ResourceType',
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesForTagOptionOutput
    #   resp.data.resource_details #=> Array<ResourceDetail>
    #   resp.data.resource_details[0] #=> Types::ResourceDetail
    #   resp.data.resource_details[0].id #=> String
    #   resp.data.resource_details[0].arn #=> String
    #   resp.data.resource_details[0].name #=> String
    #   resp.data.resource_details[0].description #=> String
    #   resp.data.resource_details[0].created_time #=> Time
    #   resp.data.page_token #=> String
    #
    def list_resources_for_tag_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesForTagOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesForTagOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourcesForTagOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::ListResourcesForTagOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourcesForTagOption,
        stubs: @stubs,
        params_class: Params::ListResourcesForTagOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources_for_tag_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all self-service actions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceActionsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListServiceActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_actions(
    #     accept_language: 'AcceptLanguage',
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceActionsOutput
    #   resp.data.service_action_summaries #=> Array<ServiceActionSummary>
    #   resp.data.service_action_summaries[0] #=> Types::ServiceActionSummary
    #   resp.data.service_action_summaries[0].id #=> String
    #   resp.data.service_action_summaries[0].name #=> String
    #   resp.data.service_action_summaries[0].description #=> String
    #   resp.data.service_action_summaries[0].definition_type #=> String, one of ["SSM_AUTOMATION"]
    #   resp.data.next_page_token #=> String
    #
    def list_service_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::ListServiceActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceActions,
        stubs: @stubs,
        params_class: Params::ListServiceActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceActionsForProvisioningArtifactInput}.
    #
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListServiceActionsForProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_actions_for_provisioning_artifact(
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     page_size: 1,
    #     page_token: 'PageToken',
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceActionsForProvisioningArtifactOutput
    #   resp.data.service_action_summaries #=> Array<ServiceActionSummary>
    #   resp.data.service_action_summaries[0] #=> Types::ServiceActionSummary
    #   resp.data.service_action_summaries[0].id #=> String
    #   resp.data.service_action_summaries[0].name #=> String
    #   resp.data.service_action_summaries[0].description #=> String
    #   resp.data.service_action_summaries[0].definition_type #=> String, one of ["SSM_AUTOMATION"]
    #   resp.data.next_page_token #=> String
    #
    def list_service_actions_for_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceActionsForProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceActionsForProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceActionsForProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListServiceActionsForProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceActionsForProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::ListServiceActionsForProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_actions_for_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about stack instances that are associated with the specified <code>CFN_STACKSET</code> type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStackInstancesForProvisionedProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::ListStackInstancesForProvisionedProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances_for_provisioned_product(
    #     accept_language: 'AcceptLanguage',
    #     provisioned_product_id: 'ProvisionedProductId', # required
    #     page_token: 'PageToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackInstancesForProvisionedProductOutput
    #   resp.data.stack_instances #=> Array<StackInstance>
    #   resp.data.stack_instances[0] #=> Types::StackInstance
    #   resp.data.stack_instances[0].account #=> String
    #   resp.data.stack_instances[0].region #=> String
    #   resp.data.stack_instances[0].stack_instance_status #=> String, one of ["CURRENT", "OUTDATED", "INOPERABLE"]
    #   resp.data.next_page_token #=> String
    #
    def list_stack_instances_for_provisioned_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackInstancesForProvisionedProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackInstancesForProvisionedProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackInstancesForProvisionedProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListStackInstancesForProvisionedProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackInstancesForProvisionedProduct,
        stubs: @stubs,
        params_class: Params::ListStackInstancesForProvisionedProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_instances_for_provisioned_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified TagOptions or all TagOptions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagOptionsInput}.
    #
    # @option params [ListTagOptionsFilters] :filters
    #   <p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ListTagOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tag_options(
    #     filters: {
    #       key: 'Key',
    #       value: 'Value',
    #       active: false
    #     },
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagOptionsOutput
    #   resp.data.tag_option_details #=> Array<TagOptionDetail>
    #   resp.data.tag_option_details[0] #=> Types::TagOptionDetail
    #   resp.data.tag_option_details[0].key #=> String
    #   resp.data.tag_option_details[0].value #=> String
    #   resp.data.tag_option_details[0].active #=> Boolean
    #   resp.data.tag_option_details[0].id #=> String
    #   resp.data.tag_option_details[0].owner #=> String
    #   resp.data.page_token #=> String
    #
    def list_tag_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::ListTagOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagOptions,
        stubs: @stubs,
        params_class: Params::ListTagOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tag_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions the specified product.</p>
    #          <p>A provisioned product is a resourced instance of a product.
    #          For example, provisioning a product based on a CloudFormation template launches a
    #          CloudFormation stack and its underlying resources.
    #          You can check the status of this request using <a>DescribeRecord</a>.</p>
    #          <p>If the request contains a tag key with an empty list of values, there is a
    #          tag conflict for that key. Do not include conflicted keys as tags, or this causes
    #          the error "Parameter validation failed: Missing required parameter in
    #          Tags[<i>N</i>]:<i>Value</i>".</p>
    #
    # @param [Hash] params
    #   See {Types::ProvisionProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the AWS account and cannot be updated after the product is provisioned.</p>
    #
    # @option params [Array<ProvisioningParameter>] :provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #
    # @option params [ProvisioningPreferences] :provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #
    # @option params [Array<String>] :notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #
    # @option params [String] :provision_token
    #   <p>An idempotency token that uniquely identifies the provisioning request.</p>
    #
    # @return [Types::ProvisionProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_product(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId',
    #     product_name: 'ProductName',
    #     provisioning_artifact_id: 'ProvisioningArtifactId',
    #     provisioning_artifact_name: 'ProvisioningArtifactName',
    #     path_id: 'PathId',
    #     path_name: 'PathName',
    #     provisioned_product_name: 'ProvisionedProductName', # required
    #     provisioning_parameters: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: [
    #         'member'
    #       ],
    #       stack_set_regions: [
    #         'member'
    #       ],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     notification_arns: [
    #       'member'
    #     ],
    #     provision_token: 'ProvisionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ProvisionProductOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def provision_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ProvisionProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ProvisionProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ProvisionProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ProvisionProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ProvisionProduct,
        stubs: @stubs,
        params_class: Params::ProvisionProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :provision_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects an offer to share the specified portfolio.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectPortfolioShareInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Reject imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #
    # @return [Types::RejectPortfolioShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_portfolio_share(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     portfolio_share_type: 'IMPORTED' # accepts ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectPortfolioShareOutput
    #
    def reject_portfolio_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectPortfolioShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectPortfolioShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectPortfolioShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::RejectPortfolioShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectPortfolioShare,
        stubs: @stubs,
        params_class: Params::RejectPortfolioShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_portfolio_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the provisioned products that are available (not terminated).</p>
    #          <p>To use additional filtering, see <a>SearchProvisionedProducts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ScanProvisionedProductsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::ScanProvisionedProductsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.scan_provisioned_products(
    #     accept_language: 'AcceptLanguage',
    #     access_level_filter: {
    #       key: 'Account', # accepts ["Account", "Role", "User"]
    #       value: 'Value'
    #     },
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ScanProvisionedProductsOutput
    #   resp.data.provisioned_products #=> Array<ProvisionedProductDetail>
    #   resp.data.provisioned_products[0] #=> Types::ProvisionedProductDetail
    #   resp.data.provisioned_products[0].name #=> String
    #   resp.data.provisioned_products[0].arn #=> String
    #   resp.data.provisioned_products[0].type #=> String
    #   resp.data.provisioned_products[0].id #=> String
    #   resp.data.provisioned_products[0].status #=> String, one of ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"]
    #   resp.data.provisioned_products[0].status_message #=> String
    #   resp.data.provisioned_products[0].created_time #=> Time
    #   resp.data.provisioned_products[0].idempotency_token #=> String
    #   resp.data.provisioned_products[0].last_record_id #=> String
    #   resp.data.provisioned_products[0].last_provisioning_record_id #=> String
    #   resp.data.provisioned_products[0].last_successful_provisioning_record_id #=> String
    #   resp.data.provisioned_products[0].product_id #=> String
    #   resp.data.provisioned_products[0].provisioning_artifact_id #=> String
    #   resp.data.provisioned_products[0].launch_role_arn #=> String
    #   resp.data.next_page_token #=> String
    #
    def scan_provisioned_products(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ScanProvisionedProductsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ScanProvisionedProductsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ScanProvisionedProducts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::ScanProvisionedProducts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ScanProvisionedProducts,
        stubs: @stubs,
        params_class: Params::ScanProvisionedProductsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :scan_provisioned_products
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the products to which the caller has access.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchProductsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters. If no search filters are specified, the output includes
    #            all products to which the caller has access.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::SearchProductsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products(
    #     accept_language: 'AcceptLanguage',
    #     filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     page_size: 1,
    #     sort_by: 'Title', # accepts ["Title", "VersionCount", "CreationDate"]
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchProductsOutput
    #   resp.data.product_view_summaries #=> Array<ProductViewSummary>
    #   resp.data.product_view_summaries[0] #=> Types::ProductViewSummary
    #   resp.data.product_view_summaries[0].id #=> String
    #   resp.data.product_view_summaries[0].product_id #=> String
    #   resp.data.product_view_summaries[0].name #=> String
    #   resp.data.product_view_summaries[0].owner #=> String
    #   resp.data.product_view_summaries[0].short_description #=> String
    #   resp.data.product_view_summaries[0].type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_summaries[0].distributor #=> String
    #   resp.data.product_view_summaries[0].has_default_path #=> Boolean
    #   resp.data.product_view_summaries[0].support_email #=> String
    #   resp.data.product_view_summaries[0].support_description #=> String
    #   resp.data.product_view_summaries[0].support_url #=> String
    #   resp.data.product_view_aggregations #=> Hash<String, Array<ProductViewAggregationValue>>
    #   resp.data.product_view_aggregations['key'] #=> Array<ProductViewAggregationValue>
    #   resp.data.product_view_aggregations['key'][0] #=> Types::ProductViewAggregationValue
    #   resp.data.product_view_aggregations['key'][0].value #=> String
    #   resp.data.product_view_aggregations['key'][0].approximate_count #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def search_products(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchProductsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchProductsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchProducts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::SearchProducts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchProducts,
        stubs: @stubs,
        params_class: Params::SearchProductsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_products
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the products for the specified portfolio or all products.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchProductsAsAdminInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters. If no search filters are specified, the output includes all products
    #            to which the administrator has access.</p>
    #
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :product_source
    #   <p>Access level of the source of the product.</p>
    #
    # @return [Types::SearchProductsAsAdminOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products_as_admin(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId',
    #     filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     sort_by: 'Title', # accepts ["Title", "VersionCount", "CreationDate"]
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     page_token: 'PageToken',
    #     page_size: 1,
    #     product_source: 'ACCOUNT' # accepts ["ACCOUNT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchProductsAsAdminOutput
    #   resp.data.product_view_details #=> Array<ProductViewDetail>
    #   resp.data.product_view_details[0] #=> Types::ProductViewDetail
    #   resp.data.product_view_details[0].product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_details[0].product_view_summary.id #=> String
    #   resp.data.product_view_details[0].product_view_summary.product_id #=> String
    #   resp.data.product_view_details[0].product_view_summary.name #=> String
    #   resp.data.product_view_details[0].product_view_summary.owner #=> String
    #   resp.data.product_view_details[0].product_view_summary.short_description #=> String
    #   resp.data.product_view_details[0].product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_details[0].product_view_summary.distributor #=> String
    #   resp.data.product_view_details[0].product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_details[0].product_view_summary.support_email #=> String
    #   resp.data.product_view_details[0].product_view_summary.support_description #=> String
    #   resp.data.product_view_details[0].product_view_summary.support_url #=> String
    #   resp.data.product_view_details[0].status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #   resp.data.product_view_details[0].product_arn #=> String
    #   resp.data.product_view_details[0].created_time #=> Time
    #   resp.data.next_page_token #=> String
    #
    def search_products_as_admin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchProductsAsAdminInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchProductsAsAdminInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchProductsAsAdmin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::SearchProductsAsAdmin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchProductsAsAdmin,
        stubs: @stubs,
        params_class: Params::SearchProductsAsAdminOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_products_as_admin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the provisioned products that meet the specified criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchProvisionedProductsInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters.</p>
    #            <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>,
    #            <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,
    #            <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>,
    #            <code>provisioningArtifact</code>, <code>type</code>, <code>status</code>,
    #            <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>,
    #            <code>productName</code>, and <code>provisioningArtifactName</code>.</p>
    #            <p>Example: <code>"SearchQuery":["status:AVAILABLE"]</code>
    #            </p>
    #
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>,
    #            and <code>lastRecordId</code>.</p>
    #
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    # @return [Types::SearchProvisionedProductsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_provisioned_products(
    #     accept_language: 'AcceptLanguage',
    #     access_level_filter: {
    #       key: 'Account', # accepts ["Account", "Role", "User"]
    #       value: 'Value'
    #     },
    #     filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     sort_by: 'SortBy',
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     page_size: 1,
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchProvisionedProductsOutput
    #   resp.data.provisioned_products #=> Array<ProvisionedProductAttribute>
    #   resp.data.provisioned_products[0] #=> Types::ProvisionedProductAttribute
    #   resp.data.provisioned_products[0].name #=> String
    #   resp.data.provisioned_products[0].arn #=> String
    #   resp.data.provisioned_products[0].type #=> String
    #   resp.data.provisioned_products[0].id #=> String
    #   resp.data.provisioned_products[0].status #=> String, one of ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"]
    #   resp.data.provisioned_products[0].status_message #=> String
    #   resp.data.provisioned_products[0].created_time #=> Time
    #   resp.data.provisioned_products[0].idempotency_token #=> String
    #   resp.data.provisioned_products[0].last_record_id #=> String
    #   resp.data.provisioned_products[0].last_provisioning_record_id #=> String
    #   resp.data.provisioned_products[0].last_successful_provisioning_record_id #=> String
    #   resp.data.provisioned_products[0].tags #=> Array<Tag>
    #   resp.data.provisioned_products[0].tags[0] #=> Types::Tag
    #   resp.data.provisioned_products[0].tags[0].key #=> String
    #   resp.data.provisioned_products[0].tags[0].value #=> String
    #   resp.data.provisioned_products[0].physical_id #=> String
    #   resp.data.provisioned_products[0].product_id #=> String
    #   resp.data.provisioned_products[0].product_name #=> String
    #   resp.data.provisioned_products[0].provisioning_artifact_id #=> String
    #   resp.data.provisioned_products[0].provisioning_artifact_name #=> String
    #   resp.data.provisioned_products[0].user_arn #=> String
    #   resp.data.provisioned_products[0].user_arn_session #=> String
    #   resp.data.total_results_count #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def search_provisioned_products(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchProvisionedProductsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchProvisionedProductsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchProvisionedProducts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException]),
        data_parser: Parsers::SearchProvisionedProducts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchProvisionedProducts,
        stubs: @stubs,
        params_class: Params::SearchProvisionedProductsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_provisioned_products
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Terminates the specified provisioned product.</p>
    #          <p>This operation does not delete any records associated with the provisioned product.</p>
    #          <p>You can check the status of this request using <a>DescribeRecord</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateProvisionedProductInput}.
    #
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    # @option params [String] :terminate_token
    #   <p>An idempotency token that uniquely identifies the termination request. This token is
    #            only valid during the termination process. After the provisioned product is terminated,
    #            subsequent requests to terminate the same provisioned product always return
    #            <b>ResourceNotFound</b>.</p>
    #
    # @option params [Boolean] :ignore_errors
    #   <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :retain_physical_resources
    #   <p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes
    #            the Service Catalog provisioned product. However, it does not remove the CloudFormation
    #            stack, stack set, or the underlying resources of the deleted provisioned product. The
    #            default value is false.</p>
    #
    # @return [Types::TerminateProvisionedProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_provisioned_product(
    #     provisioned_product_name: 'ProvisionedProductName',
    #     provisioned_product_id: 'ProvisionedProductId',
    #     terminate_token: 'TerminateToken', # required
    #     ignore_errors: false,
    #     accept_language: 'AcceptLanguage',
    #     retain_physical_resources: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateProvisionedProductOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def terminate_provisioned_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateProvisionedProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateProvisionedProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateProvisionedProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::TerminateProvisionedProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateProvisionedProduct,
        stubs: @stubs,
        params_class: Params::TerminateProvisionedProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_provisioned_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified constraint.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConstraintInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the constraint.</p>
    #
    # @option params [String] :parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be
    #                     account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #
    # @return [Types::UpdateConstraintOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_constraint(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id', # required
    #     description: 'Description',
    #     parameters: 'Parameters'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConstraintOutput
    #   resp.data.constraint_detail #=> Types::ConstraintDetail
    #   resp.data.constraint_detail.constraint_id #=> String
    #   resp.data.constraint_detail.type #=> String
    #   resp.data.constraint_detail.description #=> String
    #   resp.data.constraint_detail.owner #=> String
    #   resp.data.constraint_detail.product_id #=> String
    #   resp.data.constraint_detail.portfolio_id #=> String
    #   resp.data.constraint_parameters #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def update_constraint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConstraintInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConstraintInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConstraint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateConstraint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConstraint,
        stubs: @stubs,
        params_class: Params::UpdateConstraintOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_constraint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified portfolio.</p>
    #          <p>You cannot update a product that was shared with you.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePortfolioInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    #
    # @option params [String] :display_name
    #   <p>The name to use for display purposes.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the portfolio.</p>
    #
    # @option params [String] :provider_name
    #   <p>The updated name of the portfolio provider.</p>
    #
    # @option params [Array<Tag>] :add_tags
    #   <p>The tags to add.</p>
    #
    # @option params [Array<String>] :remove_tags
    #   <p>The tags to remove.</p>
    #
    # @return [Types::UpdatePortfolioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portfolio(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id', # required
    #     display_name: 'DisplayName',
    #     description: 'Description',
    #     provider_name: 'ProviderName',
    #     add_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     remove_tags: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePortfolioOutput
    #   resp.data.portfolio_detail #=> Types::PortfolioDetail
    #   resp.data.portfolio_detail.id #=> String
    #   resp.data.portfolio_detail.arn #=> String
    #   resp.data.portfolio_detail.display_name #=> String
    #   resp.data.portfolio_detail.description #=> String
    #   resp.data.portfolio_detail.created_time #=> Time
    #   resp.data.portfolio_detail.provider_name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def update_portfolio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePortfolioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePortfolioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePortfolio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::UpdatePortfolio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePortfolio,
        stubs: @stubs,
        params_class: Params::UpdatePortfolioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_portfolio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified portfolio share. You can use this API to enable or disable TagOptions sharing for an existing portfolio share. </p>
    #
    #          <p>The portfolio share cannot be updated if the <code> CreatePortfolioShare</code> operation is <code>IN_PROGRESS</code>, as the share is not available to recipient entities. In this case, you must wait for the portfolio share to be COMPLETED.</p>
    #
    #          <p>You must provide the <code>accountId</code> or organization node in the input, but not both.</p>
    #
    #          <p>If the portfolio is shared to both an external account and an organization node, and both shares need to be updated, you must invoke <code>UpdatePortfolioShare</code> separately for each share type. </p>
    #
    #          <p>This API cannot be used for removing the portfolio share. You must use <code>DeletePortfolioShare</code> API for that action. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePortfolioShareInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :portfolio_id
    #   <p>The unique identifier of the portfolio for which the share will be updated.</p>
    #
    # @option params [String] :account_id
    #   <p>The AWS Account Id of the recipient account. This field is required when updating an external account to account type share.</p>
    #
    # @option params [OrganizationNode] :organization_node
    #   <p>Information about the organization node.</p>
    #
    # @option params [Boolean] :share_tag_options
    #   <p>A flag to enable or disable TagOptions sharing for the portfolio share. If this field is not provided, the current state of TagOptions sharing on the portfolio share will not be modified.</p>
    #
    # @return [Types::UpdatePortfolioShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portfolio_share(
    #     accept_language: 'AcceptLanguage',
    #     portfolio_id: 'PortfolioId', # required
    #     account_id: 'AccountId',
    #     organization_node: {
    #       type: 'ORGANIZATION', # accepts ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #       value: 'Value'
    #     },
    #     share_tag_options: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePortfolioShareOutput
    #   resp.data.portfolio_share_token #=> String
    #   resp.data.status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"]
    #
    def update_portfolio_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePortfolioShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePortfolioShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePortfolioShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::OperationNotSupportedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdatePortfolioShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePortfolioShare,
        stubs: @stubs,
        params_class: Params::UpdatePortfolioShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_portfolio_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified product.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :name
    #   <p>The updated product name.</p>
    #
    # @option params [String] :owner
    #   <p>The updated owner of the product.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the product.</p>
    #
    # @option params [String] :distributor
    #   <p>The updated distributor of the product.</p>
    #
    # @option params [String] :support_description
    #   <p>The updated support description for the product.</p>
    #
    # @option params [String] :support_email
    #   <p>The updated support email for the product.</p>
    #
    # @option params [String] :support_url
    #   <p>The updated support URL for the product.</p>
    #
    # @option params [Array<Tag>] :add_tags
    #   <p>The tags to add to the product.</p>
    #
    # @option params [Array<String>] :remove_tags
    #   <p>The tags to remove from the product.</p>
    #
    # @return [Types::UpdateProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product(
    #     accept_language: 'AcceptLanguage',
    #     id: 'Id', # required
    #     name: 'Name',
    #     owner: 'Owner',
    #     description: 'Description',
    #     distributor: 'Distributor',
    #     support_description: 'SupportDescription',
    #     support_email: 'SupportEmail',
    #     support_url: 'SupportUrl',
    #     add_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     remove_tags: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProductOutput
    #   resp.data.product_view_detail #=> Types::ProductViewDetail
    #   resp.data.product_view_detail.product_view_summary #=> Types::ProductViewSummary
    #   resp.data.product_view_detail.product_view_summary.id #=> String
    #   resp.data.product_view_detail.product_view_summary.product_id #=> String
    #   resp.data.product_view_detail.product_view_summary.name #=> String
    #   resp.data.product_view_detail.product_view_summary.owner #=> String
    #   resp.data.product_view_detail.product_view_summary.short_description #=> String
    #   resp.data.product_view_detail.product_view_summary.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #   resp.data.product_view_detail.product_view_summary.distributor #=> String
    #   resp.data.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.data.product_view_detail.product_view_summary.support_email #=> String
    #   resp.data.product_view_detail.product_view_summary.support_description #=> String
    #   resp.data.product_view_detail.product_view_summary.support_url #=> String
    #   resp.data.product_view_detail.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #   resp.data.product_view_detail.product_arn #=> String
    #   resp.data.product_view_detail.created_time #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def update_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::UpdateProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProduct,
        stubs: @stubs,
        params_class: Params::UpdateProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests updates to the configuration of the specified provisioned product.</p>
    #          <p>If there are tags associated with the object, they cannot be updated or added.
    #          Depending on the specific updates requested, this operation can update with no
    #          interruption, with some interruption, or replace the provisioned product entirely.</p>
    #          <p>You can check the status of this request using <a>DescribeRecord</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProvisionedProductInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :product_id
    #   <p>The identifier of the product. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_id
    #   <p>The path identifier. This value is optional if the product
    #            has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>
    #
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    # @option params [Array<UpdateProvisioningParameter>] :provisioning_parameters
    #   <p>The new parameters.</p>
    #
    # @option params [UpdateProvisioningPreferences] :provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #
    # @option params [String] :update_token
    #   <p>The idempotency token that uniquely identifies the provisioning update request.</p>
    #
    # @return [Types::UpdateProvisionedProductOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_product(
    #     accept_language: 'AcceptLanguage',
    #     provisioned_product_name: 'ProvisionedProductName',
    #     provisioned_product_id: 'ProvisionedProductId',
    #     product_id: 'ProductId',
    #     product_name: 'ProductName',
    #     provisioning_artifact_id: 'ProvisioningArtifactId',
    #     provisioning_artifact_name: 'ProvisioningArtifactName',
    #     path_id: 'PathId',
    #     path_name: 'PathName',
    #     provisioning_parameters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         use_previous_value: false
    #       }
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: [
    #         'member'
    #       ],
    #       stack_set_regions: [
    #         'member'
    #       ],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1,
    #       stack_set_operation_type: 'CREATE' # accepts ["CREATE", "UPDATE", "DELETE"]
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     update_token: 'UpdateToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProvisionedProductOutput
    #   resp.data.record_detail #=> Types::RecordDetail
    #   resp.data.record_detail.record_id #=> String
    #   resp.data.record_detail.provisioned_product_name #=> String
    #   resp.data.record_detail.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   resp.data.record_detail.created_time #=> Time
    #   resp.data.record_detail.updated_time #=> Time
    #   resp.data.record_detail.provisioned_product_type #=> String
    #   resp.data.record_detail.record_type #=> String
    #   resp.data.record_detail.provisioned_product_id #=> String
    #   resp.data.record_detail.product_id #=> String
    #   resp.data.record_detail.provisioning_artifact_id #=> String
    #   resp.data.record_detail.path_id #=> String
    #   resp.data.record_detail.record_errors #=> Array<RecordError>
    #   resp.data.record_detail.record_errors[0] #=> Types::RecordError
    #   resp.data.record_detail.record_errors[0].code #=> String
    #   resp.data.record_detail.record_errors[0].description #=> String
    #   resp.data.record_detail.record_tags #=> Array<RecordTag>
    #   resp.data.record_detail.record_tags[0] #=> Types::RecordTag
    #   resp.data.record_detail.record_tags[0].key #=> String
    #   resp.data.record_detail.record_tags[0].value #=> String
    #   resp.data.record_detail.launch_role_arn #=> String
    #
    def update_provisioned_product(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProvisionedProductInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProvisionedProductInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProvisionedProduct
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateProvisionedProduct
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProvisionedProduct,
        stubs: @stubs,
        params_class: Params::UpdateProvisionedProductOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_provisioned_product
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests updates to the properties of the specified provisioned product.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProvisionedProductPropertiesInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    # @option params [Hash<String, String>] :provisioned_product_properties
    #   <p>A map that contains the provisioned product properties to be updated.</p>
    #            <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an
    #            administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch
    #            role that is associated with a provisioned product. This role is used when an end user
    #            calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,
    #               <code>TerminateProvisionedProduct</code>, or
    #               <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>
    #
    #            <p>The <code>OWNER</code> key accepts user ARNs and role ARNs. The owner is the user
    #            that has permission to see, update, terminate, and execute service actions in the
    #            provisioned product.</p>
    #            <p>The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and
    #            administrators can see ownership history of the provisioned product using the <code>ListRecordHistory</code> API. The new owner can
    #         describe all past records for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no longer use <code>DescribeRecord</code>,
    #         but can still see the product's history from when he was an owner using <code>ListRecordHistory</code>.</p>
    #            <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or
    #            Service Catalog console such as update, terminate, and execute service actions.
    #            If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through
    #            API or the Service Catalog console on that provisioned product.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>The idempotency token that uniquely identifies the provisioning product update request.</p>
    #
    # @return [Types::UpdateProvisionedProductPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_product_properties(
    #     accept_language: 'AcceptLanguage',
    #     provisioned_product_id: 'ProvisionedProductId', # required
    #     provisioned_product_properties: {
    #       'key' => 'value'
    #     }, # required
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProvisionedProductPropertiesOutput
    #   resp.data.provisioned_product_id #=> String
    #   resp.data.provisioned_product_properties #=> Hash<String, String>
    #   resp.data.provisioned_product_properties['key'] #=> String
    #   resp.data.record_id #=> String
    #   resp.data.status #=> String, one of ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #
    def update_provisioned_product_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProvisionedProductPropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProvisionedProductPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProvisionedProductProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::InvalidStateException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateProvisionedProductProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProvisionedProductProperties,
        stubs: @stubs,
        params_class: Params::UpdateProvisionedProductPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_provisioned_product_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot update a provisioning artifact for a product that was shared with you.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProvisioningArtifactInput}.
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    #
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the provisioning artifact.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the provisioning artifact.</p>
    #
    # @option params [Boolean] :active
    #   <p>Indicates whether the product version is active.</p>
    #            <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>
    #
    # @option params [String] :guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #            <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>
    #            <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform
    #             users that the product version is deprecated. Users are able to make updates to a provisioned product
    #             of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>
    #
    # @return [Types::UpdateProvisioningArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioning_artifact(
    #     accept_language: 'AcceptLanguage',
    #     product_id: 'ProductId', # required
    #     provisioning_artifact_id: 'ProvisioningArtifactId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     active: false,
    #     guidance: 'DEFAULT' # accepts ["DEFAULT", "DEPRECATED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProvisioningArtifactOutput
    #   resp.data.provisioning_artifact_detail #=> Types::ProvisioningArtifactDetail
    #   resp.data.provisioning_artifact_detail.id #=> String
    #   resp.data.provisioning_artifact_detail.name #=> String
    #   resp.data.provisioning_artifact_detail.description #=> String
    #   resp.data.provisioning_artifact_detail.type #=> String, one of ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #   resp.data.provisioning_artifact_detail.created_time #=> Time
    #   resp.data.provisioning_artifact_detail.active #=> Boolean
    #   resp.data.provisioning_artifact_detail.guidance #=> String, one of ["DEFAULT", "DEPRECATED"]
    #   resp.data.info #=> Hash<String, String>
    #   resp.data.info['key'] #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "FAILED"]
    #
    def update_provisioning_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProvisioningArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProvisioningArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProvisioningArtifact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateProvisioningArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProvisioningArtifact,
        stubs: @stubs,
        params_class: Params::UpdateProvisioningArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_provisioning_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a self-service action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceActionInput}.
    #
    # @option params [String] :id
    #   <p>The self-service action identifier.</p>
    #
    # @option params [String] :name
    #   <p>The self-service action name.</p>
    #
    # @option params [Hash<String, String>] :definition
    #   <p>A map that defines the self-service action.</p>
    #
    # @option params [String] :description
    #   <p>The self-service action description.</p>
    #
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateServiceActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_action(
    #     id: 'Id', # required
    #     name: 'Name',
    #     definition: {
    #       'key' => 'value'
    #     },
    #     description: 'Description',
    #     accept_language: 'AcceptLanguage'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceActionOutput
    #   resp.data.service_action_detail #=> Types::ServiceActionDetail
    #   resp.data.service_action_detail.service_action_summary #=> Types::ServiceActionSummary
    #   resp.data.service_action_detail.service_action_summary.id #=> String
    #   resp.data.service_action_detail.service_action_summary.name #=> String
    #   resp.data.service_action_detail.service_action_summary.description #=> String
    #   resp.data.service_action_detail.service_action_summary.definition_type #=> String, one of ["SSM_AUTOMATION"]
    #   resp.data.service_action_detail.definition #=> Hash<String, String>
    #   resp.data.service_action_detail.definition['key'] #=> String
    #
    def update_service_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParametersException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateServiceAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceAction,
        stubs: @stubs,
        params_class: Params::UpdateServiceActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified TagOption.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTagOptionInput}.
    #
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    #
    # @option params [String] :value
    #   <p>The updated value.</p>
    #
    # @option params [Boolean] :active
    #   <p>The updated active state.</p>
    #
    # @return [Types::UpdateTagOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tag_option(
    #     id: 'Id', # required
    #     value: 'Value',
    #     active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTagOptionOutput
    #   resp.data.tag_option_detail #=> Types::TagOptionDetail
    #   resp.data.tag_option_detail.key #=> String
    #   resp.data.tag_option_detail.value #=> String
    #   resp.data.tag_option_detail.active #=> Boolean
    #   resp.data.tag_option_detail.id #=> String
    #   resp.data.tag_option_detail.owner #=> String
    #
    def update_tag_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTagOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTagOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTagOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateResourceException, Errors::InvalidParametersException, Errors::ResourceNotFoundException, Errors::TagOptionNotMigratedException]),
        data_parser: Parsers::UpdateTagOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTagOption,
        stubs: @stubs,
        params_class: Params::UpdateTagOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_tag_option
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
