# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Route53Domains
  # An API client for Route53Domains_v20140515
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Route 53 API actions let you register domain names and perform related operations.</p>
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
    def initialize(config = AWS::SDK::Route53Domains::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts the transfer of a domain from another Amazon Web Services account to the
    # 				currentAmazon Web Services account. You initiate a transfer between Amazon Web Services accounts using <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.</p>
    # 		       <p>If you use the CLI command at <a href="https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html">accept-domain-transfer-from-another-aws-account</a>, use JSON format as input
    # 			instead of text because otherwise CLI will throw an error  from domain
    # 			transfer input that includes single quotes.</p>
    #
    # 		       <p>Use either
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			to determine whether the operation succeeded.
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			provides additional information, for example, <code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptDomainTransferFromAnotherAwsAccountInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account submitted a
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    # @option params [String] :password
    #   <p>The password that was returned by the
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    # @return [Types::AcceptDomainTransferFromAnotherAwsAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_domain_transfer_from_another_aws_account(
    #     domain_name: 'DomainName', # required
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptDomainTransferFromAnotherAwsAccountOutput
    #   resp.data.operation_id #=> String
    #
    def accept_domain_transfer_from_another_aws_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptDomainTransferFromAnotherAwsAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptDomainTransferFromAnotherAwsAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptDomainTransferFromAnotherAwsAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DomainLimitExceeded, Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::AcceptDomainTransferFromAnotherAwsAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptDomainTransferFromAnotherAwsAccount,
        stubs: @stubs,
        params_class: Params::AcceptDomainTransferFromAnotherAwsAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_domain_transfer_from_another_aws_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the transfer of a domain from the current Amazon Web Services account to another Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
    # 		</p>
    # 		
    # 		       <important>
    # 			         <p>You must cancel the transfer before the other Amazon Web Services account accepts the transfer using
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>.</p>
    # 		       </important>
    # 		
    # 		       <p>Use either
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			to determine whether the operation succeeded.
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			provides additional information, for example, <code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::CancelDomainTransferToAnotherAwsAccountInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to cancel the transfer to another Amazon Web Services account.</p>
    #
    # @return [Types::CancelDomainTransferToAnotherAwsAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_domain_transfer_to_another_aws_account(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelDomainTransferToAnotherAwsAccountOutput
    #   resp.data.operation_id #=> String
    #
    def cancel_domain_transfer_to_another_aws_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelDomainTransferToAnotherAwsAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelDomainTransferToAnotherAwsAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelDomainTransferToAnotherAwsAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::CancelDomainTransferToAnotherAwsAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelDomainTransferToAnotherAwsAccount,
        stubs: @stubs,
        params_class: Params::CancelDomainTransferToAnotherAwsAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_domain_transfer_to_another_aws_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must
    # 			submit another request to determine the availability of the domain name.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckDomainAvailabilityInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports
    #   			internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			For more information, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>.
    #   		</p>
    #
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::CheckDomainAvailabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_domain_availability(
    #     domain_name: 'DomainName', # required
    #     idn_lang_code: 'IdnLangCode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckDomainAvailabilityOutput
    #   resp.data.availability #=> String, one of ["AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW"]
    #
    def check_domain_availability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckDomainAvailabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckDomainAvailabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckDomainAvailability
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::CheckDomainAvailability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckDomainAvailability,
        stubs: @stubs,
        params_class: Params::CheckDomainAvailabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_domain_availability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks whether a domain name can be transferred to Amazon Route 53. </p>
    #
    # @param [Hash] params
    #   See {Types::CheckDomainTransferabilityInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :auth_code
    #   <p>If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain,
    #   			the code that you got from the current registrar for the domain.</p>
    #
    # @return [Types::CheckDomainTransferabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_domain_transferability(
    #     domain_name: 'DomainName', # required
    #     auth_code: 'AuthCode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckDomainTransferabilityOutput
    #   resp.data.transferability #=> Types::DomainTransferability
    #   resp.data.transferability.transferable #=> String, one of ["TRANSFERABLE", "UNTRANSFERABLE", "DONT_KNOW"]
    #
    def check_domain_transferability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckDomainTransferabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckDomainTransferabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckDomainTransferability
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::CheckDomainTransferability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckDomainTransferability,
        stubs: @stubs,
        params_class: Params::CheckDomainTransferabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_domain_transferability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes the specified domain. This action is permanent. For more information,
    # 			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html">Deleting a domain name registration</a>.</p>
    # 		       <p>To transfer the domain registration to another registrar, use the transfer process that’s
    # 			provided by the registrar to which you want to transfer the registration.  Otherwise,
    # 			the following apply:</p>
    # 		       <ol>
    #             <li>
    #                <p>You can’t get a refund for the cost of a deleted domain registration.</p>
    #             </li>
    #             <li>
    #                <p>The registry for the top-level domain might hold the domain name for a brief time before releasing it for other users to register (varies by registry). </p>
    #             </li>
    #             <li>
    #                <p>When the registration has been deleted, we'll send you a confirmation to the registrant
    # 				contact. The email will come from
    # 				<code>noreply@domainnameverification.net</code> or
    # 				<code>noreply@registrar.amazon.com</code>.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>Name of the domain to be deleted.</p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
    #   resp.data.operation_id #=> String
    #
    def delete_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD]),
        data_parser: Parsers::DeleteDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomain,
        stubs: @stubs,
        params_class: Params::DeleteDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes the specified tags for a domain.</p>
    # 		       <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsForDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain for which you want to delete one or more tags.</p>
    #
    # @option params [Array<String>] :tags_to_delete
    #   <p>A list of tag keys to delete.</p>
    #
    # @return [Types::DeleteTagsForDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags_for_domain(
    #     domain_name: 'DomainName', # required
    #     tags_to_delete: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsForDomainOutput
    #
    def delete_tags_for_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsForDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsForDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTagsForDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::DeleteTagsForDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTagsForDomain,
        stubs: @stubs,
        params_class: Params::DeleteTagsForDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags_for_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation disables automatic renewal of domain registration for the specified domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableDomainAutoRenewInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to disable automatic renewal for.</p>
    #
    # @return [Types::DisableDomainAutoRenewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_domain_auto_renew(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableDomainAutoRenewOutput
    #
    def disable_domain_auto_renew(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableDomainAutoRenewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableDomainAutoRenewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableDomainAutoRenew
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::DisableDomainAutoRenew
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableDomainAutoRenew,
        stubs: @stubs,
        params_class: Params::DisableDomainAutoRenewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_domain_auto_renew
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation removes the transfer lock on the domain (specifically the
    # 			<code>clientTransferProhibited</code> status) to allow domain transfers. We recommend
    # 			you refrain from performing this action unless you intend to transfer the domain to a
    # 			different registrar. Successful submission returns an operation ID that you can use to track
    # 			the progress and completion of the action. If the request is not completed successfully, the
    # 			domain registrant will be notified by email.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableDomainTransferLockInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to remove the transfer lock for.</p>
    #
    # @return [Types::DisableDomainTransferLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_domain_transfer_lock(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableDomainTransferLockOutput
    #   resp.data.operation_id #=> String
    #
    def disable_domain_transfer_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableDomainTransferLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableDomainTransferLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableDomainTransferLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::DisableDomainTransferLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableDomainTransferLock,
        stubs: @stubs,
        params_class: Params::DisableDomainTransferLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_domain_transfer_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires.
    # 			The cost of renewing your domain registration is billed to your Amazon Web Services account.</p>
    # 		       <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains That You Can Register with Amazon Route 53</a>
    # 			in the <i>Amazon Route 53 Developer Guide</i>. Route 53 requires that you renew before the end of the renewal period
    # 			so we can complete processing before the deadline.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableDomainAutoRenewInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to enable automatic renewal for.</p>
    #
    # @return [Types::EnableDomainAutoRenewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_domain_auto_renew(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableDomainAutoRenewOutput
    #
    def enable_domain_auto_renew(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableDomainAutoRenewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableDomainAutoRenewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableDomainAutoRenew
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD]),
        data_parser: Parsers::EnableDomainAutoRenew
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableDomainAutoRenew,
        stubs: @stubs,
        params_class: Params::EnableDomainAutoRenewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_domain_auto_renew
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status)
    # 			to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and
    # 			completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableDomainTransferLockInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to set the transfer lock for.</p>
    #
    # @return [Types::EnableDomainTransferLockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_domain_transfer_lock(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableDomainTransferLockOutput
    #   resp.data.operation_id #=> String
    #
    def enable_domain_transfer_lock(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableDomainTransferLockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableDomainTransferLockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableDomainTransferLock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::EnableDomainTransferLock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableDomainTransferLock,
        stubs: @stubs,
        params_class: Params::EnableDomainTransferLockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_domain_transfer_lock
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For operations that require confirmation that the email address for the registrant contact is valid,
    # 			such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p>
    # 		       <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactReachabilityStatusInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>
    #
    # @return [Types::GetContactReachabilityStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_reachability_status(
    #     domain_name: 'domainName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactReachabilityStatusOutput
    #   resp.data.domain_name #=> String
    #   resp.data.status #=> String, one of ["PENDING", "DONE", "EXPIRED"]
    #
    def get_contact_reachability_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactReachabilityStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactReachabilityStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContactReachabilityStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::GetContactReachabilityStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContactReachabilityStatus,
        stubs: @stubs,
        params_class: Params::GetContactReachabilityStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact_reachability_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns detailed information about a specified domain that is associated with the current Amazon Web Services account.
    # 			Contact information for the domain is also returned as part of the output.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainDetailInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get detailed information about.</p>
    #
    # @return [Types::GetDomainDetailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_detail(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainDetailOutput
    #   resp.data.domain_name #=> String
    #   resp.data.nameservers #=> Array<Nameserver>
    #   resp.data.nameservers[0] #=> Types::Nameserver
    #   resp.data.nameservers[0].name #=> String
    #   resp.data.nameservers[0].glue_ips #=> Array<String>
    #   resp.data.nameservers[0].glue_ips[0] #=> String
    #   resp.data.auto_renew #=> Boolean
    #   resp.data.admin_contact #=> Types::ContactDetail
    #   resp.data.admin_contact.first_name #=> String
    #   resp.data.admin_contact.last_name #=> String
    #   resp.data.admin_contact.contact_type #=> String, one of ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"]
    #   resp.data.admin_contact.organization_name #=> String
    #   resp.data.admin_contact.address_line1 #=> String
    #   resp.data.admin_contact.address_line2 #=> String
    #   resp.data.admin_contact.city #=> String
    #   resp.data.admin_contact.state #=> String
    #   resp.data.admin_contact.country_code #=> String, one of ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
    #   resp.data.admin_contact.zip_code #=> String
    #   resp.data.admin_contact.phone_number #=> String
    #   resp.data.admin_contact.email #=> String
    #   resp.data.admin_contact.fax #=> String
    #   resp.data.admin_contact.extra_params #=> Array<ExtraParam>
    #   resp.data.admin_contact.extra_params[0] #=> Types::ExtraParam
    #   resp.data.admin_contact.extra_params[0].name #=> String, one of ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP"]
    #   resp.data.admin_contact.extra_params[0].value #=> String
    #   resp.data.registrant_contact #=> Types::ContactDetail
    #   resp.data.tech_contact #=> Types::ContactDetail
    #   resp.data.admin_privacy #=> Boolean
    #   resp.data.registrant_privacy #=> Boolean
    #   resp.data.tech_privacy #=> Boolean
    #   resp.data.registrar_name #=> String
    #   resp.data.who_is_server #=> String
    #   resp.data.registrar_url #=> String
    #   resp.data.abuse_contact_email #=> String
    #   resp.data.abuse_contact_phone #=> String
    #   resp.data.registry_domain_id #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.updated_date #=> Time
    #   resp.data.expiration_date #=> Time
    #   resp.data.reseller #=> String
    #   resp.data.dns_sec #=> String
    #   resp.data.status_list #=> Array<String>
    #   resp.data.status_list[0] #=> String
    #
    def get_domain_detail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainDetailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainDetailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainDetail
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::GetDomainDetail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainDetail,
        stubs: @stubs,
        params_class: Params::GetDomainDetailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_detail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The GetDomainSuggestions operation returns a list of suggested domain names.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainSuggestionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>A domain name that you want to use as the basis for a list of possible domain names. The top-level domain (TLD), such as .com,
    #   			must be a TLD that Route 53 supports. For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use
    #   			supports internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			</p>
    #
    # @option params [Integer] :suggestion_count
    #   <p>The number of suggested domain names that you want Route 53 to return. Specify a value between 1 and 50.</p>
    #
    # @option params [Boolean] :only_available
    #   <p>If <code>OnlyAvailable</code> is <code>true</code>, Route 53 returns only domain names that are available.
    #   			If <code>OnlyAvailable</code> is <code>false</code>, Route 53 returns domain names without checking whether they're
    #   			available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code>
    #   			for each suggestion.</p>
    #
    # @return [Types::GetDomainSuggestionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_suggestions(
    #     domain_name: 'DomainName', # required
    #     suggestion_count: 1, # required
    #     only_available: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainSuggestionsOutput
    #   resp.data.suggestions_list #=> Array<DomainSuggestion>
    #   resp.data.suggestions_list[0] #=> Types::DomainSuggestion
    #   resp.data.suggestions_list[0].domain_name #=> String
    #   resp.data.suggestions_list[0].availability #=> String
    #
    def get_domain_suggestions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainSuggestionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainSuggestionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainSuggestions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::GetDomainSuggestions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainSuggestions,
        stubs: @stubs,
        params_class: Params::GetDomainSuggestionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_suggestions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns the current status of an operation that is not completed.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOperationDetailInput}.
    #
    # @option params [String] :operation_id
    #   <p>The identifier for the operation for which you want to get the status. Route 53 returned the identifier
    #   			in the response to the original request.</p>
    #
    # @return [Types::GetOperationDetailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation_detail(
    #     operation_id: 'OperationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOperationDetailOutput
    #   resp.data.operation_id #=> String
    #   resp.data.status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"]
    #   resp.data.message #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.type #=> String, one of ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #   resp.data.submitted_date #=> Time
    #
    def get_operation_detail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOperationDetailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOperationDetailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOperationDetail
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::GetOperationDetail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOperationDetail,
        stubs: @stubs,
        params_class: Params::GetOperationDetailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_operation_detail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns all the domain names registered with Amazon Route 53 for the current Amazon Web Services account
    # 			 if no filtering conditions are used.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [Array<FilterCondition>] :filter_conditions
    #   <p>A complex type that contains information about the filters applied during the <code>ListDomains</code> request. The filter conditions can
    #   			include domain name and domain expiration.</p>
    #
    # @option params [SortCondition] :sort_condition
    #   <p>A complex type that contains information about the requested ordering of domains in the returned list.</p>
    #
    # @option params [String] :marker
    #   <p>For an initial request for a list of domains, omit this element. If the number of domains
    #   			that are associated with the current Amazon Web Services account is greater than the value that you specified for
    #   			<code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of
    #   			<code>NextPageMarker</code> from the previous response, and submit another request that includes the
    #   			value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #   		       <p>Constraints: The marker must match the value specified in the previous request.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Number of domains to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     filter_conditions: [
    #       {
    #         name: 'DomainName', # required - accepts ["DomainName", "Expiry"]
    #         operator: 'LE', # required - accepts ["LE", "GE", "BEGINS_WITH"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     sort_condition: {
    #       name: 'DomainName', # required - accepts ["DomainName", "Expiry"]
    #       sort_order: 'ASC' # required - accepts ["ASC", "DESC"]
    #     },
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.domains #=> Array<DomainSummary>
    #   resp.data.domains[0] #=> Types::DomainSummary
    #   resp.data.domains[0].domain_name #=> String
    #   resp.data.domains[0].auto_renew #=> Boolean
    #   resp.data.domains[0].transfer_lock #=> Boolean
    #   resp.data.domains[0].expiry #=> Time
    #   resp.data.next_page_marker #=> String
    #
    def list_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomains
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomains,
        stubs: @stubs,
        params_class: Params::ListDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all of the operations that return an operation ID and that have ever been
    # 			performed on domains that were registered by the current account. </p>
    # 		       <p>This command runs only in the us-east-1 Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOperationsInput}.
    #
    # @option params [Time] :submitted_since
    #   <p>An optional parameter that lets you get information about all the operations that you submitted after a specified date and time.
    #   			Specify the date and time in Unix time format and Coordinated Universal time (UTC).</p>
    #
    # @option params [String] :marker
    #   <p>For an initial request for a list of operations, omit this element. If the number of operations that are
    #   			not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code>
    #   			to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response,
    #   			and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Number of domains to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    # @return [Types::ListOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations(
    #     submitted_since: Time.now,
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOperationsOutput
    #   resp.data.operations #=> Array<OperationSummary>
    #   resp.data.operations[0] #=> Types::OperationSummary
    #   resp.data.operations[0].operation_id #=> String
    #   resp.data.operations[0].status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"]
    #   resp.data.operations[0].type #=> String, one of ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #   resp.data.operations[0].submitted_date #=> Time
    #   resp.data.next_page_marker #=> String
    #
    def list_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOperations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOperations,
        stubs: @stubs,
        params_class: Params::ListOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the following prices for either all the TLDs supported by Route 53, or the specified TLD:</p>
    # 		       <ul>
    #             <li>
    #                <p>Registration</p>
    #             </li>
    #             <li>
    #                <p>Transfer</p>
    #             </li>
    #             <li>
    #                <p>Owner change</p>
    #             </li>
    #             <li>
    #                <p>Domain renewal</p>
    #             </li>
    #             <li>
    #                <p>Domain restoration</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListPricesInput}.
    #
    # @option params [String] :tld
    #   <p>The TLD for which you want to receive the pricing information. For example.
    #   				<code>.net</code>.</p>
    #   		       <p>If a <code>Tld</code> value is not provided, a list of prices for all TLDs supported by Route 53
    #   		is returned.</p>
    #
    # @option params [String] :marker
    #   <p>For an initial request for a list of prices, omit this element.
    #   			If the number of prices that are not yet complete is greater than the value that you specified for <code>MaxItems</code>,
    #   			you can use <code>Marker</code> to return additional prices. Get the value of <code>NextPageMarker</code> from the previous response,
    #   			and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element. </p>
    #   		       <p>Used only for all TLDs. If you specify a TLD, don't specify a <code>Marker</code>.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Number of <code>Prices</code> to be returned.</p>
    #   		       <p>Used only for all TLDs. If you specify a TLD, don't specify a <code>MaxItems</code>.</p>
    #
    # @return [Types::ListPricesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prices(
    #     tld: 'Tld',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPricesOutput
    #   resp.data.prices #=> Array<DomainPrice>
    #   resp.data.prices[0] #=> Types::DomainPrice
    #   resp.data.prices[0].name #=> String
    #   resp.data.prices[0].registration_price #=> Types::PriceWithCurrency
    #   resp.data.prices[0].registration_price.price #=> Float
    #   resp.data.prices[0].registration_price.currency #=> String
    #   resp.data.prices[0].transfer_price #=> Types::PriceWithCurrency
    #   resp.data.prices[0].renewal_price #=> Types::PriceWithCurrency
    #   resp.data.prices[0].change_ownership_price #=> Types::PriceWithCurrency
    #   resp.data.prices[0].restoration_price #=> Types::PriceWithCurrency
    #   resp.data.next_page_marker #=> String
    #
    def list_prices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPricesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPricesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::ListPrices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrices,
        stubs: @stubs,
        params_class: Params::ListPricesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_prices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns all of the tags that are associated with the specified domain.</p>
    # 		       <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain for which you want to get a list of tags.</p>
    #
    # @return [Types::ListTagsForDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForDomainOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def list_tags_for_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::ListTagsForDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForDomain,
        stubs: @stubs,
        params_class: Params::ListTagsForDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by
    # 			our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters.</p>
    # 		       <p>When you register a domain, Amazon Route 53 does the following:</p>
    # 			      <ul>
    #             <li>
    #                <p>Creates a Route 53 hosted zone that has the same name as the domain. Route 53 assigns four name servers
    # 					to your hosted zone and automatically updates your domain registration with the names of these name servers.</p>
    #             </li>
    #             <li>
    #                <p>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you
    # 					in advance of the renewal date so you can choose whether to renew the registration.</p>
    #             </li>
    #             <li>
    #                <p>Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar
    # 					(for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy
    # 					protection, WHOIS queries return the information that you entered for the administrative, registrant, and technical contacts.</p>
    # 					          <note>
    # 						            <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    # 					          </note>
    # 				        </li>
    #             <li>
    #                <p>If registration is successful, returns an operation ID that you can use to track the progress and
    # 					completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</p>
    #             </li>
    #             <li>
    #                <p>Charges your Amazon Web Services account an amount based on the top-level domain. For more information, see
    # 					<a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RegisterDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports
    #   			internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			For more information, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>.
    #   		</p>
    #
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year.
    #   			The maximum period depends on the top-level domain. For the range of valid values for your domain, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>Default: 1</p>
    #
    # @option params [Boolean] :auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>).
    #   			Autorenewal only takes effect after the account is charged.</p>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [ContactDetail] :admin_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    # @option params [ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    # @option params [ContactDetail] :tech_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    # @option params [Boolean] :privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (the domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Boolean] :privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @return [Types::RegisterDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_domain(
    #     domain_name: 'DomainName', # required
    #     idn_lang_code: 'IdnLangCode',
    #     duration_in_years: 1, # required
    #     auto_renew: false,
    #     admin_contact: {
    #       first_name: 'FirstName',
    #       last_name: 'LastName',
    #       contact_type: 'PERSON', # accepts ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"]
    #       organization_name: 'OrganizationName',
    #       address_line1: 'AddressLine1',
    #       address_line2: 'AddressLine2',
    #       city: 'City',
    #       state: 'State',
    #       country_code: 'AC', # accepts ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
    #       zip_code: 'ZipCode',
    #       phone_number: 'PhoneNumber',
    #       email: 'Email',
    #       fax: 'Fax',
    #       extra_params: [
    #         {
    #           name: 'DUNS_NUMBER', # required - accepts ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP"]
    #           value: 'Value' # required
    #         }
    #       ]
    #     }, # required
    #     privacy_protect_admin_contact: false,
    #     privacy_protect_registrant_contact: false,
    #     privacy_protect_tech_contact: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterDomainOutput
    #   resp.data.operation_id #=> String
    #
    def register_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DomainLimitExceeded, Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::RegisterDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterDomain,
        stubs: @stubs,
        params_class: Params::RegisterDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects the transfer of a domain from another Amazon Web Services account to the current Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
    # 		</p>
    # 		
    # 		       <p>Use either
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			to determine whether the operation succeeded.
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			provides additional information, for example, <code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::RejectDomainTransferFromAnotherAwsAccountInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account submitted a
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    # @return [Types::RejectDomainTransferFromAnotherAwsAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_domain_transfer_from_another_aws_account(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectDomainTransferFromAnotherAwsAccountOutput
    #   resp.data.operation_id #=> String
    #
    def reject_domain_transfer_from_another_aws_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectDomainTransferFromAnotherAwsAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectDomainTransferFromAnotherAwsAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectDomainTransferFromAnotherAwsAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::RejectDomainTransferFromAnotherAwsAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectDomainTransferFromAnotherAwsAccount,
        stubs: @stubs,
        params_class: Params::RejectDomainTransferFromAnotherAwsAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_domain_transfer_from_another_aws_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your Amazon Web Services account.</p>
    # 		       <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the
    # 			expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing Registration for a Domain</a>
    # 			in the <i>Amazon Route 53 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RenewDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to renew.</p>
    #
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain.
    #   			For the range of valid values for your domain, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>Default: 1</p>
    #
    # @option params [Integer] :current_expiry_year
    #   <p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>
    #
    # @return [Types::RenewDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_domain(
    #     domain_name: 'DomainName', # required
    #     duration_in_years: 1,
    #     current_expiry_year: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RenewDomainOutput
    #   resp.data.operation_id #=> String
    #
    def renew_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RenewDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RenewDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RenewDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::RenewDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RenewDomain,
        stubs: @stubs,
        params_class: Params::RenewDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :renew_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For operations that require confirmation that the email address for the registrant contact is valid,
    # 			such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.</p>
    #
    # @param [Hash] params
    #   See {Types::ResendContactReachabilityEmailInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.</p>
    #
    # @return [Types::ResendContactReachabilityEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_contact_reachability_email(
    #     domain_name: 'domainName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResendContactReachabilityEmailOutput
    #   resp.data.domain_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.is_already_verified #=> Boolean
    #
    def resend_contact_reachability_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResendContactReachabilityEmailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResendContactReachabilityEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResendContactReachabilityEmail
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::ResendContactReachabilityEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResendContactReachabilityEmail,
        stubs: @stubs,
        params_class: Params::ResendContactReachabilityEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resend_contact_reachability_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
    #
    # @param [Hash] params
    #   See {Types::RetrieveDomainAuthCodeInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get an authorization code for.</p>
    #
    # @return [Types::RetrieveDomainAuthCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_domain_auth_code(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetrieveDomainAuthCodeOutput
    #   resp.data.auth_code #=> String
    #
    def retrieve_domain_auth_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetrieveDomainAuthCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetrieveDomainAuthCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetrieveDomainAuthCode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD]),
        data_parser: Parsers::RetrieveDomainAuthCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetrieveDomainAuthCode,
        stubs: @stubs,
        params_class: Params::RetrieveDomainAuthCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retrieve_domain_auth_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with
    # 			Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs).</p>
    # 		       <p>For more information about transferring domains, see the following topics:</p>
    # 		       <ul>
    #             <li>
    #                <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain that you're transferring
    # 				to Route 53, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a
    # 				Domain to Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>For information about how to transfer a domain from one Amazon Web Services account to another, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
    # 				</p>
    # 			         </li>
    #             <li>
    #                <p>For information about how to transfer a domain to another domain registrar, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html">Transferring a Domain from
    # 				Amazon Route 53 to Another Registrar</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    # 		       <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you
    # 			transfer your DNS service to Route 53 or to another DNS service provider before you transfer your registration. Some registrars
    # 			provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar
    # 			will not renew your domain registration and could end your DNS service at any time.</p>
    # 		
    # 			      <important>
    # 				        <p>If the registrar for your domain is also the DNS service provider for the domain and you don't
    # 					transfer DNS service to another provider, your website, email, and the web applications associated with the domain
    # 					might become unavailable.</p>
    # 			      </important>
    # 		
    # 		       <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and
    # 			completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>
    #
    # @param [Hash] params
    #   See {Types::TransferDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year.
    #   			The maximum period depends on the top-level domain.</p>
    #   		       <p>Default: 1</p>
    #
    # @option params [Array<Nameserver>] :nameservers
    #   <p>Contains details for the host and glue IP addresses.</p>
    #
    # @option params [String] :auth_code
    #   <p>The authorization code for the domain. You get this value from the current registrar.</p>
    #
    # @option params [Boolean] :auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect
    #   			after the account is charged.</p>
    #   		       <p>Default: true</p>
    #
    # @option params [ContactDetail] :admin_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @option params [ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @option params [ContactDetail] :tech_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @option params [Boolean] :privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Boolean] :privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    # @return [Types::TransferDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_domain(
    #     domain_name: 'DomainName', # required
    #     idn_lang_code: 'IdnLangCode',
    #     duration_in_years: 1, # required
    #     nameservers: [
    #       {
    #         name: 'Name', # required
    #         glue_ips: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     auth_code: 'AuthCode',
    #     auto_renew: false,
    #     admin_contact: {
    #       first_name: 'FirstName',
    #       last_name: 'LastName',
    #       contact_type: 'PERSON', # accepts ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"]
    #       organization_name: 'OrganizationName',
    #       address_line1: 'AddressLine1',
    #       address_line2: 'AddressLine2',
    #       city: 'City',
    #       state: 'State',
    #       country_code: 'AC', # accepts ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
    #       zip_code: 'ZipCode',
    #       phone_number: 'PhoneNumber',
    #       email: 'Email',
    #       fax: 'Fax',
    #       extra_params: [
    #         {
    #           name: 'DUNS_NUMBER', # required - accepts ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP"]
    #           value: 'Value' # required
    #         }
    #       ]
    #     }, # required
    #     privacy_protect_admin_contact: false,
    #     privacy_protect_registrant_contact: false,
    #     privacy_protect_tech_contact: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransferDomainOutput
    #   resp.data.operation_id #=> String
    #
    def transfer_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransferDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransferDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransferDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DomainLimitExceeded, Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::TransferDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransferDomain,
        stubs: @stubs,
        params_class: Params::TransferDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transfer_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transfers a domain from the current Amazon Web Services account to another Amazon Web Services account. Note the following:</p>
    # 		       <ul>
    #             <li>
    #                <p>The Amazon Web Services account that you're transferring the domain to must accept the transfer. If the other account
    # 				doesn't accept the transfer within 3 days, we cancel the transfer. See
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>.
    # 				</p>
    # 			         </li>
    #             <li>
    #                <p>You can cancel the transfer before the other account accepts it. See
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html">CancelDomainTransferToAnotherAwsAccount</a>.
    # 				</p>
    # 			         </li>
    #             <li>
    #                <p>The other account can reject the transfer. See
    # 					<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html">RejectDomainTransferFromAnotherAwsAccount</a>.
    # 				</p>
    # 			         </li>
    #          </ul>
    # 		
    # 		       <important>
    # 			         <p>When you transfer a domain from one Amazon Web Services account to another, Route 53 doesn't transfer the hosted zone that is associated
    # 				with the domain. DNS resolution isn't affected if the domain and the hosted zone are owned by separate accounts,
    # 				so transferring the hosted zone is optional. For information about transferring the hosted zone to another Amazon Web Services account, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html">Migrating a Hosted Zone to a
    # 					Different Amazon Web Services Account</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
    # 		       </important>
    # 		
    # 		       <p>Use either
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			to determine whether the operation succeeded.
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			provides additional information, for example, <code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::TransferDomainToAnotherAwsAccountInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer from the current Amazon Web Services account to another account.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the Amazon Web Services account that you want to transfer the domain to, for example, <code>111122223333</code>.</p>
    #
    # @return [Types::TransferDomainToAnotherAwsAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_domain_to_another_aws_account(
    #     domain_name: 'DomainName', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransferDomainToAnotherAwsAccountOutput
    #   resp.data.operation_id #=> String
    #   resp.data.password #=> String
    #
    def transfer_domain_to_another_aws_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransferDomainToAnotherAwsAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransferDomainToAnotherAwsAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransferDomainToAnotherAwsAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::TransferDomainToAnotherAwsAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransferDomainToAnotherAwsAccount,
        stubs: @stubs,
        params_class: Params::TransferDomainToAnotherAwsAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transfer_domain_to_another_aws_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation updates the contact information for a particular domain. You must specify information for at least one contact:
    # 			registrant, administrator, or technical.</p>
    # 		       <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action.
    # 			If the request is not completed successfully, the domain registrant will be notified by email.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainContactInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update contact information for.</p>
    #
    # @option params [ContactDetail] :admin_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @option params [ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @option params [ContactDetail] :tech_contact
    #   <p>Provides detailed contact information.</p>
    #
    # @return [Types::UpdateDomainContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_contact(
    #     domain_name: 'DomainName', # required
    #     admin_contact: {
    #       first_name: 'FirstName',
    #       last_name: 'LastName',
    #       contact_type: 'PERSON', # accepts ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"]
    #       organization_name: 'OrganizationName',
    #       address_line1: 'AddressLine1',
    #       address_line2: 'AddressLine2',
    #       city: 'City',
    #       state: 'State',
    #       country_code: 'AC', # accepts ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
    #       zip_code: 'ZipCode',
    #       phone_number: 'PhoneNumber',
    #       email: 'Email',
    #       fax: 'Fax',
    #       extra_params: [
    #         {
    #           name: 'DUNS_NUMBER', # required - accepts ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP"]
    #           value: 'Value' # required
    #         }
    #       ]
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainContactOutput
    #   resp.data.operation_id #=> String
    #
    def update_domain_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::UpdateDomainContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainContact,
        stubs: @stubs,
        params_class: Params::UpdateDomainContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation updates the specified domain contact's privacy setting. When privacy protection is enabled,
    # 			contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org
    # 			domains) or with contact information for our registrar associate, Gandi.</p>
    # 		       <note>
    # 			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    # 		       </note>
    # 		       <p>This operation affects only the contact information for the specified contact type (administrative, registrant, or technical).
    # 			If the request succeeds, Amazon Route 53 returns an operation ID that you can use with
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.</p>
    # 		       <important>
    #             <p>By disabling the privacy service via API, you consent to the publication of the contact information provided for this domain
    # 			via the public WHOIS database. You certify that you are the registrant of this domain name and have the authority to make this decision.
    # 			You may withdraw your consent at any time by enabling privacy protection using either <code>UpdateDomainContactPrivacy</code> or the
    # 			Route 53 console. Enabling privacy protection removes the contact information provided for this domain from the WHOIS database.
    # 			For more information on our privacy practices, see
    # 			<a href="https://aws.amazon.com/privacy/">https://aws.amazon.com/privacy/</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainContactPrivacyInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update the privacy setting for.</p>
    #
    # @option params [Boolean] :admin_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    # @option params [Boolean] :registrant_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    # @option params [Boolean] :tech_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    # @return [Types::UpdateDomainContactPrivacyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_contact_privacy(
    #     domain_name: 'DomainName', # required
    #     admin_privacy: false,
    #     registrant_privacy: false,
    #     tech_privacy: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainContactPrivacyOutput
    #   resp.data.operation_id #=> String
    #
    def update_domain_contact_privacy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainContactPrivacyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainContactPrivacyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainContactPrivacy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::UpdateDomainContactPrivacy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainContactPrivacy,
        stubs: @stubs,
        params_class: Params::UpdateDomainContactPrivacyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_contact_privacy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation replaces the current set of name servers for the domain with the specified set of name servers.
    # 			If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p>
    # 		       <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action.
    # 			If the request is not completed successfully, the domain registrant will be notified by email.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainNameserversInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to change name servers for.</p>
    #
    # @option params [String] :fi_auth_key
    #   <p>The authorization key for .fi domains</p>
    #
    # @option params [Array<Nameserver>] :nameservers
    #   <p>A list of new name servers for the domain.</p>
    #
    # @return [Types::UpdateDomainNameserversOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_nameservers(
    #     domain_name: 'DomainName', # required
    #     fi_auth_key: 'FIAuthKey',
    #     nameservers: [
    #       {
    #         name: 'Name', # required
    #         glue_ips: [
    #           'member'
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainNameserversOutput
    #   resp.data.operation_id #=> String
    #
    def update_domain_nameservers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainNameserversInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainNameserversInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainNameservers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateRequest, Errors::InvalidInput, Errors::TLDRulesViolation, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::UpdateDomainNameservers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainNameservers,
        stubs: @stubs,
        params_class: Params::UpdateDomainNameserversOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_nameservers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation adds or updates tags for a specified domain.</p>
    # 		       <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTagsForDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain for which you want to add or update tags.</p>
    #
    # @option params [Array<Tag>] :tags_to_update
    #   <p>A list of the tag keys and values that you want to add or update. If you specify a key
    #   			that already exists, the corresponding value will be replaced.</p>
    #
    # @return [Types::UpdateTagsForDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tags_for_domain(
    #     domain_name: 'DomainName', # required
    #     tags_to_update: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTagsForDomainOutput
    #
    def update_tags_for_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTagsForDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTagsForDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTagsForDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::UnsupportedTLD, Errors::OperationLimitExceeded]),
        data_parser: Parsers::UpdateTagsForDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTagsForDomain,
        stubs: @stubs,
        params_class: Params::UpdateTagsForDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_tags_for_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all the domain-related billing records for the current Amazon Web Services account for a specified period</p>
    #
    # @param [Hash] params
    #   See {Types::ViewBillingInput}.
    #
    # @option params [Time] :start
    #   <p>The beginning date and time for the time period for which you want a list of billing records. Specify the date and time
    #   			in Unix time format and Coordinated Universal time (UTC).</p>
    #
    # @option params [Time] :end
    #   <p>The end date and time for the time period for which you want a list of billing records. Specify the date and time
    #   			in Unix time format and Coordinated Universal time (UTC).</p>
    #
    # @option params [String] :marker
    #   <p>For an initial request for a list of billing records, omit this element. If the number of billing records
    #   			that are associated with the current Amazon Web Services account during the specified period is greater than the value that
    #   			you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records.
    #   			Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes
    #   			the value of <code>NextPageMarker</code> in the <code>Marker</code> element.
    #   		</p>
    #   		       <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The number of billing records to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    # @return [Types::ViewBillingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.view_billing(
    #     start: Time.now,
    #     end: Time.now,
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ViewBillingOutput
    #   resp.data.next_page_marker #=> String
    #   resp.data.billing_records #=> Array<BillingRecord>
    #   resp.data.billing_records[0] #=> Types::BillingRecord
    #   resp.data.billing_records[0].domain_name #=> String
    #   resp.data.billing_records[0].operation #=> String, one of ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #   resp.data.billing_records[0].invoice_id #=> String
    #   resp.data.billing_records[0].bill_date #=> Time
    #   resp.data.billing_records[0].price #=> Float
    #
    def view_billing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ViewBillingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ViewBillingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ViewBilling
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ViewBilling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ViewBilling,
        stubs: @stubs,
        params_class: Params::ViewBillingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :view_billing
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
